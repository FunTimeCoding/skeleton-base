#!/bin/sh -e

FILE="${1}"

if [ "${FILE}" = "" ]; then
    echo "Usage: ${0} FILE"

    exit 1
fi

find ../ -name '*-skeleton' -exec sh -c 'cp ${1} ${2}' '_' "${FILE}" '{}' \;
find ../ -name '*-skeleton' -exec sh -c 'cd ${1} && git commit -am "Update ${2} from skeleton-base." && git push' '_' '{}' "${FILE}" \;
