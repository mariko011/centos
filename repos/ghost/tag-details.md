<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:1.8.5`](#ghost185)
-	[`ghost:1.8`](#ghost18)
-	[`ghost:1`](#ghost1)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:1.8.5-alpine`](#ghost185-alpine)
-	[`ghost:1.8-alpine`](#ghost18-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)

## `ghost:1.8.5`

**does not exist** (yet?)

## `ghost:1.8`

```console
$ docker pull ghost@sha256:543afb663b0c9997eb78a3b23071f2c84bd3c35087e52ce0c71235e681869c55
```

-	Platforms:
	-	linux; amd64

### `ghost:1.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215399446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7f4cc792d6384bef79a8ebac2fe61085f11290d51123c2fe15611f17a78a83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NODE_ENV=production
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_VERSION=1.8.4
# Mon, 11 Sep 2017 03:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Mon, 11 Sep 2017 03:51:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 11 Sep 2017 03:51:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 11 Sep 2017 03:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 11 Sep 2017 03:56:52 GMT
WORKDIR /var/lib/ghost
# Mon, 11 Sep 2017 03:56:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 11 Sep 2017 03:56:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 11 Sep 2017 03:56:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:56:54 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:56:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eddd1c4bbf678aa8b330b63fbe5e4f5729f333609c6954e77b5e9094f4db9e`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774bf2ae81aa1b55f0e473945e4bb4375ae506df7a8c5bc81c3a4bb73e58142a`  
		Last Modified: Mon, 11 Sep 2017 03:59:03 GMT  
		Size: 34.5 MB (34514309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4627468904f7c19b164b8c628532f6fa7417e9527ff53d6cdad360bf26946f4`  
		Last Modified: Mon, 11 Sep 2017 03:59:04 GMT  
		Size: 93.0 MB (93019707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0aaa683eaece6aa35fafa630b0f4dcc788c95e09df6a92c1894fff263f3498`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:543afb663b0c9997eb78a3b23071f2c84bd3c35087e52ce0c71235e681869c55
```

-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215399446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7f4cc792d6384bef79a8ebac2fe61085f11290d51123c2fe15611f17a78a83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NODE_ENV=production
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_VERSION=1.8.4
# Mon, 11 Sep 2017 03:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Mon, 11 Sep 2017 03:51:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 11 Sep 2017 03:51:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 11 Sep 2017 03:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 11 Sep 2017 03:56:52 GMT
WORKDIR /var/lib/ghost
# Mon, 11 Sep 2017 03:56:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 11 Sep 2017 03:56:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 11 Sep 2017 03:56:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:56:54 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:56:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eddd1c4bbf678aa8b330b63fbe5e4f5729f333609c6954e77b5e9094f4db9e`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774bf2ae81aa1b55f0e473945e4bb4375ae506df7a8c5bc81c3a4bb73e58142a`  
		Last Modified: Mon, 11 Sep 2017 03:59:03 GMT  
		Size: 34.5 MB (34514309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4627468904f7c19b164b8c628532f6fa7417e9527ff53d6cdad360bf26946f4`  
		Last Modified: Mon, 11 Sep 2017 03:59:04 GMT  
		Size: 93.0 MB (93019707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0aaa683eaece6aa35fafa630b0f4dcc788c95e09df6a92c1894fff263f3498`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:543afb663b0c9997eb78a3b23071f2c84bd3c35087e52ce0c71235e681869c55
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215399446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7f4cc792d6384bef79a8ebac2fe61085f11290d51123c2fe15611f17a78a83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Mon, 11 Sep 2017 03:50:33 GMT
ENV NODE_ENV=production
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Mon, 11 Sep 2017 03:50:34 GMT
ENV GHOST_VERSION=1.8.4
# Mon, 11 Sep 2017 03:51:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Mon, 11 Sep 2017 03:51:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Mon, 11 Sep 2017 03:51:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Mon, 11 Sep 2017 03:52:06 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Mon, 11 Sep 2017 03:56:52 GMT
WORKDIR /var/lib/ghost
# Mon, 11 Sep 2017 03:56:52 GMT
VOLUME [/var/lib/ghost/content]
# Mon, 11 Sep 2017 03:56:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Mon, 11 Sep 2017 03:56:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:56:54 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:56:54 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eddd1c4bbf678aa8b330b63fbe5e4f5729f333609c6954e77b5e9094f4db9e`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774bf2ae81aa1b55f0e473945e4bb4375ae506df7a8c5bc81c3a4bb73e58142a`  
		Last Modified: Mon, 11 Sep 2017 03:59:03 GMT  
		Size: 34.5 MB (34514309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4627468904f7c19b164b8c628532f6fa7417e9527ff53d6cdad360bf26946f4`  
		Last Modified: Mon, 11 Sep 2017 03:59:04 GMT  
		Size: 93.0 MB (93019707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0aaa683eaece6aa35fafa630b0f4dcc788c95e09df6a92c1894fff263f3498`  
		Last Modified: Mon, 11 Sep 2017 03:58:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.8.5-alpine`

**does not exist** (yet?)

## `ghost:1.8-alpine`

```console
$ docker pull ghost@sha256:fa7f9488ced374212fb35fc9b81bfeb0df982dd82bd9f3bc85eb72b6f5fd7029
```

-	Platforms:
	-	linux; amd64

### `ghost:1.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199656072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998e3bd77588ad4cd4f627e6bd8da07fc94bd75a0b23352cba0a28549d39ec51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 21:01:12 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NODE_ENV=production
# Wed, 06 Sep 2017 21:01:13 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Thu, 07 Sep 2017 19:44:02 GMT
ENV GHOST_VERSION=1.8.4
# Thu, 07 Sep 2017 19:44:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 07 Sep 2017 19:44:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Sep 2017 19:44:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 07 Sep 2017 19:45:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 07 Sep 2017 19:45:20 GMT
WORKDIR /var/lib/ghost
# Thu, 07 Sep 2017 19:45:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 07 Sep 2017 19:45:21 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 07 Sep 2017 19:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Sep 2017 19:45:21 GMT
EXPOSE 2368/tcp
# Thu, 07 Sep 2017 19:45:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f593b889576e90518cc1aaebf84df2666881384e4e3fd2e2dbfd8668501b294`  
		Last Modified: Wed, 06 Sep 2017 21:46:27 GMT  
		Size: 1.1 MB (1095527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f4cc49f25ef0af4b6c53b7728d17b7af5bf5881c210ddd418e1abf47a9e73`  
		Last Modified: Thu, 07 Sep 2017 19:46:36 GMT  
		Size: 86.8 MB (86810661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d79e235f2a1241a33377a9c47771893e2b0941f9a82f40a605ac9799f2b1ce7`  
		Last Modified: Thu, 07 Sep 2017 19:46:41 GMT  
		Size: 93.0 MB (93020207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254761969c333b5ec4b4105bbf7318a51ed253f6922824d8c89006c3bd0cc8c`  
		Last Modified: Thu, 07 Sep 2017 19:46:25 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:fa7f9488ced374212fb35fc9b81bfeb0df982dd82bd9f3bc85eb72b6f5fd7029
```

-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199656072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998e3bd77588ad4cd4f627e6bd8da07fc94bd75a0b23352cba0a28549d39ec51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 21:01:12 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NODE_ENV=production
# Wed, 06 Sep 2017 21:01:13 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Thu, 07 Sep 2017 19:44:02 GMT
ENV GHOST_VERSION=1.8.4
# Thu, 07 Sep 2017 19:44:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 07 Sep 2017 19:44:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Sep 2017 19:44:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 07 Sep 2017 19:45:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 07 Sep 2017 19:45:20 GMT
WORKDIR /var/lib/ghost
# Thu, 07 Sep 2017 19:45:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 07 Sep 2017 19:45:21 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 07 Sep 2017 19:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Sep 2017 19:45:21 GMT
EXPOSE 2368/tcp
# Thu, 07 Sep 2017 19:45:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f593b889576e90518cc1aaebf84df2666881384e4e3fd2e2dbfd8668501b294`  
		Last Modified: Wed, 06 Sep 2017 21:46:27 GMT  
		Size: 1.1 MB (1095527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f4cc49f25ef0af4b6c53b7728d17b7af5bf5881c210ddd418e1abf47a9e73`  
		Last Modified: Thu, 07 Sep 2017 19:46:36 GMT  
		Size: 86.8 MB (86810661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d79e235f2a1241a33377a9c47771893e2b0941f9a82f40a605ac9799f2b1ce7`  
		Last Modified: Thu, 07 Sep 2017 19:46:41 GMT  
		Size: 93.0 MB (93020207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254761969c333b5ec4b4105bbf7318a51ed253f6922824d8c89006c3bd0cc8c`  
		Last Modified: Thu, 07 Sep 2017 19:46:25 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:fa7f9488ced374212fb35fc9b81bfeb0df982dd82bd9f3bc85eb72b6f5fd7029
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199656072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998e3bd77588ad4cd4f627e6bd8da07fc94bd75a0b23352cba0a28549d39ec51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 21:01:12 GMT
RUN apk add --no-cache 		bash
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 06 Sep 2017 21:01:12 GMT
ENV NODE_ENV=production
# Wed, 06 Sep 2017 21:01:13 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Thu, 07 Sep 2017 19:44:02 GMT
ENV GHOST_VERSION=1.8.4
# Thu, 07 Sep 2017 19:44:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 07 Sep 2017 19:44:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 07 Sep 2017 19:44:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 07 Sep 2017 19:45:19 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 07 Sep 2017 19:45:20 GMT
WORKDIR /var/lib/ghost
# Thu, 07 Sep 2017 19:45:20 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 07 Sep 2017 19:45:21 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 07 Sep 2017 19:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Sep 2017 19:45:21 GMT
EXPOSE 2368/tcp
# Thu, 07 Sep 2017 19:45:22 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f593b889576e90518cc1aaebf84df2666881384e4e3fd2e2dbfd8668501b294`  
		Last Modified: Wed, 06 Sep 2017 21:46:27 GMT  
		Size: 1.1 MB (1095527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f4cc49f25ef0af4b6c53b7728d17b7af5bf5881c210ddd418e1abf47a9e73`  
		Last Modified: Thu, 07 Sep 2017 19:46:36 GMT  
		Size: 86.8 MB (86810661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d79e235f2a1241a33377a9c47771893e2b0941f9a82f40a605ac9799f2b1ce7`  
		Last Modified: Thu, 07 Sep 2017 19:46:41 GMT  
		Size: 93.0 MB (93020207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1254761969c333b5ec4b4105bbf7318a51ed253f6922824d8c89006c3bd0cc8c`  
		Last Modified: Thu, 07 Sep 2017 19:46:25 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:af3609ed781ae2a9d6247963086787c4bcf9dbc63a8f8756b92782b796c78ac1
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112767709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2f756f1b8579d55369feef7d1e1b2a3746abae3ddf9ed12d65b59492dd5ba2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:57:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 11 Sep 2017 03:57:02 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:57:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
WORKDIR /usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_VERSION=0.11.11
# Mon, 11 Sep 2017 03:58:30 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Mon, 11 Sep 2017 03:58:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Mon, 11 Sep 2017 03:58:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Mon, 11 Sep 2017 03:58:32 GMT
VOLUME [/var/lib/ghost]
# Mon, 11 Sep 2017 03:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Mon, 11 Sep 2017 03:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 11 Sep 2017 03:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:58:34 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:58:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7de4c0024d205c74fda62a9a00f7a2d20310c3f8ef10a7400d082c7ea4a9920`  
		Last Modified: Mon, 11 Sep 2017 03:59:57 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58166916383ea62784dbaacf77219a38b1fec0afce549f3102c5be723fe6a5bc`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd8b9bbc34dbc7522a222c53ff2aa5f9f0ccb364f6bc26e16cf586645507097`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea861720ae5f14424f7ab52d964cf61e407c3cf9f8012e3df8f3d7fca9db1657`  
		Last Modified: Mon, 11 Sep 2017 04:00:00 GMT  
		Size: 24.9 MB (24897330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a18a7346884db662c5d2ca53e89d574b4ed565b88d7a4317757d1f4089c8c6`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d830acf8deaccd679ef4438cd8ab44cf55ffc492790b59d412b2428e92fdbf5b`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccb62c7b3417322c2969183708f635fb594762f70971ea34d5094b4bb308660`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:af3609ed781ae2a9d6247963086787c4bcf9dbc63a8f8756b92782b796c78ac1
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112767709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2f756f1b8579d55369feef7d1e1b2a3746abae3ddf9ed12d65b59492dd5ba2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:57:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 11 Sep 2017 03:57:02 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:57:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
WORKDIR /usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_VERSION=0.11.11
# Mon, 11 Sep 2017 03:58:30 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Mon, 11 Sep 2017 03:58:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Mon, 11 Sep 2017 03:58:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Mon, 11 Sep 2017 03:58:32 GMT
VOLUME [/var/lib/ghost]
# Mon, 11 Sep 2017 03:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Mon, 11 Sep 2017 03:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 11 Sep 2017 03:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:58:34 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:58:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7de4c0024d205c74fda62a9a00f7a2d20310c3f8ef10a7400d082c7ea4a9920`  
		Last Modified: Mon, 11 Sep 2017 03:59:57 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58166916383ea62784dbaacf77219a38b1fec0afce549f3102c5be723fe6a5bc`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd8b9bbc34dbc7522a222c53ff2aa5f9f0ccb364f6bc26e16cf586645507097`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea861720ae5f14424f7ab52d964cf61e407c3cf9f8012e3df8f3d7fca9db1657`  
		Last Modified: Mon, 11 Sep 2017 04:00:00 GMT  
		Size: 24.9 MB (24897330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a18a7346884db662c5d2ca53e89d574b4ed565b88d7a4317757d1f4089c8c6`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d830acf8deaccd679ef4438cd8ab44cf55ffc492790b59d412b2428e92fdbf5b`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccb62c7b3417322c2969183708f635fb594762f70971ea34d5094b4bb308660`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:af3609ed781ae2a9d6247963086787c4bcf9dbc63a8f8756b92782b796c78ac1
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112767709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2f756f1b8579d55369feef7d1e1b2a3746abae3ddf9ed12d65b59492dd5ba2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:32:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 08:32:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 08:32:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 08:33:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 08:34:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 08:34:16 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 08:34:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 08:34:19 GMT
CMD ["node"]
# Mon, 11 Sep 2017 03:57:02 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 11 Sep 2017 03:57:02 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:57:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
WORKDIR /usr/src/ghost
# Mon, 11 Sep 2017 03:57:07 GMT
ENV GHOST_VERSION=0.11.11
# Mon, 11 Sep 2017 03:58:30 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Mon, 11 Sep 2017 03:58:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Mon, 11 Sep 2017 03:58:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Mon, 11 Sep 2017 03:58:32 GMT
VOLUME [/var/lib/ghost]
# Mon, 11 Sep 2017 03:58:32 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Mon, 11 Sep 2017 03:58:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 11 Sep 2017 03:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:58:34 GMT
EXPOSE 2368/tcp
# Mon, 11 Sep 2017 03:58:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6f58d21916addcfd94f1248b76df1a6193650e3e1b0ae356b4a8561975bbb`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9960ddfc87db597a85344a9ec47240bede8c5a2129738d546bda07668ca06b46`  
		Last Modified: Sat, 09 Sep 2017 00:03:01 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228e5685a2781ec10d9424c2eb7eba38880a3b07bd5672c022322294bbe567ab`  
		Last Modified: Sat, 09 Sep 2017 00:06:36 GMT  
		Size: 14.4 MB (14443353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d09010fa59004956562673b0b7689da4266ad63223f72dff5137547632c91a`  
		Last Modified: Sat, 09 Sep 2017 00:06:32 GMT  
		Size: 938.3 KB (938341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7de4c0024d205c74fda62a9a00f7a2d20310c3f8ef10a7400d082c7ea4a9920`  
		Last Modified: Mon, 11 Sep 2017 03:59:57 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58166916383ea62784dbaacf77219a38b1fec0afce549f3102c5be723fe6a5bc`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd8b9bbc34dbc7522a222c53ff2aa5f9f0ccb364f6bc26e16cf586645507097`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea861720ae5f14424f7ab52d964cf61e407c3cf9f8012e3df8f3d7fca9db1657`  
		Last Modified: Mon, 11 Sep 2017 04:00:00 GMT  
		Size: 24.9 MB (24897330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a18a7346884db662c5d2ca53e89d574b4ed565b88d7a4317757d1f4089c8c6`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d830acf8deaccd679ef4438cd8ab44cf55ffc492790b59d412b2428e92fdbf5b`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccb62c7b3417322c2969183708f635fb594762f70971ea34d5094b4bb308660`  
		Last Modified: Mon, 11 Sep 2017 03:59:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11-alpine`

```console
$ docker pull ghost@sha256:65e4f579c053d60a5749e7f14a9ddaf61529d96b2dc0925dfcd4e52ed8a789b9
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44722287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d561cbb7be785fdaa6bb2a0a5bfe043b1feba69da9af934a870073cc547138a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 20:57:25 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Sep 2017 20:57:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 06 Sep 2017 20:58:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Sep 2017 20:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Sep 2017 20:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Sep 2017 20:58:11 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Sep 2017 20:58:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Sep 2017 20:58:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Sep 2017 20:58:12 GMT
EXPOSE 2368/tcp
# Wed, 06 Sep 2017 20:58:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd761b78eb52a7759f4d02f4ec8a13b2901ff9612e1872f811ea5010dbf5bdea`  
		Last Modified: Wed, 06 Sep 2017 21:48:15 GMT  
		Size: 1.3 MB (1336049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f41c81731421ff6692636580aa18e9c1c79e70e1d774d57c8f9307923b042b`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb21b4ec9dbb878d84b4913073ad61191384fa3ea62d3cb9817f07cd4c7167fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:29 GMT  
		Size: 24.7 MB (24656165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabcbf2df52d71daae9d14e79e53d027ffaa13f9031450690b88c11b5aaca1fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ef899f134eb8f5b2b1d366b0569e4bd919ad53a9282fb87f2c9ce32cf6e3f`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:65e4f579c053d60a5749e7f14a9ddaf61529d96b2dc0925dfcd4e52ed8a789b9
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44722287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d561cbb7be785fdaa6bb2a0a5bfe043b1feba69da9af934a870073cc547138a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 20:57:25 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Sep 2017 20:57:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 06 Sep 2017 20:58:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Sep 2017 20:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Sep 2017 20:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Sep 2017 20:58:11 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Sep 2017 20:58:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Sep 2017 20:58:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Sep 2017 20:58:12 GMT
EXPOSE 2368/tcp
# Wed, 06 Sep 2017 20:58:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd761b78eb52a7759f4d02f4ec8a13b2901ff9612e1872f811ea5010dbf5bdea`  
		Last Modified: Wed, 06 Sep 2017 21:48:15 GMT  
		Size: 1.3 MB (1336049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f41c81731421ff6692636580aa18e9c1c79e70e1d774d57c8f9307923b042b`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb21b4ec9dbb878d84b4913073ad61191384fa3ea62d3cb9817f07cd4c7167fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:29 GMT  
		Size: 24.7 MB (24656165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabcbf2df52d71daae9d14e79e53d027ffaa13f9031450690b88c11b5aaca1fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ef899f134eb8f5b2b1d366b0569e4bd919ad53a9282fb87f2c9ce32cf6e3f`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:65e4f579c053d60a5749e7f14a9ddaf61529d96b2dc0925dfcd4e52ed8a789b9
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44722287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d561cbb7be785fdaa6bb2a0a5bfe043b1feba69da9af934a870073cc547138a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 20:57:25 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Sep 2017 20:57:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 06 Sep 2017 20:58:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Sep 2017 20:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Sep 2017 20:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Sep 2017 20:58:11 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Sep 2017 20:58:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Sep 2017 20:58:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Sep 2017 20:58:12 GMT
EXPOSE 2368/tcp
# Wed, 06 Sep 2017 20:58:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd761b78eb52a7759f4d02f4ec8a13b2901ff9612e1872f811ea5010dbf5bdea`  
		Last Modified: Wed, 06 Sep 2017 21:48:15 GMT  
		Size: 1.3 MB (1336049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f41c81731421ff6692636580aa18e9c1c79e70e1d774d57c8f9307923b042b`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb21b4ec9dbb878d84b4913073ad61191384fa3ea62d3cb9817f07cd4c7167fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:29 GMT  
		Size: 24.7 MB (24656165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabcbf2df52d71daae9d14e79e53d027ffaa13f9031450690b88c11b5aaca1fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ef899f134eb8f5b2b1d366b0569e4bd919ad53a9282fb87f2c9ce32cf6e3f`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
