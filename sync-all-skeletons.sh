#!/bin/sh -e

find ../ -name '*-skeleton' -exec sh -c './sync-project.sh ${1}' '_' '{}' \;
find ../ -name '*-skeleton' -exec sh -c 'rm ${1}/sync-all-skeletons.sh' '_' '{}' \;
find ../ -name '*-skeleton' -exec sh -c 'rm ${1}/sync-one-file-to-all-and-push.sh' '_' '{}' \;
