#!/bin/bash

self=$(readlink -e "$0") || exit 1
self=$(dirname "${self}") || exit 1

rsync --inplace --delete --out-format="%t %o %f ... %n" --filter=". ${self}/rs-filter" --chmod=u+w,Du+x -Phac / "${self}/rs/"
