# dex
Small tool that with docker-sync 2 runs command in your container with just `dex command`

## Why

It:
- Checks if docker-sync and docker-compose is running
- If yes it execute command in `docker exec` (which is much faster than `docker-compose exec`)
- If not it starts `docker-sync` in background and `docker-compose up` in background

## Install

Run this to add `dex` to your `/usr/local/bin`
```
sudo ./install.sh
```

## Usage

### Setup your project

First setup default service name (as you have in `docker-compose.yml`) with
```
echo service-name > .docker-compose-default-service
```

It assumes that your default service when started with `docker-compose up` runs
indefinite process. For development we recommend to set `command` value to `sleep infinity`
that keeps the container up, but doesn't do anything other than when you run commands
using `dex`:

Example `docker-compose.yml` (or your dev override file):
```yaml
...
  myapp:
    command: sleep infinity
...
```

### Execute commands like local

Execute your container command
```
dex command
```

Stop docker-compose and docker-sync

```
dex --stop
```

## Why "dex"?

`docker-compose-exec` > `dcexec` > `dcex` > `dex` :|
