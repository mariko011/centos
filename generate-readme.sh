#!/bin/bash
set -Eeuo pipefail

repo="$1"; shift
repoMd='`'"$repo"'`'

cat <<EOF
# $repoMd repo-info

This directory contains additional information about the published artifacts of the $repoMd official image.

-	[the \`remote\` directory](remote/):

	-	gathered from the Docker Hub/Registry API

	-	image digests/blobs, transfer sizes, image metadata, etc.

-	[the \`local\` directory](local/):

	-	inspected from the image on-disk after it is pulled

	-	installed packages, creation date, architecture, environment variables, detected licenses, etc.
EOF
