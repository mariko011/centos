<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1.5.1`](#ghost151)
-	[`ghost:1.5`](#ghost15)
-	[`ghost:1`](#ghost1)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:1.5.1-alpine`](#ghost151-alpine)
-	[`ghost:1.5-alpine`](#ghost15-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)

## `ghost:1.5.1`

```console
$ docker pull ghost@sha256:7d741f89087baa9f9656acc283b376d63385d0c4e7b208fdee8b57dca8cccda1
```

-	Platforms:
	-	linux; amd64

### `ghost:1.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316800581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44646c6794c3fb3dca50f2328e7cc79ae39bb74d0de2a5a44d587fc9bc19ddd`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:58:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:58:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:58:43 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 09 Aug 2017 20:58:48 GMT
ENV NODE_ENV=production
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_VERSION=1.5.1
# Wed, 09 Aug 2017 20:59:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 09 Aug 2017 21:03:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 09 Aug 2017 21:03:19 GMT
WORKDIR /var/lib/ghost
# Wed, 09 Aug 2017 21:03:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 09 Aug 2017 21:03:20 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 09 Aug 2017 21:03:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 21:03:24 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 21:03:24 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e670e0bbef3afbf9bdeb475d38df404cd8aa458946f746728539150f823f205`  
		Last Modified: Wed, 09 Aug 2017 21:05:08 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aad050bd4ee3dccf4a35bb286f511afa91fe437aa05ee9071554b00ae112bb`  
		Last Modified: Wed, 09 Aug 2017 21:05:35 GMT  
		Size: 118.4 MB (118396859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6de9cf862d5b68bb74f1a796fc6ec3c683c40dfc4d7de07b520799a201759`  
		Last Modified: Wed, 09 Aug 2017 21:05:32 GMT  
		Size: 110.4 MB (110381917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3128ab9f4c5c5ff8141fab0b5374f8e01339add13ab231180382dbb504567`  
		Last Modified: Wed, 09 Aug 2017 21:05:07 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.5`

```console
$ docker pull ghost@sha256:7d741f89087baa9f9656acc283b376d63385d0c4e7b208fdee8b57dca8cccda1
```

-	Platforms:
	-	linux; amd64

### `ghost:1.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316800581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44646c6794c3fb3dca50f2328e7cc79ae39bb74d0de2a5a44d587fc9bc19ddd`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:58:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:58:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:58:43 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 09 Aug 2017 20:58:48 GMT
ENV NODE_ENV=production
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_VERSION=1.5.1
# Wed, 09 Aug 2017 20:59:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 09 Aug 2017 21:03:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 09 Aug 2017 21:03:19 GMT
WORKDIR /var/lib/ghost
# Wed, 09 Aug 2017 21:03:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 09 Aug 2017 21:03:20 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 09 Aug 2017 21:03:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 21:03:24 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 21:03:24 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e670e0bbef3afbf9bdeb475d38df404cd8aa458946f746728539150f823f205`  
		Last Modified: Wed, 09 Aug 2017 21:05:08 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aad050bd4ee3dccf4a35bb286f511afa91fe437aa05ee9071554b00ae112bb`  
		Last Modified: Wed, 09 Aug 2017 21:05:35 GMT  
		Size: 118.4 MB (118396859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6de9cf862d5b68bb74f1a796fc6ec3c683c40dfc4d7de07b520799a201759`  
		Last Modified: Wed, 09 Aug 2017 21:05:32 GMT  
		Size: 110.4 MB (110381917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3128ab9f4c5c5ff8141fab0b5374f8e01339add13ab231180382dbb504567`  
		Last Modified: Wed, 09 Aug 2017 21:05:07 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:7d741f89087baa9f9656acc283b376d63385d0c4e7b208fdee8b57dca8cccda1
```

-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316800581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44646c6794c3fb3dca50f2328e7cc79ae39bb74d0de2a5a44d587fc9bc19ddd`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:58:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:58:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:58:43 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 09 Aug 2017 20:58:48 GMT
ENV NODE_ENV=production
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_VERSION=1.5.1
# Wed, 09 Aug 2017 20:59:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 09 Aug 2017 21:03:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 09 Aug 2017 21:03:19 GMT
WORKDIR /var/lib/ghost
# Wed, 09 Aug 2017 21:03:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 09 Aug 2017 21:03:20 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 09 Aug 2017 21:03:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 21:03:24 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 21:03:24 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e670e0bbef3afbf9bdeb475d38df404cd8aa458946f746728539150f823f205`  
		Last Modified: Wed, 09 Aug 2017 21:05:08 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aad050bd4ee3dccf4a35bb286f511afa91fe437aa05ee9071554b00ae112bb`  
		Last Modified: Wed, 09 Aug 2017 21:05:35 GMT  
		Size: 118.4 MB (118396859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6de9cf862d5b68bb74f1a796fc6ec3c683c40dfc4d7de07b520799a201759`  
		Last Modified: Wed, 09 Aug 2017 21:05:32 GMT  
		Size: 110.4 MB (110381917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3128ab9f4c5c5ff8141fab0b5374f8e01339add13ab231180382dbb504567`  
		Last Modified: Wed, 09 Aug 2017 21:05:07 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:7d741f89087baa9f9656acc283b376d63385d0c4e7b208fdee8b57dca8cccda1
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316800581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44646c6794c3fb3dca50f2328e7cc79ae39bb74d0de2a5a44d587fc9bc19ddd`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:58:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:58:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:58:43 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 09 Aug 2017 20:58:48 GMT
ENV NODE_ENV=production
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Wed, 09 Aug 2017 20:58:48 GMT
ENV GHOST_VERSION=1.5.1
# Wed, 09 Aug 2017 20:59:36 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 09 Aug 2017 21:02:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 09 Aug 2017 21:03:14 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 09 Aug 2017 21:03:19 GMT
WORKDIR /var/lib/ghost
# Wed, 09 Aug 2017 21:03:20 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 09 Aug 2017 21:03:20 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 09 Aug 2017 21:03:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 21:03:24 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 21:03:24 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e670e0bbef3afbf9bdeb475d38df404cd8aa458946f746728539150f823f205`  
		Last Modified: Wed, 09 Aug 2017 21:05:08 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aad050bd4ee3dccf4a35bb286f511afa91fe437aa05ee9071554b00ae112bb`  
		Last Modified: Wed, 09 Aug 2017 21:05:35 GMT  
		Size: 118.4 MB (118396859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6de9cf862d5b68bb74f1a796fc6ec3c683c40dfc4d7de07b520799a201759`  
		Last Modified: Wed, 09 Aug 2017 21:05:32 GMT  
		Size: 110.4 MB (110381917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c3128ab9f4c5c5ff8141fab0b5374f8e01339add13ab231180382dbb504567`  
		Last Modified: Wed, 09 Aug 2017 21:05:07 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.5.1-alpine`

```console
$ docker pull ghost@sha256:80ff906a3f5797245d9a8c69631d73c98c18647344885b75b2373f12696d9270
```

-	Platforms:
	-	linux; amd64

### `ghost:1.5.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248435154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecd56e027caa0a37d00b2d30f6401c3bd1689de8a8591349ea2f858bf54d7cd`
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
# Thu, 03 Aug 2017 23:12:41 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Tue, 08 Aug 2017 17:54:38 GMT
ENV GHOST_VERSION=1.5.1
# Tue, 08 Aug 2017 17:55:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 08 Aug 2017 17:56:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 08 Aug 2017 17:56:03 GMT
WORKDIR /var/lib/ghost
# Tue, 08 Aug 2017 17:56:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 08 Aug 2017 17:56:03 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 08 Aug 2017 17:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 17:56:04 GMT
EXPOSE 2368/tcp
# Tue, 08 Aug 2017 17:56:04 GMT
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
	-	`sha256:e03aa40a708cb735534cfc961b770e4d1be4f933b0f72418d13538f0987a803c`  
		Last Modified: Tue, 08 Aug 2017 18:18:02 GMT  
		Size: 118.4 MB (118394653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30aaecf1bca69a4b71f314b4312b4966ea0d758a24d5625101087887209c98`  
		Last Modified: Tue, 08 Aug 2017 18:18:26 GMT  
		Size: 110.4 MB (110381276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06554d92268c2afa804cf73998506b0903c37a9b64749b779d9bc15d30ec1487`  
		Last Modified: Tue, 08 Aug 2017 18:17:13 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.5-alpine`

```console
$ docker pull ghost@sha256:80ff906a3f5797245d9a8c69631d73c98c18647344885b75b2373f12696d9270
```

-	Platforms:
	-	linux; amd64

### `ghost:1.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248435154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecd56e027caa0a37d00b2d30f6401c3bd1689de8a8591349ea2f858bf54d7cd`
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
# Thu, 03 Aug 2017 23:12:41 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Tue, 08 Aug 2017 17:54:38 GMT
ENV GHOST_VERSION=1.5.1
# Tue, 08 Aug 2017 17:55:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 08 Aug 2017 17:56:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 08 Aug 2017 17:56:03 GMT
WORKDIR /var/lib/ghost
# Tue, 08 Aug 2017 17:56:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 08 Aug 2017 17:56:03 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 08 Aug 2017 17:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 17:56:04 GMT
EXPOSE 2368/tcp
# Tue, 08 Aug 2017 17:56:04 GMT
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
	-	`sha256:e03aa40a708cb735534cfc961b770e4d1be4f933b0f72418d13538f0987a803c`  
		Last Modified: Tue, 08 Aug 2017 18:18:02 GMT  
		Size: 118.4 MB (118394653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30aaecf1bca69a4b71f314b4312b4966ea0d758a24d5625101087887209c98`  
		Last Modified: Tue, 08 Aug 2017 18:18:26 GMT  
		Size: 110.4 MB (110381276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06554d92268c2afa804cf73998506b0903c37a9b64749b779d9bc15d30ec1487`  
		Last Modified: Tue, 08 Aug 2017 18:17:13 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:80ff906a3f5797245d9a8c69631d73c98c18647344885b75b2373f12696d9270
```

-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248435154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecd56e027caa0a37d00b2d30f6401c3bd1689de8a8591349ea2f858bf54d7cd`
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
# Thu, 03 Aug 2017 23:12:41 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Tue, 08 Aug 2017 17:54:38 GMT
ENV GHOST_VERSION=1.5.1
# Tue, 08 Aug 2017 17:55:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 08 Aug 2017 17:56:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 08 Aug 2017 17:56:03 GMT
WORKDIR /var/lib/ghost
# Tue, 08 Aug 2017 17:56:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 08 Aug 2017 17:56:03 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 08 Aug 2017 17:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 17:56:04 GMT
EXPOSE 2368/tcp
# Tue, 08 Aug 2017 17:56:04 GMT
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
	-	`sha256:e03aa40a708cb735534cfc961b770e4d1be4f933b0f72418d13538f0987a803c`  
		Last Modified: Tue, 08 Aug 2017 18:18:02 GMT  
		Size: 118.4 MB (118394653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30aaecf1bca69a4b71f314b4312b4966ea0d758a24d5625101087887209c98`  
		Last Modified: Tue, 08 Aug 2017 18:18:26 GMT  
		Size: 110.4 MB (110381276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06554d92268c2afa804cf73998506b0903c37a9b64749b779d9bc15d30ec1487`  
		Last Modified: Tue, 08 Aug 2017 18:17:13 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:80ff906a3f5797245d9a8c69631d73c98c18647344885b75b2373f12696d9270
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248435154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecd56e027caa0a37d00b2d30f6401c3bd1689de8a8591349ea2f858bf54d7cd`
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
# Thu, 03 Aug 2017 23:12:41 GMT
ENV GHOST_CLI_VERSION=1.0.3
# Tue, 08 Aug 2017 17:54:38 GMT
ENV GHOST_VERSION=1.5.1
# Tue, 08 Aug 2017 17:55:21 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 08 Aug 2017 17:55:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 08 Aug 2017 17:56:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 08 Aug 2017 17:56:03 GMT
WORKDIR /var/lib/ghost
# Tue, 08 Aug 2017 17:56:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 08 Aug 2017 17:56:03 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 08 Aug 2017 17:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 17:56:04 GMT
EXPOSE 2368/tcp
# Tue, 08 Aug 2017 17:56:04 GMT
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
	-	`sha256:e03aa40a708cb735534cfc961b770e4d1be4f933b0f72418d13538f0987a803c`  
		Last Modified: Tue, 08 Aug 2017 18:18:02 GMT  
		Size: 118.4 MB (118394653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30aaecf1bca69a4b71f314b4312b4966ea0d758a24d5625101087887209c98`  
		Last Modified: Tue, 08 Aug 2017 18:18:26 GMT  
		Size: 110.4 MB (110381276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06554d92268c2afa804cf73998506b0903c37a9b64749b779d9bc15d30ec1487`  
		Last Modified: Tue, 08 Aug 2017 18:17:13 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:cd27c160978e9a23487a3fac55467433f29be89cf1c9296de4a9b619df1edfec
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69cf7163932b13eca6d5f28ae4546ba75695bc779add12eba6c695bb0303a69`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:55:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 09 Aug 2017 20:55:37 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:55:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
WORKDIR /usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 09 Aug 2017 20:57:09 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 09 Aug 2017 20:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 09 Aug 2017 20:58:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 09 Aug 2017 20:58:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 09 Aug 2017 20:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 09 Aug 2017 20:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Aug 2017 20:58:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 20:58:33 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 20:58:34 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c7154d589ab974f1cba4fd04c5e9426a36686b3dde9ce1aa1f37b1b3766b67`  
		Last Modified: Wed, 09 Aug 2017 21:03:41 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be642d11a32717608a63745ac5b72ae4c7b6054e7f3ee67ec556e1c13af531`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e5db96542daff2f06ca37617a8a739b8e7352a59614aa9c8b5d8f0ed1e877f`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aabbd5d3617c1afffc932849aace307769bbd8df59db9045c693f0e045ff23c`  
		Last Modified: Wed, 09 Aug 2017 21:03:53 GMT  
		Size: 24.7 MB (24672510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b4787d3a7195cd7727dc8273ad163fbebdd7ecb854cb8125e22999638cf66`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc025a76953b4477eceaceafc055c2a9d6663e8eb043fdf5a2f7208ea39ddeb7`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfa8381525ecacbfb2808effaa3612795817b46df8ab29095b4d8c255a865de`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:cd27c160978e9a23487a3fac55467433f29be89cf1c9296de4a9b619df1edfec
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69cf7163932b13eca6d5f28ae4546ba75695bc779add12eba6c695bb0303a69`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:55:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 09 Aug 2017 20:55:37 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:55:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
WORKDIR /usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 09 Aug 2017 20:57:09 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 09 Aug 2017 20:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 09 Aug 2017 20:58:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 09 Aug 2017 20:58:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 09 Aug 2017 20:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 09 Aug 2017 20:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Aug 2017 20:58:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 20:58:33 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 20:58:34 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c7154d589ab974f1cba4fd04c5e9426a36686b3dde9ce1aa1f37b1b3766b67`  
		Last Modified: Wed, 09 Aug 2017 21:03:41 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be642d11a32717608a63745ac5b72ae4c7b6054e7f3ee67ec556e1c13af531`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e5db96542daff2f06ca37617a8a739b8e7352a59614aa9c8b5d8f0ed1e877f`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aabbd5d3617c1afffc932849aace307769bbd8df59db9045c693f0e045ff23c`  
		Last Modified: Wed, 09 Aug 2017 21:03:53 GMT  
		Size: 24.7 MB (24672510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b4787d3a7195cd7727dc8273ad163fbebdd7ecb854cb8125e22999638cf66`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc025a76953b4477eceaceafc055c2a9d6663e8eb043fdf5a2f7208ea39ddeb7`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfa8381525ecacbfb2808effaa3612795817b46df8ab29095b4d8c255a865de`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:cd27c160978e9a23487a3fac55467433f29be89cf1c9296de4a9b619df1edfec
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69cf7163932b13eca6d5f28ae4546ba75695bc779add12eba6c695bb0303a69`
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
# Wed, 09 Aug 2017 19:24:21 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 09 Aug 2017 19:24:22 GMT
ENV YARN_VERSION=0.27.5
# Wed, 09 Aug 2017 19:24:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 09 Aug 2017 19:24:25 GMT
CMD ["node"]
# Wed, 09 Aug 2017 20:55:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 09 Aug 2017 20:55:37 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Aug 2017 20:55:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
WORKDIR /usr/src/ghost
# Wed, 09 Aug 2017 20:55:41 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 09 Aug 2017 20:57:09 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 09 Aug 2017 20:58:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 09 Aug 2017 20:58:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 09 Aug 2017 20:58:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 09 Aug 2017 20:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 09 Aug 2017 20:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 09 Aug 2017 20:58:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 20:58:33 GMT
EXPOSE 2368/tcp
# Wed, 09 Aug 2017 20:58:34 GMT
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
	-	`sha256:e16f9635110eff14efb15bd6f3e572581988c51f2be86b30381d5535c402e7ff`  
		Last Modified: Wed, 09 Aug 2017 19:34:25 GMT  
		Size: 14.3 MB (14271617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ce7d61369b5b4c848e3c50222d99d378c5adac205fea5c153939487c13e139`  
		Last Modified: Wed, 09 Aug 2017 19:34:20 GMT  
		Size: 938.3 KB (938338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c7154d589ab974f1cba4fd04c5e9426a36686b3dde9ce1aa1f37b1b3766b67`  
		Last Modified: Wed, 09 Aug 2017 21:03:41 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be642d11a32717608a63745ac5b72ae4c7b6054e7f3ee67ec556e1c13af531`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e5db96542daff2f06ca37617a8a739b8e7352a59614aa9c8b5d8f0ed1e877f`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aabbd5d3617c1afffc932849aace307769bbd8df59db9045c693f0e045ff23c`  
		Last Modified: Wed, 09 Aug 2017 21:03:53 GMT  
		Size: 24.7 MB (24672510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b4787d3a7195cd7727dc8273ad163fbebdd7ecb854cb8125e22999638cf66`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc025a76953b4477eceaceafc055c2a9d6663e8eb043fdf5a2f7208ea39ddeb7`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfa8381525ecacbfb2808effaa3612795817b46df8ab29095b4d8c255a865de`  
		Last Modified: Wed, 09 Aug 2017 21:03:38 GMT  
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
