NAME=markupglasgow/php-arm-alpine
PHP_VERSION=7

default: build

dockerfile: clean
	m4 --include=../includes-arm-alpine/ \
	-D PHP_VERSION=${PHP_VERSION} \
	Dockerfile.m4 > Dockerfile

clean php:
	rm -rf Dockerfile

build: dockerfile
	docker build -t ${NAME}:${TAG} .

push:
	docker push ${NAME}:${TAG}

all: dockerfile build push
