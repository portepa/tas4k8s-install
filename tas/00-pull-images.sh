#!/bin/sh

CURRENT_DIR="$(dirname "$0")"
source $CURRENT_DIR/000-globals.sh

for image in ${IMAGES[@]}; do
    docker pull registry.pivotal.io/$image
done
