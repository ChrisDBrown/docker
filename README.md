# Docker
Dockerfiles for use within Markup & CI

Images should be pushed to https://hub.docker.com/u/markupglasgow/

# How to use
Although Docker does not natively support includes we are using Makefiles to
reuse a few bits of code along with speed up building different tags of images in a
controlled manner.

## Build PHP with composer
This will generate an image tagged with a composer suffix i.e. `markupglasgow/php:7.0-cli-composer`

```
make build -e COMPOSER=true
```

## Build PHP for a certain version
```
make build -e IMAGE_TAG=7.1.2-cli
```
This will generate an image tagged as `markupglasgow/php:7.1.2-cli`

## Pushing the Images

To push the images to dockerhub just issue the push command to make, also `make all`
can be used.
```
make push
```
