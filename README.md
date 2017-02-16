# dru
Small tool that with docker-sync 2 runs command in your container with just `dru command`

## Why

It:
- Checks if docker-sync and docker-compose is running
- If yes it runs command in `docker exec` (which is much faster than `docker-compose exec`)
- If not it starts `docker-sync` in background and `docker-compose up` in background

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
