{
  description = "An environment for phoronix test suite.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # Change system to "aarch64-linux" if on ARM64
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      # Run directly with `nix run`
      #apps.${system}.default = {
      #  type = "app";
      #  program = "${pkgs.yt-dlp}/bin/yt-dlp";
      #};

      # Enter shell with `nix develop`
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          phoronix-test-suite
          gcc
          gnumake
          bc
          bison
          flex
          openssl
          pkg-config
          elfutils
        ];

        shellHook = ''
          unset NIX_LDFLAGS
          unset NIX_CFLAGS_COMPILE
          unset NIX_CFLAGS_LINK
          unset LDFLAGS
          unset CFLAGS
          unset CXXFLAGS
        '';
      };
      
    };
}


