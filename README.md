# benchmark
tools for benchmarking hardware




```
docker compose build

on mac and windows, you have to adjust the hardware allocated for docker in docker desktop.

# Install and run tests
docker compose run --rm pts benchmark build-linux-kernel
docker compose run --rm pts benchmark ffmpeg
docker compose run --rm pts benchmark stream
docker compose run --rm pts benchmark java-scimark2

docker compose run --rm pts list-saved-results

virtualisation.podman.enable = true;

sudo podman build .
sudo podman compose run --rm pts benchmark java-scimark
```