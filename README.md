# itch.io `butler` Docker image

Repository for building minimal Docker images with [`butler`](https://itch.io/docs/butler/), the itch.io command-line tool.

## Usage

```shell
docker run \
  -v ./build:~/build \
  -e BUTLER_API_KEY=<YOUR API KEY> \
  ghcr.io/parsenoire/butler butler push ~/build <USER>/<PROJECT>:<CHANNEL>
```

Mount the path to your build output (e.g. `./build`) to a known folder in the container (e.g. `~/build`).

Set your butler API key through the [`BUTLER_API_KEY` environment variable](https://itch.io/docs/butler/login.html#running-butler-from-ci-builds-travis-ci-gitlab-ci-etc). You can generate an API key from your [itch.io API keys settings](https://itch.io/user/settings/api-keys).

Replace `<USER>` with your itch.io username, `<PROJECT>` with your project's slug, and `<CHANNEL>` with a channel name (e.g. `windows`, `macos`, `linux`, `web`).
