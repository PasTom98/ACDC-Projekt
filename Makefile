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
	docker-compose -f ./docker/docker-compose.yml build

up:
	docker-compose -f ./docker/docker-compose.yml up -d

start:
	docker-compose -f docker-compose.yml start

down:
	docker-compose -f docker-compose.yml down
