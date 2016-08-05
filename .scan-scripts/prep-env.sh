#!/bin/bash
set -e

if [ -e /etc/apt/sources.list ]; then
	# make sure we have "deb-src" entries for "apt-get source"
	find /etc/apt/sources.list* \
		-type f \
		-exec sed -i \
			-e 'p; s/^deb /deb-src /' \
			'{}' +

	apt-get update -qq
fi
