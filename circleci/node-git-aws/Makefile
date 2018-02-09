NAME=markupglasgow/node-git-aws
TAG=latest

default: build

build: dockerfile
	docker build -t ${NAME}:${TAG} .

push:
	docker push ${NAME}:${TAG}

all: dockerfile build push
