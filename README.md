# mlbv-docker

This package wraps the [mlbv](https://github.com/kmac/mlbv) package in Docker.

## Prerequisites

- Install VLC
- Set environment variables: `MLBTV_USERNAME` and `MLBTV_PASSWORD`

## Getting started

### Build the image

```bash
> make build
```

### Launch a stream

```bash
> ./mlbtv [--team phi] [--feed home] [--yesterday] [...]
```

For more options, see the [mlbv documentation](https://github.com/kmac/mlbv#5-watching-a-live-or-archived-game).

## How does it work?

The [mlbtv](./mlbtv) script follows these steps.

1. Start a container with any local directory mounted onto it (you can customize the volume this in [mlbtv](./mlbtv))

2. Run mlbv with the `--fetch` flag, the live stream will be recorded in real-time to the mounted directory

3. Launch VLC (or any other player) to watch the live stream

4. Clean up: when VLC exits, remove the Docker container and delete the recorded stream
