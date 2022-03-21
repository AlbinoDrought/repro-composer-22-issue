#!/bin/sh
set -x
set -e
docker run --rm -v $PWD/subdir:/app -w /app composer:2.1 composer require --dev phpunit/phpunit:^9 -vvv
docker run --rm -v $PWD/subdir:/app -w /app composer:2.2 composer require --dev phpunit/phpunit:^9 -vvv
