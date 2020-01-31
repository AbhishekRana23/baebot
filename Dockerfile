FROM ubuntu:latest
RUN apt-get update && apt install -y curl
RUN apt install -y make python build-essential
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install nodejs -y
RUN npm config set unsafe-perm true
RUN mkdir /bot
RUN chmod 777 /bot
COPY . /bot
WORKDIR /bot
RUN chmod -R 777 /bot
RUN npm install
