#!/bin/sh

# Modified from:
# https://github.com/devng/pdflatex-docker/blob/master/pdflatex-docker.sh

# Usage:
# NOTE: Files need to be in current dir
# umlet-docker.sh <username> <input file> <output file>
# umlet-docker.sh evert mahImage.uxf mahImage.png

# Runs the pdflatex container and mounts the current working dir as a vloueme of
# the container

exec docker run --name umlet-docker --rm -i --user="$(id -u $1):$(id -g $1)" --net=none -v "$PWD:/data" egeldenhuys/umlet-docker java -jar umlet.jar -action=convert -format=png -filename="/data/$2" -output="/data/$3"
