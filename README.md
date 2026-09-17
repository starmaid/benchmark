# benchmark
tools for benchmarking hardware

```
nix run
nix run --refresh github:starmaid/benchmark --extra-experimental-features nix-command --extra-experimental-features flakes

g++ -O3 -pthread benchmark.cpp -o benchmark
./benchmark 1000000 single
```