<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1.7.0`](#ghost170)
-	[`ghost:1.7`](#ghost17)
-	[`ghost:1`](#ghost1)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:1.7.0-alpine`](#ghost170-alpine)
-	[`ghost:1.7-alpine`](#ghost17-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)

## `ghost:1.7.0`

```console
$ docker pull ghost@sha256:0e3e9a98a3f5c9dfe03e6c625493a89b7b289ff19dbd5b20777bcc81f18f75e8
```

-	Platforms:
	-	linux; amd64

### `ghost:1.7.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269845269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca455c28b77f7030f82a8d59aa0ca3ee7c80f35a427254f0ba3f9f4eb9f43ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:20:19 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:20:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:43:55 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:41:27 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:42:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:42:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:42:50 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:42:50 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:42:51 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 23 Aug 2017 21:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:42:51 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:42:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b1f56743817e6e967ba20066aa1ffd0b2210e835df033490c6eba27adc4c4b`  
		Last Modified: Fri, 18 Aug 2017 23:22:43 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0802d61f651bb477df9a5fa441cd94da4c7812e2b91eb7b659b629b2c7c24`  
		Last Modified: Wed, 23 Aug 2017 21:44:48 GMT  
		Size: 86.7 MB (86680587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8702010d74887808935dd3db9dc81dbc29172363ae21f1366bf3609cda6d932`  
		Last Modified: Wed, 23 Aug 2017 21:44:49 GMT  
		Size: 95.1 MB (95142880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af71f77d96cdcae2775e530623416cb17bfef6594b9333d74c55e4cd7652282`  
		Last Modified: Wed, 23 Aug 2017 21:44:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.7`

```console
$ docker pull ghost@sha256:0e3e9a98a3f5c9dfe03e6c625493a89b7b289ff19dbd5b20777bcc81f18f75e8
```

-	Platforms:
	-	linux; amd64

### `ghost:1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269845269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca455c28b77f7030f82a8d59aa0ca3ee7c80f35a427254f0ba3f9f4eb9f43ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:20:19 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:20:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:43:55 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:41:27 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:42:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:42:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:42:50 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:42:50 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:42:51 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 23 Aug 2017 21:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:42:51 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:42:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b1f56743817e6e967ba20066aa1ffd0b2210e835df033490c6eba27adc4c4b`  
		Last Modified: Fri, 18 Aug 2017 23:22:43 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0802d61f651bb477df9a5fa441cd94da4c7812e2b91eb7b659b629b2c7c24`  
		Last Modified: Wed, 23 Aug 2017 21:44:48 GMT  
		Size: 86.7 MB (86680587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8702010d74887808935dd3db9dc81dbc29172363ae21f1366bf3609cda6d932`  
		Last Modified: Wed, 23 Aug 2017 21:44:49 GMT  
		Size: 95.1 MB (95142880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af71f77d96cdcae2775e530623416cb17bfef6594b9333d74c55e4cd7652282`  
		Last Modified: Wed, 23 Aug 2017 21:44:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:0e3e9a98a3f5c9dfe03e6c625493a89b7b289ff19dbd5b20777bcc81f18f75e8
```

-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269845269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca455c28b77f7030f82a8d59aa0ca3ee7c80f35a427254f0ba3f9f4eb9f43ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:20:19 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:20:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:43:55 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:41:27 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:42:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:42:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:42:50 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:42:50 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:42:51 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 23 Aug 2017 21:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:42:51 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:42:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b1f56743817e6e967ba20066aa1ffd0b2210e835df033490c6eba27adc4c4b`  
		Last Modified: Fri, 18 Aug 2017 23:22:43 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0802d61f651bb477df9a5fa441cd94da4c7812e2b91eb7b659b629b2c7c24`  
		Last Modified: Wed, 23 Aug 2017 21:44:48 GMT  
		Size: 86.7 MB (86680587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8702010d74887808935dd3db9dc81dbc29172363ae21f1366bf3609cda6d932`  
		Last Modified: Wed, 23 Aug 2017 21:44:49 GMT  
		Size: 95.1 MB (95142880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af71f77d96cdcae2775e530623416cb17bfef6594b9333d74c55e4cd7652282`  
		Last Modified: Wed, 23 Aug 2017 21:44:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:0e3e9a98a3f5c9dfe03e6c625493a89b7b289ff19dbd5b20777bcc81f18f75e8
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269845269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca455c28b77f7030f82a8d59aa0ca3ee7c80f35a427254f0ba3f9f4eb9f43ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:20:19 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:20:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 18 Aug 2017 23:20:23 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:43:55 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:41:27 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:42:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:42:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:42:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:42:50 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:42:50 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:42:51 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 23 Aug 2017 21:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:42:51 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:42:52 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b1f56743817e6e967ba20066aa1ffd0b2210e835df033490c6eba27adc4c4b`  
		Last Modified: Fri, 18 Aug 2017 23:22:43 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0802d61f651bb477df9a5fa441cd94da4c7812e2b91eb7b659b629b2c7c24`  
		Last Modified: Wed, 23 Aug 2017 21:44:48 GMT  
		Size: 86.7 MB (86680587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8702010d74887808935dd3db9dc81dbc29172363ae21f1366bf3609cda6d932`  
		Last Modified: Wed, 23 Aug 2017 21:44:49 GMT  
		Size: 95.1 MB (95142880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af71f77d96cdcae2775e530623416cb17bfef6594b9333d74c55e4cd7652282`  
		Last Modified: Wed, 23 Aug 2017 21:44:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.7.0-alpine`

```console
$ docker pull ghost@sha256:b7dceb3a1bf891fb4eafecf4c95b887de960b8b2cfa4672ca3525d2e1cc925cb
```

-	Platforms:
	-	linux; amd64

### `ghost:1.7.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201483527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f421c3ffab65251dc96f4e9e7f73a196701c8110b5e9600fb4853c639576fae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:43:08 GMT
RUN apk add --no-cache 		bash
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:45:38 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:42:57 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:43:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:43:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:44:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:44:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:44:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:44:22 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 23 Aug 2017 21:44:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:44:22 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:44:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc3c4691066a142a5ccea1e0c9ca529c525a4320395999a4eade1f5df315497`  
		Last Modified: Tue, 01 Aug 2017 23:56:23 GMT  
		Size: 1.1 MB (1099490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034f2a374cfe55ec7565c51bc2f09d0ede10f5a81a6279dc93604c11516b81db`  
		Last Modified: Wed, 23 Aug 2017 21:45:36 GMT  
		Size: 86.7 MB (86681155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8d16d619c12cb54cfa40e39be85f102f1af08f2f5befb8e73ad7d33240a244`  
		Last Modified: Wed, 23 Aug 2017 21:45:44 GMT  
		Size: 95.1 MB (95143147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b139945aaad7e527635341b309cb74726730eb7e5ceda9dbac4cd7540c8e99`  
		Last Modified: Wed, 23 Aug 2017 21:45:26 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.7-alpine`

```console
$ docker pull ghost@sha256:b7dceb3a1bf891fb4eafecf4c95b887de960b8b2cfa4672ca3525d2e1cc925cb
```

-	Platforms:
	-	linux; amd64

### `ghost:1.7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201483527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f421c3ffab65251dc96f4e9e7f73a196701c8110b5e9600fb4853c639576fae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:43:08 GMT
RUN apk add --no-cache 		bash
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:45:38 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:42:57 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:43:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:43:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:44:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:44:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:44:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:44:22 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 23 Aug 2017 21:44:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:44:22 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:44:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc3c4691066a142a5ccea1e0c9ca529c525a4320395999a4eade1f5df315497`  
		Last Modified: Tue, 01 Aug 2017 23:56:23 GMT  
		Size: 1.1 MB (1099490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034f2a374cfe55ec7565c51bc2f09d0ede10f5a81a6279dc93604c11516b81db`  
		Last Modified: Wed, 23 Aug 2017 21:45:36 GMT  
		Size: 86.7 MB (86681155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8d16d619c12cb54cfa40e39be85f102f1af08f2f5befb8e73ad7d33240a244`  
		Last Modified: Wed, 23 Aug 2017 21:45:44 GMT  
		Size: 95.1 MB (95143147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b139945aaad7e527635341b309cb74726730eb7e5ceda9dbac4cd7540c8e99`  
		Last Modified: Wed, 23 Aug 2017 21:45:26 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:b7dceb3a1bf891fb4eafecf4c95b887de960b8b2cfa4672ca3525d2e1cc925cb
```

-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201483527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f421c3ffab65251dc96f4e9e7f73a196701c8110b5e9600fb4853c639576fae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:43:08 GMT
RUN apk add --no-cache 		bash
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:45:38 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:42:57 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:43:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:43:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:44:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:44:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:44:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:44:22 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 23 Aug 2017 21:44:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:44:22 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:44:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc3c4691066a142a5ccea1e0c9ca529c525a4320395999a4eade1f5df315497`  
		Last Modified: Tue, 01 Aug 2017 23:56:23 GMT  
		Size: 1.1 MB (1099490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034f2a374cfe55ec7565c51bc2f09d0ede10f5a81a6279dc93604c11516b81db`  
		Last Modified: Wed, 23 Aug 2017 21:45:36 GMT  
		Size: 86.7 MB (86681155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8d16d619c12cb54cfa40e39be85f102f1af08f2f5befb8e73ad7d33240a244`  
		Last Modified: Wed, 23 Aug 2017 21:45:44 GMT  
		Size: 95.1 MB (95143147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b139945aaad7e527635341b309cb74726730eb7e5ceda9dbac4cd7540c8e99`  
		Last Modified: Wed, 23 Aug 2017 21:45:26 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:b7dceb3a1bf891fb4eafecf4c95b887de960b8b2cfa4672ca3525d2e1cc925cb
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201483527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f421c3ffab65251dc96f4e9e7f73a196701c8110b5e9600fb4853c639576fae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:43:08 GMT
RUN apk add --no-cache 		bash
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 01 Aug 2017 23:43:08 GMT
ENV NODE_ENV=production
# Mon, 21 Aug 2017 18:45:38 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 23 Aug 2017 21:42:57 GMT
ENV GHOST_VERSION=1.7.0
# Wed, 23 Aug 2017 21:43:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 23 Aug 2017 21:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Aug 2017 21:43:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Aug 2017 21:44:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 23 Aug 2017 21:44:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Aug 2017 21:44:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Aug 2017 21:44:22 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 23 Aug 2017 21:44:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:44:22 GMT
EXPOSE 2368/tcp
# Wed, 23 Aug 2017 21:44:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc3c4691066a142a5ccea1e0c9ca529c525a4320395999a4eade1f5df315497`  
		Last Modified: Tue, 01 Aug 2017 23:56:23 GMT  
		Size: 1.1 MB (1099490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034f2a374cfe55ec7565c51bc2f09d0ede10f5a81a6279dc93604c11516b81db`  
		Last Modified: Wed, 23 Aug 2017 21:45:36 GMT  
		Size: 86.7 MB (86681155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8d16d619c12cb54cfa40e39be85f102f1af08f2f5befb8e73ad7d33240a244`  
		Last Modified: Wed, 23 Aug 2017 21:45:44 GMT  
		Size: 95.1 MB (95143147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b139945aaad7e527635341b309cb74726730eb7e5ceda9dbac4cd7540c8e99`  
		Last Modified: Wed, 23 Aug 2017 21:45:26 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:fe5a17d73e6fda07808a66cc55429736bf60f7d8cf2a721e51ccb5e4dcc27168
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112698621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa351ecdb497e296b3e59295fb6bb2d6d7c4bcf9197f7c771d5568b4fab48cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:18:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Aug 2017 23:18:32 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:18:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:18:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 18 Aug 2017 23:18:36 GMT
WORKDIR /usr/src/ghost
# Fri, 18 Aug 2017 23:18:37 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 18 Aug 2017 23:19:40 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 18 Aug 2017 23:19:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 18 Aug 2017 23:19:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 18 Aug 2017 23:19:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 18 Aug 2017 23:19:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 18 Aug 2017 23:19:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 18 Aug 2017 23:19:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Aug 2017 23:19:44 GMT
EXPOSE 2368/tcp
# Fri, 18 Aug 2017 23:19:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc2dc652cc9f9c1f8cc47d1e0ac1994eefdff2edce41fc924e211135865c1de`  
		Last Modified: Fri, 18 Aug 2017 23:21:52 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b519f4e068af593571e50616aac351513a3230e2cb1318bd417c6a0ba8547f06`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab1de3d40a2da89b3a6ce890a4671ad644ab7e1b43391d5d78f1fdf16160c08`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790902305fa436c03a5127aac857fb7ae6c71cc132f6b2a0dd0d6cdbebf2ab1c`  
		Last Modified: Fri, 18 Aug 2017 23:21:56 GMT  
		Size: 24.7 MB (24671888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15177171af306a737bce24938f76b53c7f9bba8a2f99001fc909c145d87f3914`  
		Last Modified: Fri, 18 Aug 2017 23:21:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726da05aba5d9a0a4d3e231d0e915fac9d2e5d8146abee3c7439539cc389d5e`  
		Last Modified: Fri, 18 Aug 2017 23:21:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d69a18e1056213b4dc26a8c57ce4361538f203942c70315265b83dc25415e7d`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:fe5a17d73e6fda07808a66cc55429736bf60f7d8cf2a721e51ccb5e4dcc27168
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112698621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa351ecdb497e296b3e59295fb6bb2d6d7c4bcf9197f7c771d5568b4fab48cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:18:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Aug 2017 23:18:32 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:18:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:18:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 18 Aug 2017 23:18:36 GMT
WORKDIR /usr/src/ghost
# Fri, 18 Aug 2017 23:18:37 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 18 Aug 2017 23:19:40 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 18 Aug 2017 23:19:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 18 Aug 2017 23:19:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 18 Aug 2017 23:19:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 18 Aug 2017 23:19:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 18 Aug 2017 23:19:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 18 Aug 2017 23:19:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Aug 2017 23:19:44 GMT
EXPOSE 2368/tcp
# Fri, 18 Aug 2017 23:19:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc2dc652cc9f9c1f8cc47d1e0ac1994eefdff2edce41fc924e211135865c1de`  
		Last Modified: Fri, 18 Aug 2017 23:21:52 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b519f4e068af593571e50616aac351513a3230e2cb1318bd417c6a0ba8547f06`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab1de3d40a2da89b3a6ce890a4671ad644ab7e1b43391d5d78f1fdf16160c08`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790902305fa436c03a5127aac857fb7ae6c71cc132f6b2a0dd0d6cdbebf2ab1c`  
		Last Modified: Fri, 18 Aug 2017 23:21:56 GMT  
		Size: 24.7 MB (24671888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15177171af306a737bce24938f76b53c7f9bba8a2f99001fc909c145d87f3914`  
		Last Modified: Fri, 18 Aug 2017 23:21:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726da05aba5d9a0a4d3e231d0e915fac9d2e5d8146abee3c7439539cc389d5e`  
		Last Modified: Fri, 18 Aug 2017 23:21:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d69a18e1056213b4dc26a8c57ce4361538f203942c70315265b83dc25415e7d`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:fe5a17d73e6fda07808a66cc55429736bf60f7d8cf2a721e51ccb5e4dcc27168
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112698621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa351ecdb497e296b3e59295fb6bb2d6d7c4bcf9197f7c771d5568b4fab48cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Fri, 18 Aug 2017 20:32:04 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 18 Aug 2017 20:32:04 GMT
ENV YARN_VERSION=0.27.5
# Fri, 18 Aug 2017 20:32:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 18 Aug 2017 20:32:07 GMT
CMD ["node"]
# Fri, 18 Aug 2017 23:18:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Aug 2017 23:18:32 GMT
ENV GOSU_VERSION=1.7
# Fri, 18 Aug 2017 23:18:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 18 Aug 2017 23:18:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 18 Aug 2017 23:18:36 GMT
WORKDIR /usr/src/ghost
# Fri, 18 Aug 2017 23:18:37 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 18 Aug 2017 23:19:40 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 18 Aug 2017 23:19:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 18 Aug 2017 23:19:42 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 18 Aug 2017 23:19:42 GMT
VOLUME [/var/lib/ghost]
# Fri, 18 Aug 2017 23:19:42 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 18 Aug 2017 23:19:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 18 Aug 2017 23:19:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Aug 2017 23:19:44 GMT
EXPOSE 2368/tcp
# Fri, 18 Aug 2017 23:19:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87a0ce8025aa5ba8743343c33c35847853b46077c54c72cac1236c30397fd0`  
		Last Modified: Fri, 18 Aug 2017 20:40:37 GMT  
		Size: 14.3 MB (14271627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc62209fe8612b63346724bdcd5908f25382680055ed5d9eda9a368e83ae9a0b`  
		Last Modified: Fri, 18 Aug 2017 20:40:33 GMT  
		Size: 938.3 KB (938333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc2dc652cc9f9c1f8cc47d1e0ac1994eefdff2edce41fc924e211135865c1de`  
		Last Modified: Fri, 18 Aug 2017 23:21:52 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b519f4e068af593571e50616aac351513a3230e2cb1318bd417c6a0ba8547f06`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab1de3d40a2da89b3a6ce890a4671ad644ab7e1b43391d5d78f1fdf16160c08`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790902305fa436c03a5127aac857fb7ae6c71cc132f6b2a0dd0d6cdbebf2ab1c`  
		Last Modified: Fri, 18 Aug 2017 23:21:56 GMT  
		Size: 24.7 MB (24671888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15177171af306a737bce24938f76b53c7f9bba8a2f99001fc909c145d87f3914`  
		Last Modified: Fri, 18 Aug 2017 23:21:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726da05aba5d9a0a4d3e231d0e915fac9d2e5d8146abee3c7439539cc389d5e`  
		Last Modified: Fri, 18 Aug 2017 23:21:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d69a18e1056213b4dc26a8c57ce4361538f203942c70315265b83dc25415e7d`  
		Last Modified: Fri, 18 Aug 2017 23:21:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11-alpine`

```console
$ docker pull ghost@sha256:0639b85172494aae7a8720bbb7bbcebd84c3d7dccad69d100e14854bfe7018a4
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44556576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95155d2dafacb94566db3e25d5b93617cba4c788e5da5c497c1d8b11c29be4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:51:43 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
WORKDIR /usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 01 Aug 2017 23:52:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 01 Aug 2017 23:52:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 01 Aug 2017 23:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 01 Aug 2017 23:52:31 GMT
VOLUME [/var/lib/ghost]
# Tue, 01 Aug 2017 23:52:31 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:52:32 GMT
EXPOSE 2368/tcp
# Tue, 01 Aug 2017 23:52:32 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7509b5607a318f7dd3e483aaab6525cd4309628795b0101dd15d018aed0de19`  
		Last Modified: Tue, 01 Aug 2017 23:58:30 GMT  
		Size: 1.3 MB (1340391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ceba35cb3b3aa1ed41fb5f16cdc2dc3d2b0fde28aaa8a9373e5e17b4366e58`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4481d730adbaaa4c1cc9f925d6effae132889030d3765cc2b0f47982d538af4`  
		Last Modified: Tue, 01 Aug 2017 23:58:42 GMT  
		Size: 24.7 MB (24656057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bf8956705a2f36b770d20c35c5b18a77833fdc76604413390887bd12601313`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb5def3e54fcdb206777914a24721ebbc342a53192d168e0e90decd59579cb4`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:0639b85172494aae7a8720bbb7bbcebd84c3d7dccad69d100e14854bfe7018a4
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44556576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95155d2dafacb94566db3e25d5b93617cba4c788e5da5c497c1d8b11c29be4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:51:43 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
WORKDIR /usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 01 Aug 2017 23:52:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 01 Aug 2017 23:52:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 01 Aug 2017 23:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 01 Aug 2017 23:52:31 GMT
VOLUME [/var/lib/ghost]
# Tue, 01 Aug 2017 23:52:31 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:52:32 GMT
EXPOSE 2368/tcp
# Tue, 01 Aug 2017 23:52:32 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7509b5607a318f7dd3e483aaab6525cd4309628795b0101dd15d018aed0de19`  
		Last Modified: Tue, 01 Aug 2017 23:58:30 GMT  
		Size: 1.3 MB (1340391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ceba35cb3b3aa1ed41fb5f16cdc2dc3d2b0fde28aaa8a9373e5e17b4366e58`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4481d730adbaaa4c1cc9f925d6effae132889030d3765cc2b0f47982d538af4`  
		Last Modified: Tue, 01 Aug 2017 23:58:42 GMT  
		Size: 24.7 MB (24656057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bf8956705a2f36b770d20c35c5b18a77833fdc76604413390887bd12601313`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb5def3e54fcdb206777914a24721ebbc342a53192d168e0e90decd59579cb4`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:0639b85172494aae7a8720bbb7bbcebd84c3d7dccad69d100e14854bfe7018a4
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44556576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95155d2dafacb94566db3e25d5b93617cba4c788e5da5c497c1d8b11c29be4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 20:50:34 GMT
ENV NODE_VERSION=6.11.2
# Tue, 01 Aug 2017 21:02:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 01 Aug 2017 21:02:02 GMT
ENV YARN_VERSION=0.27.5
# Tue, 01 Aug 2017 21:02:10 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 01 Aug 2017 21:02:11 GMT
CMD ["node"]
# Tue, 01 Aug 2017 23:43:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 01 Aug 2017 23:51:43 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
WORKDIR /usr/src/ghost
# Tue, 01 Aug 2017 23:51:44 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 01 Aug 2017 23:52:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 01 Aug 2017 23:52:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 01 Aug 2017 23:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 01 Aug 2017 23:52:31 GMT
VOLUME [/var/lib/ghost]
# Tue, 01 Aug 2017 23:52:31 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:52:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:52:32 GMT
EXPOSE 2368/tcp
# Tue, 01 Aug 2017 23:52:32 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34086f9c7836219111f7388da95c767e2703de45638cf5085c771b7453c9ea1`  
		Last Modified: Tue, 01 Aug 2017 21:13:40 GMT  
		Size: 15.2 MB (15220558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638a7193e6c9240639047d63213e317eeb00e36bedc682a8ee5f8b9f5d3ae451`  
		Last Modified: Tue, 01 Aug 2017 21:13:36 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b7e3e8857479957adcfe1b52629e46b5ad0e1d1e15d7905aea44124522d0a8`  
		Last Modified: Tue, 01 Aug 2017 23:56:17 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7509b5607a318f7dd3e483aaab6525cd4309628795b0101dd15d018aed0de19`  
		Last Modified: Tue, 01 Aug 2017 23:58:30 GMT  
		Size: 1.3 MB (1340391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ceba35cb3b3aa1ed41fb5f16cdc2dc3d2b0fde28aaa8a9373e5e17b4366e58`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4481d730adbaaa4c1cc9f925d6effae132889030d3765cc2b0f47982d538af4`  
		Last Modified: Tue, 01 Aug 2017 23:58:42 GMT  
		Size: 24.7 MB (24656057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bf8956705a2f36b770d20c35c5b18a77833fdc76604413390887bd12601313`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb5def3e54fcdb206777914a24721ebbc342a53192d168e0e90decd59579cb4`  
		Last Modified: Tue, 01 Aug 2017 23:58:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
