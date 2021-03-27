#!/bin/sh
#

OTS=SUCCESS

htfiles="$(find public -name '*.html' -print)"

for htfile in $htfiles; do
	if grep -q 'meta http-equiv="refresh' $htfile; then
		echo "SKIP: Linting (tidy) for $htfile; it's an alias (meta refresh only)"
	else
		tidy -o /dev/null -q --drop-empty-elements no --indent auto $htfile
		RC=$?
		if [ "$RC" = "2" ]; then
			echo "FAIL: Linting (tidy) for $htfile"
			exit 3
		elif [ "$RC" = "1" ]; then
			echo "WARN: Linting (tidy) for $htfile"
		fi
	fi
done

echo "PASS: Linting (tidy)"

exit 0
