#!/bin/bash
docker run -d \
  -it \
  --name dockertbot \
  -v "$(pwd)"/settings.json:/app/publish/linux64/settings.json \
  dockertbot:latest