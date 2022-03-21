# Composer 2.2 Issue

    Problem 1
      - Root composer.json requires example/sample-dep dev-master, found example/sample-dep[dev-main] but it does not match the constraint. Perhaps dev-master was renamed to dev-main?
    Problem 2
      - Root composer.json requires example/sample-other-dep dev-master, found example/sample-other-dep[dev-main] but it does not match the constraint. Perhaps dev-master was renamed to dev-main?

To reproduce:

- Have a local requirement targetting `dev-master`
- Have some other requirement, maybe also a dependant of the above
- Upgrade that other requirement

If you have Docker, run `./reproduce.sh` in this repo, or:

```sh
#!/bin/sh
set -x
set -e
docker run --rm -v $PWD:/app -w /app composer:2.1 composer require --dev phpunit/phpunit:^9
docker run --rm -v $PWD:/app -w /app composer:2.2 composer require --dev phpunit/phpunit:^9
```
