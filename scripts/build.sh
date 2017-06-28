#!/bin/bash

set -eo pipefail

# Install merge plugin.

echo $HOME
echo $PWD

docker run --rm \
    -v "$HOME/.composer":/composer \
    -v "$PWD":/app \
    composer/composer:alpine update -n

# Install all requirements.
docker run --rm \
    -v "$HOME/.composer":/composer \
    -v "$PWD":/app \
    composer/composer:alpine update -n
