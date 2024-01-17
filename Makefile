#!/usr/bin/make

PATH=/

SHELL = /bin/sh

UID := $(shell id -u)
GID := $(shell id -g)
USER:= "root"

export UID
export GID
export USER


build:
        docker-compose -f docker-compose.yml build $(c)
up:
        docker-compose -f docker-compose.yml up -d $(c)
start:
        docker-compose -f docker-compose.yml start $(c)
down:
        docker-compose -f docker-compose.yml down $(c)