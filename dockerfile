FROM alpine:latest

RUN apk add --no-cache wine

WORKDIR /app

COPY . ./app

ENV DISPLAY=:0

CMD wine /app/app/DOCKER_WPF/bin/debug/DOCKER_WPF.exe