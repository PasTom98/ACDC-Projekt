#!/usr/bin/make

PATH=/

SHELL = /bin/sh

UID := $(shell id -u)
GID := $(shell id -g)
USER:= "root"

export UID
export GID
export USER


up: 
	docker-compose -f ./docker/docker-compose.yml up --build -d