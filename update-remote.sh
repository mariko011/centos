#!/bin/bash
set -eo pipefail

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

# going for "bashbrew: command not found"
bashbrew --help > /dev/null

docker build --pull -t repo-info:remote -q -f Dockerfile.remote . > /dev/null

repos=( "$@" )
if [ ${#repos[@]} -eq 0 ]; then
	IFS=$'\n'
	repos=( $(bashbrew list --all --repos) )
	unset IFS
fi
repos=( "${repos[@]%/}" )

for repo in "${repos[@]}"; do
	echo -n "$repo ... "
	IFS=$'\n'
	tags=( $(bashbrew list "$repo" 2>/dev/null || true) )
	unset IFS
	if [ "${#tags[@]}" -eq 0 ]; then
		echo 'skipping'
		continue
	fi
	mkdir -p "repos/$repo"
	{
		echo "<!-- THIS FILE IS GENERATED VIA '$0' -->"
		echo
		echo "# Tags of \`$repo\`"
		echo
		# add a simple ToC
		for tag in "${tags[@]}"; do
			# GitHub heading anchors are strange
			href="${tag//./}"
			href="${href//:/}"
			href="#${href,,}"
			echo $'-\t[`'"$tag"'`]('"$href"')'
		done
		docker run -i --rm repo-info:remote -- "${tags[@]}"
	} > "repos/$repo/tag-details.md"
	echo 'done'
done
