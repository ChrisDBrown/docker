IMAGE_TAG=7.1-cli
COMPOSER=false
NAME=markupglasgow/php
TAG=$(IMAGE_TAG)

ifeq ($(COMPOSER), true)
	TAG="${IMAGE_TAG}-composer"
endif

default: build

dockerfile: clean
	m4 --include=../includes/ \
	-D IMAGE_TAG=${IMAGE_TAG} \
	-D GIT=${GIT} \
	-D COMPOSER=${COMPOSER} \
	Dockerfile.m4 > Dockerfile

clean:
	rm -rf Dockerfile

build: dockerfile
	docker build -t ${NAME}:${TAG} .

push:
	docker push ${NAME}:${TAG}

all: dockerfile build push
