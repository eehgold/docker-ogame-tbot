#!/bin/bash
docker run -d \
  -it \
  -v "$(pwd)"/settings.json:/app/publish/linux64/settings.json \
  dockertbot:latest