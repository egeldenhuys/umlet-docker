#!/bin/sh

# Modified from:
# https://github.com/devng/pdflatex-docker/blob/master/pdflatex-docker.sh

# Usage:
# umlet-docker.sh <fileName>
# umlet-docker.sh mahImage.uxf

# Runs the pdflatex container and mounts the current working dir as a vloueme of
# the container

# abort the script if the compiled folder is not present or another error occurs
set -e

exec docker run --name umlet-docker --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data egeldenhuys/umlet-docker java -jar umlet.jar -action=convert -format=png -filename="$1"
