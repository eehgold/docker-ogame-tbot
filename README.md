# DOCKER OGAME TBOT

A simply docker version of the amazing [Tbot for ogame](https://github.com/ogame-tbot/TBot)

# HOW TO USE

## ADJUST VARIABLES

For beginners, simply edit theses variables : 
```console
"Universe": "Libra",
"Email": "sample@sample.lan",
"Password": "B1gP4ssw0rd",
"Language": "en",
```

For more options, see : https://github.com/ogame-tbot/TBot/wiki/Configuration-guide


## LAUNCH

Simply run 
```console
docker run -d -it -v "$(pwd)"/settings.json:/app/publish/linux64/settings.json eehgold/docker-ogame-tbot:latest
```
OR
```console
bash run.bash
```
## CHECK IF EVERYTHING IS GOOD

Get the running container ID 
```console
docker ps
```
Check the logs
```console
docker logs "CONTAINER ID"
```

# CREDITS 

[DOCKERHUB](https://hub.docker.com/r/eehgold/docker-ogame-tbot)
[TBOT GITHUB](https://github.com/ogame-tbot/TBot)
[TBOT WIKI](https://github.com/ogame-tbot/TBot/wiki/Configuration-guide)
