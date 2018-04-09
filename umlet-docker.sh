#!/bin/sh

# Modified from:
# https://github.com/devng/pdflatex-docker/blob/master/pdflatex-docker.sh

# Usage:
# NOTE: Files need to be in current dir
# umlet-docker.sh <input file> <output file>
# umlet-docker.sh mahImage.uxf

# Runs the pdflatex container and mounts the current working dir as a vloueme of
# the container


exec docker run --name umlet-docker --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD:/data" egeldenhuys/umlet-docker java -jar umlet.jar -action=convert -format=png -filename="$1" -output="$2"
