#!/bin/bash
set -e

if [ -e /etc/apt/sources.list ]; then
	# make sure we have "deb-src" entries for "apt-get source"
	find /etc/apt/sources.list* \
		-type f \
		-exec sed -i \
			-e 'p; s/^deb /deb-src /' \
			'{}' +

	if ! apt-get update -qq; then
		# retry up to one time
		apt-get update -qq
	fi
fi
