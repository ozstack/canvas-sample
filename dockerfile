FROM ozstack/nodejs:20.11

RUN mkdir /app -p
COPY . /app
WORKDIR /app

# ENV npm_config_node-=<VALUE>
ENV npm_config_tarball=/app/npm_packages/node-v20.11.1-headers.tar.gz

RUN yarn install --offline

# docker build . --network "none" -t ozstack/node:20.11.test

# https://github.com/ozstack/canvas-sample.git

# FROM ubuntu:22.04

# ENV TZ=Asia/Seoul

# RUN apt-get update && apt-get upgrade -y && apt-get install curl fonts-nanum fontconfig \
#     build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y \
#     && curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh \
#     && bash nodesource_setup.sh \    
#     && apt install nodejs -y \
#     && npm install --global yarn \
#     && npm install --global node-gyp \
#     && npm install --global canvas


# FROM node:20.11-bullseye-slim

# RUN apt-get update && apt-get upgrade -y && apt-get install curl fonts-nanum fontconfig \
#     build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y \        
#     && npm install --global node-gyp \
#     && npm install --global canvas

# ENV TZ=Asia/Seoul

# # docker build . -t ozstack/nodejs:bulleye-20.11 
