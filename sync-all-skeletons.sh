#!/bin/sh -e

find ../ -name '*-skeleton' -exec sh -c './sync-project.sh ${1}' '_' '{}' \;
