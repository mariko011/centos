#!/bin/bash
set -e

IFS=$'\n'
rawPackages=( $(dpkg-query --show --showformat='${db:Status-Abbrev} ${source:Package}=${source:Version} ${binary:Package}=${Version}\n' 2>/dev/null) )
unset IFS

declare -A packages=()
for rawPackage in "${rawPackages[@]}"; do
	rawPackage=( $rawPackage )
	stat="${rawPackage[0]}"
	case "$stat" in
		i?|h?)
			# "install" or "hold"
			;;
		*)
			# skip "unknown", "remove", "purge"
			continue
			;;
	esac
	src="${rawPackage[1]}"
	bin="${rawPackage[2]}"
	[ -z "${packages[$src]}" ] || packages[$src]+=' '
	packages[$src]+="$bin"
done

if [ "${#packages[@]}" -eq 0 ]; then
	# not Debian-based
	exit 1
fi

IFS=$'\n'
sortedSources=( $(echo "${!packages[*]}" | sort) )
unset IFS

echo
echo '## Debian Packages'

for src in "${sortedSources[@]}"; do
	echo
	echo '### `'"$src"'`'
	echo
	echo 'Binary Packages:'
	echo
	for bin in ${packages[$src]}; do
		echo '- `'"$bin"'`'
	done
	if aptSource="$(apt-get source -qq --print-uris "$src" 2>/dev/null)" && [ -n "$aptSource" ]; then
		echo
		echo 'Source:'
		echo
		echo '```'
		echo "$aptSource"
		echo '```'
		case "$aptSource" in
			*.debian.org/*)
				# _probably_ Debian -- let's link to sources.debian.net too
				echo
				echo 'Likely also available for browsing at:'
				echo
				echo '- https://sources.debian.net/src/'"${src//=//}"'/'
				;;
		esac
	else
		echo
		echo '**WARNING:** unable to find source (`apt-get source` failed or returned no results)!'
		echo
	fi
done
