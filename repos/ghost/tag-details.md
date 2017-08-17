<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1.6.1`](#ghost161)
-	[`ghost:1.6`](#ghost16)
-	[`ghost:1`](#ghost1)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:1.6.1-alpine`](#ghost161-alpine)
-	[`ghost:1.6-alpine`](#ghost16-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)

## `ghost:1.6.1`

```console
$ docker pull ghost@sha256:b6edfa1b6836d9005e46bea63de6f72d8fedc0b93a38b7ec7a8e6d547527f343
```

-	Platforms:
	-	linux; amd64

### `ghost:1.6.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283378755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b59a4a8aca6cbecad4ddf61f8c9f358d946269a409a93796bc735700d710c0`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:28:08 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:28:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NODE_ENV=production
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 17:53:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 17:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 17:54:59 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 17:55:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 17:55:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 17 Aug 2017 17:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 17:55:01 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 17:55:01 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f328c13cd3bdfb22e105e444eb7bd9776b89acc1ca17b2c960717603102bbf`  
		Last Modified: Wed, 16 Aug 2017 00:35:00 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef35b5420eb4dd4d2ca50ce266b92effacc374c0b09348a0d7b348e2edb98e3c`  
		Last Modified: Thu, 17 Aug 2017 18:12:15 GMT  
		Size: 86.7 MB (86697526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258cd33823dfdade7a1b4c086d5179eed0e5b3fe83f2146d58b86eb659713ac8`  
		Last Modified: Thu, 17 Aug 2017 18:12:48 GMT  
		Size: 108.7 MB (108659425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f211896458fd8fc824578776e78f3a908cdbfc44d99d8b3d67d7503d881baee0`  
		Last Modified: Thu, 17 Aug 2017 18:11:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.6`

```console
$ docker pull ghost@sha256:b6edfa1b6836d9005e46bea63de6f72d8fedc0b93a38b7ec7a8e6d547527f343
```

-	Platforms:
	-	linux; amd64

### `ghost:1.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283378755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b59a4a8aca6cbecad4ddf61f8c9f358d946269a409a93796bc735700d710c0`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:28:08 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:28:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NODE_ENV=production
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 17:53:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 17:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 17:54:59 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 17:55:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 17:55:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 17 Aug 2017 17:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 17:55:01 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 17:55:01 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f328c13cd3bdfb22e105e444eb7bd9776b89acc1ca17b2c960717603102bbf`  
		Last Modified: Wed, 16 Aug 2017 00:35:00 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef35b5420eb4dd4d2ca50ce266b92effacc374c0b09348a0d7b348e2edb98e3c`  
		Last Modified: Thu, 17 Aug 2017 18:12:15 GMT  
		Size: 86.7 MB (86697526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258cd33823dfdade7a1b4c086d5179eed0e5b3fe83f2146d58b86eb659713ac8`  
		Last Modified: Thu, 17 Aug 2017 18:12:48 GMT  
		Size: 108.7 MB (108659425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f211896458fd8fc824578776e78f3a908cdbfc44d99d8b3d67d7503d881baee0`  
		Last Modified: Thu, 17 Aug 2017 18:11:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:b6edfa1b6836d9005e46bea63de6f72d8fedc0b93a38b7ec7a8e6d547527f343
```

-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283378755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b59a4a8aca6cbecad4ddf61f8c9f358d946269a409a93796bc735700d710c0`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:28:08 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:28:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NODE_ENV=production
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 17:53:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 17:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 17:54:59 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 17:55:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 17:55:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 17 Aug 2017 17:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 17:55:01 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 17:55:01 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f328c13cd3bdfb22e105e444eb7bd9776b89acc1ca17b2c960717603102bbf`  
		Last Modified: Wed, 16 Aug 2017 00:35:00 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef35b5420eb4dd4d2ca50ce266b92effacc374c0b09348a0d7b348e2edb98e3c`  
		Last Modified: Thu, 17 Aug 2017 18:12:15 GMT  
		Size: 86.7 MB (86697526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258cd33823dfdade7a1b4c086d5179eed0e5b3fe83f2146d58b86eb659713ac8`  
		Last Modified: Thu, 17 Aug 2017 18:12:48 GMT  
		Size: 108.7 MB (108659425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f211896458fd8fc824578776e78f3a908cdbfc44d99d8b3d67d7503d881baee0`  
		Last Modified: Thu, 17 Aug 2017 18:11:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:b6edfa1b6836d9005e46bea63de6f72d8fedc0b93a38b7ec7a8e6d547527f343
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283378755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b59a4a8aca6cbecad4ddf61f8c9f358d946269a409a93796bc735700d710c0`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:28:08 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:28:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NODE_ENV=production
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 17:53:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 17:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 17:54:59 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 17:55:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 17:55:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 17 Aug 2017 17:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 17:55:01 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 17:55:01 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f328c13cd3bdfb22e105e444eb7bd9776b89acc1ca17b2c960717603102bbf`  
		Last Modified: Wed, 16 Aug 2017 00:35:00 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef35b5420eb4dd4d2ca50ce266b92effacc374c0b09348a0d7b348e2edb98e3c`  
		Last Modified: Thu, 17 Aug 2017 18:12:15 GMT  
		Size: 86.7 MB (86697526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258cd33823dfdade7a1b4c086d5179eed0e5b3fe83f2146d58b86eb659713ac8`  
		Last Modified: Thu, 17 Aug 2017 18:12:48 GMT  
		Size: 108.7 MB (108659425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f211896458fd8fc824578776e78f3a908cdbfc44d99d8b3d67d7503d881baee0`  
		Last Modified: Thu, 17 Aug 2017 18:11:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.6.1-alpine`

```console
$ docker pull ghost@sha256:887158a2eddef468ea91d95567bfe300b08b725b6c089c5c3d742db914bb5bf9
```

-	Platforms:
	-	linux; amd64

### `ghost:1.6.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215017832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c28f78b8bfe96487b81dc1b577ce475359fa363aa64204dbd8c7bbc435271c`
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
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 18:00:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 18:05:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 18:05:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 18:07:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 18:10:31 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 18:10:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 18:10:32 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 17 Aug 2017 18:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:11:10 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 18:11:10 GMT
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
	-	`sha256:2293e16d2c948cf5b8c22473e775b421ec9c46dbf23cfb1b5249785693b6deb5`  
		Last Modified: Thu, 17 Aug 2017 18:14:39 GMT  
		Size: 86.7 MB (86697027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206cdc0b153bb7b1373d834153bdd86f2715c0d36acc588cc732ba3fd6c0a56f`  
		Last Modified: Thu, 17 Aug 2017 18:15:20 GMT  
		Size: 108.7 MB (108661579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda00676196f722f37d48cc0795aab21b55890fae290721fdf6089f2549892d7`  
		Last Modified: Thu, 17 Aug 2017 18:13:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.6-alpine`

```console
$ docker pull ghost@sha256:887158a2eddef468ea91d95567bfe300b08b725b6c089c5c3d742db914bb5bf9
```

-	Platforms:
	-	linux; amd64

### `ghost:1.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215017832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c28f78b8bfe96487b81dc1b577ce475359fa363aa64204dbd8c7bbc435271c`
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
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 18:00:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 18:05:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 18:05:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 18:07:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 18:10:31 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 18:10:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 18:10:32 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 17 Aug 2017 18:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:11:10 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 18:11:10 GMT
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
	-	`sha256:2293e16d2c948cf5b8c22473e775b421ec9c46dbf23cfb1b5249785693b6deb5`  
		Last Modified: Thu, 17 Aug 2017 18:14:39 GMT  
		Size: 86.7 MB (86697027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206cdc0b153bb7b1373d834153bdd86f2715c0d36acc588cc732ba3fd6c0a56f`  
		Last Modified: Thu, 17 Aug 2017 18:15:20 GMT  
		Size: 108.7 MB (108661579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda00676196f722f37d48cc0795aab21b55890fae290721fdf6089f2549892d7`  
		Last Modified: Thu, 17 Aug 2017 18:13:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:887158a2eddef468ea91d95567bfe300b08b725b6c089c5c3d742db914bb5bf9
```

-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215017832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c28f78b8bfe96487b81dc1b577ce475359fa363aa64204dbd8c7bbc435271c`
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
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 18:00:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 18:05:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 18:05:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 18:07:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 18:10:31 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 18:10:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 18:10:32 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 17 Aug 2017 18:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:11:10 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 18:11:10 GMT
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
	-	`sha256:2293e16d2c948cf5b8c22473e775b421ec9c46dbf23cfb1b5249785693b6deb5`  
		Last Modified: Thu, 17 Aug 2017 18:14:39 GMT  
		Size: 86.7 MB (86697027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206cdc0b153bb7b1373d834153bdd86f2715c0d36acc588cc732ba3fd6c0a56f`  
		Last Modified: Thu, 17 Aug 2017 18:15:20 GMT  
		Size: 108.7 MB (108661579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda00676196f722f37d48cc0795aab21b55890fae290721fdf6089f2549892d7`  
		Last Modified: Thu, 17 Aug 2017 18:13:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:887158a2eddef468ea91d95567bfe300b08b725b6c089c5c3d742db914bb5bf9
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215017832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c28f78b8bfe96487b81dc1b577ce475359fa363aa64204dbd8c7bbc435271c`
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
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:59:49 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 18:00:46 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 18:05:24 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 18:05:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 18:07:10 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 18:10:31 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 18:10:31 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 18:10:32 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 17 Aug 2017 18:11:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:11:10 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 18:11:10 GMT
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
	-	`sha256:2293e16d2c948cf5b8c22473e775b421ec9c46dbf23cfb1b5249785693b6deb5`  
		Last Modified: Thu, 17 Aug 2017 18:14:39 GMT  
		Size: 86.7 MB (86697027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206cdc0b153bb7b1373d834153bdd86f2715c0d36acc588cc732ba3fd6c0a56f`  
		Last Modified: Thu, 17 Aug 2017 18:15:20 GMT  
		Size: 108.7 MB (108661579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda00676196f722f37d48cc0795aab21b55890fae290721fdf6089f2549892d7`  
		Last Modified: Thu, 17 Aug 2017 18:13:54 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:69a2513edec805439080bdbb940e9f797c7e694e5d3c60ea0004b5847253f946
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661ae4535f450bcb13496873a532b6882ebd5f1823b1a10fd8d1a3ed3532a8a3`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:26:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 16 Aug 2017 00:26:31 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:26:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
WORKDIR /usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 16 Aug 2017 00:27:58 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 16 Aug 2017 00:27:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 16 Aug 2017 00:28:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 16 Aug 2017 00:28:01 GMT
VOLUME [/var/lib/ghost]
# Wed, 16 Aug 2017 00:28:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 16 Aug 2017 00:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 16 Aug 2017 00:28:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Aug 2017 00:28:02 GMT
EXPOSE 2368/tcp
# Wed, 16 Aug 2017 00:28:03 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780ba5e6548aa648a1a4764f81c39d7520b2a751a0b0317dbb7bcb9b0cedc791`  
		Last Modified: Wed, 16 Aug 2017 00:33:59 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be359f0d557595e5e2a6ea400bf21f42f2ae2836cf195413c4b50edf1528e4f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215269a280011f093f4f0707b72d2edec0ab214af5f9b5a47cc96384a514c6d5`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd6e61e42cecd507d5ffa197fe0a320e9225ab5e0abab914ca2bb35c324add5`  
		Last Modified: Wed, 16 Aug 2017 00:34:11 GMT  
		Size: 24.7 MB (24672641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5323429dbbbbef6355a921d4c90ae33434aa2744611f42054e72cf2fd8183f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616111a5e38a8776ae2ae7c9a10beba08caab4004e9e936ae69c6aabd8b59582`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fad2531ef2b160a7a897dfc89f1cb487eae0563b7f7de63fc329ab73a679f51`  
		Last Modified: Wed, 16 Aug 2017 00:33:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:69a2513edec805439080bdbb940e9f797c7e694e5d3c60ea0004b5847253f946
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661ae4535f450bcb13496873a532b6882ebd5f1823b1a10fd8d1a3ed3532a8a3`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:26:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 16 Aug 2017 00:26:31 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:26:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
WORKDIR /usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 16 Aug 2017 00:27:58 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 16 Aug 2017 00:27:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 16 Aug 2017 00:28:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 16 Aug 2017 00:28:01 GMT
VOLUME [/var/lib/ghost]
# Wed, 16 Aug 2017 00:28:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 16 Aug 2017 00:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 16 Aug 2017 00:28:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Aug 2017 00:28:02 GMT
EXPOSE 2368/tcp
# Wed, 16 Aug 2017 00:28:03 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780ba5e6548aa648a1a4764f81c39d7520b2a751a0b0317dbb7bcb9b0cedc791`  
		Last Modified: Wed, 16 Aug 2017 00:33:59 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be359f0d557595e5e2a6ea400bf21f42f2ae2836cf195413c4b50edf1528e4f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215269a280011f093f4f0707b72d2edec0ab214af5f9b5a47cc96384a514c6d5`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd6e61e42cecd507d5ffa197fe0a320e9225ab5e0abab914ca2bb35c324add5`  
		Last Modified: Wed, 16 Aug 2017 00:34:11 GMT  
		Size: 24.7 MB (24672641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5323429dbbbbef6355a921d4c90ae33434aa2744611f42054e72cf2fd8183f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616111a5e38a8776ae2ae7c9a10beba08caab4004e9e936ae69c6aabd8b59582`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fad2531ef2b160a7a897dfc89f1cb487eae0563b7f7de63fc329ab73a679f51`  
		Last Modified: Wed, 16 Aug 2017 00:33:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:69a2513edec805439080bdbb940e9f797c7e694e5d3c60ea0004b5847253f946
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112699379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661ae4535f450bcb13496873a532b6882ebd5f1823b1a10fd8d1a3ed3532a8a3`
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
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:26:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 16 Aug 2017 00:26:31 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:26:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
WORKDIR /usr/src/ghost
# Wed, 16 Aug 2017 00:26:37 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 16 Aug 2017 00:27:58 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 16 Aug 2017 00:27:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 16 Aug 2017 00:28:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 16 Aug 2017 00:28:01 GMT
VOLUME [/var/lib/ghost]
# Wed, 16 Aug 2017 00:28:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 16 Aug 2017 00:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 16 Aug 2017 00:28:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Aug 2017 00:28:02 GMT
EXPOSE 2368/tcp
# Wed, 16 Aug 2017 00:28:03 GMT
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
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780ba5e6548aa648a1a4764f81c39d7520b2a751a0b0317dbb7bcb9b0cedc791`  
		Last Modified: Wed, 16 Aug 2017 00:33:59 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be359f0d557595e5e2a6ea400bf21f42f2ae2836cf195413c4b50edf1528e4f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215269a280011f093f4f0707b72d2edec0ab214af5f9b5a47cc96384a514c6d5`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd6e61e42cecd507d5ffa197fe0a320e9225ab5e0abab914ca2bb35c324add5`  
		Last Modified: Wed, 16 Aug 2017 00:34:11 GMT  
		Size: 24.7 MB (24672641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5323429dbbbbef6355a921d4c90ae33434aa2744611f42054e72cf2fd8183f`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616111a5e38a8776ae2ae7c9a10beba08caab4004e9e936ae69c6aabd8b59582`  
		Last Modified: Wed, 16 Aug 2017 00:33:57 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fad2531ef2b160a7a897dfc89f1cb487eae0563b7f7de63fc329ab73a679f51`  
		Last Modified: Wed, 16 Aug 2017 00:33:58 GMT  
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
