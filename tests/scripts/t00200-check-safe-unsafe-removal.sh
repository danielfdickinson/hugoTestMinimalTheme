#!/bin/sh

TS=PASS

#grep --color --only-matching --recursive --ignore-case --extended-regexp "<\!-- raw HTML omitted -->|ZgotmplZ|hahahugo" public/
grep -q --only-matching --recursive --ignore-case --extended-regexp "ZgotmplZ|hahahugo" public/ && TS=FAIL

echo "$TS: Check for safe/unsafe attributes/HTML removal"

if [ "$TS" = "FAIL" ]; then
	OTS=FAIL
	exit 3
fi
