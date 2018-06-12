#!/bin/sh -e

SYSTEM=$(uname)

if [ "${SYSTEM}" = Darwin ]; then
    FIND='gfind'
else
    FIND='find'
fi

${FIND} "${HOME}/src" -mindepth 1 -maxdepth 1 -type d -name '*-skeleton'
