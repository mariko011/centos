#!/bin/bash
set -eo pipefail

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

# going for "bashbrew: command not found"
bashbrew --help > /dev/null

repos=( "$@" )
if [ ${#repos[@]} -eq 0 ]; then
	IFS=$'\n'
	repos=( $(bashbrew list --all --repos) )
	unset IFS
fi
repos=( "${repos[@]%/}" )

docker build --pull -t repo-info:remote -q -f Dockerfile.remote . > /dev/null
trap 'docker rm -f repo-info-remote > /dev/null' EXIT
docker run -d --name repo-info-remote repo-info:remote daemon > /dev/null

repoInfoDaemon='http://localhost:3000' # since we're using "docker exec", we can just hit localhost
curl() {
	docker exec -i repo-info-remote curl "$@"
}

tries=10
while [ "$(curl --max-time 2 -fsSL "$repoInfoDaemon" -o /dev/null &> /dev/null || echo "$?")" = '7' ]; do
	(( --tries )) || :
	if [ "$tries" -eq 0 ]; then
		echo >&2 "error: repo-info:remote daemon did not start up in a reasonable amount of time"
		exit 1
	fi
	sleep 1
done

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
		# fetch each markdown
		for tag in "${tags[@]}"; do
			echo
			curl -fsSL "$repoInfoDaemon/markdown/$tag"
		done
	} > "repos/$repo/tag-details.md"
	echo 'done'
done
