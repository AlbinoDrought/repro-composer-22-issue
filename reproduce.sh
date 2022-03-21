#!/bin/sh
set -x
set -e
docker run --rm -v $PWD:/app -w /app composer:2.1 composer require --dev phpunit/phpunit:^9
docker run --rm -v $PWD:/app -w /app composer:2.2 composer require --dev phpunit/phpunit:^9

