{
  description = "C++ CPU Benchmark Suite for Single- and Multi-Core Performance";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
          
          # Binary compilation
          benchmark-bin = pkgs.stdenv.mkDerivation {
            pname = "cpu-benchmark";
            version = "1.0.0";
            src = ./.;

            nativeBuildInputs = [ pkgs.gcc ];

            buildPhase = ''
              g++ -O3 -pthread benchmark.cpp -o cpu-benchmark
            '';

            installPhase = ''
              mkdir -p $out/bin
              cp cpu-benchmark $out/bin/
            '';
          };

          # Runner script executing the 4 argument configurations
          benchmark-runner = pkgs.writeShellApplication {
            name = "run-benchmark-suite";
            runtimeInputs = [ benchmark-bin pkgs.coreutils ];
            text = ''
              REPORT_FILE="benchmark_report.md"
              
              QUICK_ITER=30000000
              STD_ITER=3000000000

              echo "Starting CPU Benchmark Suite..."
              {
                echo "=== CPU Benchmark Report ===" 
                echo "Date: $(date)"
                echo "System Architecture: ${system}"
                echo "Hostname: $(hostname)"
                echo "" 
              } > "$REPORT_FILE"

              echo "Running 1/4: Quick Single-Core..."
              Q_SINGLE=$(cpu-benchmark "$QUICK_ITER" single)

              echo "Running 2/4: Quick Multi-Core..."
              Q_MULTI=$(cpu-benchmark "$QUICK_ITER" multi)

              echo "Running 3/4: Standard Single-Core..."
              S_SINGLE=$(cpu-benchmark "$STD_ITER" single)

              echo "Running 4/4: Standard Multi-Core..."
              S_MULTI=$(cpu-benchmark "$STD_ITER" multi)

              # Write formatted results table to Markdown
              {
                echo "| Test Configuration | Mode | Iterations | Time (seconds) |"
                echo "| :--- | :--- | :--- | :--- |"
                echo "| Single-Core | Quick | $QUICK_ITER | $Q_SINGLE |"
                echo "| Multi-Core | Quick | $QUICK_ITER | $Q_MULTI |"
                echo "| Single-Core | Standard | $STD_ITER | $S_SINGLE |"
                echo "| Multi-Core | Standard | $STD_ITER | $S_MULTI |"
              } >> "$REPORT_FILE"

              echo ""
              echo "Benchmark complete! Report saved to $REPORT_FILE"
              cat "$REPORT_FILE"
            '';
          };
        in
        {
          default = benchmark-runner;
          bin = benchmark-bin;
        }
      );

      devShells = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in {
          default = pkgs.mkShell {
            buildInputs = [ pkgs.gcc pkgs.gnumake ];
          };
        }
      );
    };
}