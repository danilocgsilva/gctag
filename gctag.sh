#!/bin/bash

## version
VERSION="0.0.1"

gctag () {

    if [ -z $1 ]; then
        echo "You must provides the first argument to be the tag label. Usually, is the program version."
        return 1
    fi

    if [ -z $2 ]; then
        echo "You must provides the second argument to be the commit and tag statement."
        return 1
    fi

    echo Program version: "$1"
    echo Statement message: "$2"

    git add -A
    git commit -m "$2"
    git push
    git tag -a "$1" -m "$2"
    git push origin "$1"

}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f gctag
else
  gctag "${@}"
  exit $?
fi