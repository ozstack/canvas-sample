FROM ubuntu:22.04

ENV TZ=Asia/Seoul

RUN apt-get update && apt-get upgrade -y && apt-get install curl fonts-nanum fontconfig \
    build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y \
    && curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh \
    && bash nodesource_setup.sh \    
    && apt install nodejs -y \
    && npm install --global yarn \
    && npm install --global node-gyp \
    && npm install --global canvas
