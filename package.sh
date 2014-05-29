#!/bin/bash

set -xe

### The dir for the package script
MY_DIR=$( dirname $0 )
cd $MY_DIR

### Name of the package, project, etc
NAME=kafka

### This is something like kafka_[version stuff]
### This is a symlink to the dir with the version of kafka we want to build
TARGET=$( basename $( readlink --canonicalize $NAME ) )

### Packaging info
PACKAGE_NAME=$NAME
PACKAGE_VERSION=$( echo $TARGET | sed 's/^.*_//')~krux$( date -u +%Y%m%d%H%M )

### Where this package will be installed
DEST_DIR="/usr/local/${NAME}/"

### Where the sources live
SOURCE_DIR="${MY_DIR}/${TARGET}"

# run fpm
/usr/local/bin/fpm -s dir -t deb -a all -n $PACKAGE_NAME -v $PACKAGE_VERSION --prefix $DEST_DIR -C $SOURCE_DIR .
