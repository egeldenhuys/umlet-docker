#!/bin/sh

# Modified from:
# https://github.com/devng/pdflatex-docker/blob/master/pdflatex-docker.sh

# NOTE: Files need to be in current dir

# Usage:
# umlet-docker.sh <username> <format> <input file> <output file>

# Example:
# umlet-docker.sh evert png mahImage.uxf mahImage.png

# Run umlet and convert the given file in the current directory as the given user
exec docker run --name umlet-docker --rm -i --user="$(id -u $1):$(id -g $1)" \
--net=none -v "$PWD:/data" egeldenhuys/umlet-docker \
java -jar umlet.jar -action=convert -format=png -filename="/data/$2" -output="/data/$3"
