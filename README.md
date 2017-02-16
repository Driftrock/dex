# dru

_Starts docker-sync and docker-compose in background if not running yet and exec your command with `dru command`_

### What

It:
- Checks if docker-sync and docker-compose is running
- If yes it runs command in `docker exec` (which is much faster than `docker-compose exec`)
- If not it starts `docker-sync` in background and `docker-compose up` in background

### Why

- It is easier to write `dru mix test` than `docker-compose exec app mix test`
- It is annoying to always manually run `docker-sync-stack up` in separated console.
- It is annoying to have separated console just for docker-sync
- Because docker-sync 0.2.0 introduced background mode

## Install

If you don't have docker-sync 0.2 install it with script below. Make sure you are using system RVM if you use RVM:
```
git clone -b release/0.2.0 https://github.com/EugenMayer/docker-sync
cd docker-sync
sudo ./deploy_locally.sh
```

Run this to add `dru` to your `/usr/local/bin`
```
sudo ./install.sh
```

## Usage

First setup default service name (as you have in `docker-compose.yml`) with
```
echo service-name > .docker-compose-default-service
```

Run your container command
```
dru command
```

Stop docker-compose and docker-sync

```
dru --stop
```

## Why "dru"?

`docker-compose-run` > `dc-run` > `drun` > `dru` :|
