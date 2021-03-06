#!/bin/sh

TS=PASS

if [ -n "$(command -v hugo-basic)" ]; then
	hugo-basic --path-warnings || TS=FAIL
elif [ -n "$(command -v hugo-extended)" ]; then
	hugo-extended --path-warnings --environment="development" || TS=FAIL
else
	hugo --path-warnings || TS=FAIL
fi

echo "$TS: Generate site with Hugo"

if [ "$TS" = "FAIL" ]; then
	OTS=FAIL
	exit 3
fi

exit 0
