## `ghost:latest`

```console
$ docker pull ghost@sha256:9760320ec6e03492747f1e3f507240ae94d719fce26614d5e4a5cd1b60e3c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:ca266a4742da606f2b4442b9fa6b7ef70256cb7da635655c737d5477a21907b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.0 MB (216996030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd4665bd0f4a07cb5c669a9ac1511585b3817199c2f43d3eef98ec9bd7de8c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 20:23:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Sep 2017 20:23:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 13 Sep 2017 20:23:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:38:03 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:38:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Sep 2017 20:38:26 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:38:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Sep 2017 20:38:30 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:10:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 21:10:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Sep 2017 21:10:35 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:10:35 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:10:35 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 04 Oct 2017 00:33:31 GMT
ENV GHOST_VERSION=1.11.0
# Wed, 04 Oct 2017 00:34:14 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 04 Oct 2017 00:34:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Oct 2017 00:34:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Oct 2017 00:35:17 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 04 Oct 2017 00:35:19 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Oct 2017 00:35:19 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Oct 2017 00:35:19 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 04 Oct 2017 00:35:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Oct 2017 00:35:19 GMT
EXPOSE 2368/tcp
# Wed, 04 Oct 2017 00:35:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e2ecbdc66945a5816aa0d37501c34fe6ae76d1664a47cd366604f68a557052`  
		Last Modified: Wed, 13 Sep 2017 20:49:04 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba36da051a26db65f69c7538041ed3bf4d545ba973e1763029ba67ea44b99ef`  
		Last Modified: Wed, 13 Sep 2017 20:49:04 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260829fd758c7ed96bf6b66af7a83c16afb34bd20fea7c30627caa474c19e0`  
		Last Modified: Wed, 13 Sep 2017 20:51:45 GMT  
		Size: 14.7 MB (14718405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7459ed23b0dbcdf1adf35d3c09d1104dfce1711690a871cb7fea376fdeea9176`  
		Last Modified: Wed, 13 Sep 2017 20:51:40 GMT  
		Size: 938.5 KB (938460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed248cbe68e68af79ca31d36052e903e9bce24bac602f71d2d8ee4a9bc3676a1`  
		Last Modified: Wed, 13 Sep 2017 21:17:36 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f192b2c9530ca071988c56302d43741baddaeb84fc6fd0d12ae90c2daeb40c4b`  
		Last Modified: Wed, 04 Oct 2017 00:38:19 GMT  
		Size: 34.4 MB (34375367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1661fded47b018228977b3a801a967da6864cc391d1756d835f1c7d35673da4`  
		Last Modified: Wed, 04 Oct 2017 00:38:42 GMT  
		Size: 94.5 MB (94479732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2effcd4bb904df4327e983f119a8182f875237b27a35728031b39808588edc3`  
		Last Modified: Wed, 04 Oct 2017 00:37:36 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:101113184449d59da784117a484281334f1a10c0e39a0b0055bb3c1496dc6442
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201351368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589449dff44049851e39200a033ff4f4a60f11f147e536da124466b2ea5ce95b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 07:03:35 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 27 Sep 2017 07:07:47 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 27 Sep 2017 07:07:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 27 Sep 2017 07:17:28 GMT
ENV NODE_VERSION=6.11.3
# Wed, 27 Sep 2017 07:18:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 27 Sep 2017 07:18:08 GMT
ENV YARN_VERSION=0.27.5
# Wed, 27 Sep 2017 07:18:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 27 Sep 2017 07:18:10 GMT
CMD ["node"]
# Wed, 27 Sep 2017 07:58:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 07:58:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 07:58:54 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 27 Sep 2017 07:58:54 GMT
ENV NODE_ENV=production
# Wed, 27 Sep 2017 07:58:54 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 04 Oct 2017 11:55:26 GMT
ENV GHOST_VERSION=1.11.0
# Wed, 04 Oct 2017 11:56:33 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 04 Oct 2017 11:56:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Oct 2017 11:56:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Oct 2017 11:57:47 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 04 Oct 2017 11:57:50 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Oct 2017 11:57:50 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Oct 2017 11:57:51 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 04 Oct 2017 11:57:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Oct 2017 11:57:51 GMT
EXPOSE 2368/tcp
# Wed, 04 Oct 2017 11:57:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7733b25f61410d8e74ee676e195c358ac6519ef39f1a92f3cd11c5f8ca2048`  
		Last Modified: Wed, 27 Sep 2017 07:20:36 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553903f3bafddd9019242ebd76c10ae0ba04207db8e960c84758e8762b1c4cca`  
		Last Modified: Wed, 27 Sep 2017 07:20:36 GMT  
		Size: 119.2 KB (119190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc7bac012caabb127f3461274a9a4cb95bde62751a07df9eb243be1e2877ad`  
		Last Modified: Wed, 27 Sep 2017 07:22:00 GMT  
		Size: 13.9 MB (13877719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31b00c4993376f813ed323a451b7444b0f176979418ff061aa095b002377bc0`  
		Last Modified: Wed, 27 Sep 2017 07:21:55 GMT  
		Size: 940.2 KB (940161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541588608a9db7c94840b658b4d597ff4903433af8b4e46a3b35d0d48ccfa330`  
		Last Modified: Wed, 27 Sep 2017 08:05:26 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b259c26a01dbcf14dcbd256904f63a24bc3f98aa626740ca8de6aa22e8c4b5a`  
		Last Modified: Wed, 04 Oct 2017 11:58:21 GMT  
		Size: 29.2 MB (29168034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1523d363c52cbc28a74be7d87cf4337502fd9ae8ebc6627bc8daab6ebfb11a`  
		Last Modified: Wed, 04 Oct 2017 11:58:43 GMT  
		Size: 89.8 MB (89816991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578aff85a66842303406645bf4336f228b0b41145b92970b469fcef81dc46480`  
		Last Modified: Wed, 04 Oct 2017 11:58:09 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:2fae90b8775b3f3cea0bb8ec448774084032c0ac3500c14427d7636f8b45bbd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.9 MB (203937609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3ef1b01cc2a76668985a6bdb904d593b34bc29a872db228d691226a4f883d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:32:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:32:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 23:16:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 14 Sep 2017 23:16:22 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 14 Sep 2017 23:16:24 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 14 Sep 2017 23:18:55 GMT
ENV NODE_VERSION=6.11.3
# Thu, 14 Sep 2017 23:19:28 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 14 Sep 2017 23:19:29 GMT
ENV YARN_VERSION=0.27.5
# Thu, 14 Sep 2017 23:19:35 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 14 Sep 2017 23:19:37 GMT
CMD ["node"]
# Fri, 15 Sep 2017 02:19:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:20:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:20:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 15 Sep 2017 02:20:04 GMT
ENV NODE_ENV=production
# Fri, 15 Sep 2017 02:20:05 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 04 Oct 2017 10:41:35 GMT
ENV GHOST_VERSION=1.11.0
# Wed, 04 Oct 2017 10:43:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 04 Oct 2017 10:43:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Oct 2017 10:43:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Oct 2017 10:45:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 04 Oct 2017 10:45:16 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Oct 2017 10:45:17 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Oct 2017 10:45:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 04 Oct 2017 10:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Oct 2017 10:45:19 GMT
EXPOSE 2368/tcp
# Wed, 04 Oct 2017 10:45:19 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e054bfb02234c6e2b5305981d365c3b31101ec460b0d90df3b099305c03196`  
		Last Modified: Thu, 14 Sep 2017 22:01:15 GMT  
		Size: 18.7 MB (18737603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cbb48bf959f44cbc4806f42587333e86631edab819261ca51eba1da6fcd637`  
		Last Modified: Thu, 14 Sep 2017 23:24:36 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e961bd22aace0af8a10a14a5d6282014bdb3cf7c4d5b42e16a0dd45e4cd06dac`  
		Last Modified: Thu, 14 Sep 2017 23:24:36 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e0b3e39cb221ce8de69ec6e8d5e99fd9761fc3a6d37cbd9086ad72d3b41dc`  
		Last Modified: Thu, 14 Sep 2017 23:27:52 GMT  
		Size: 14.7 MB (14707206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714752cefed2ff3be3734c49f1a880303ff6290d0705230e5f486a0a0bbe756`  
		Last Modified: Thu, 14 Sep 2017 23:27:45 GMT  
		Size: 940.1 KB (940132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de4bc9133bf690ef04927a67017f86cc9e619e51f7cac9262ff9165db6baefc`  
		Last Modified: Fri, 15 Sep 2017 02:35:50 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177d3dbadd8fe098302c9ba3c2076eb6791f8ea229318273dde0269ddc057b72`  
		Last Modified: Wed, 04 Oct 2017 10:45:54 GMT  
		Size: 29.2 MB (29169143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6b7bb3b72bfb0dad10b12631104e4c3cd3aba21037b14708997baca5afc279`  
		Last Modified: Wed, 04 Oct 2017 10:46:19 GMT  
		Size: 89.9 MB (89861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f766b05de1e0895164dee4eb000bca917cb8a09d4eae3d6e1e44ad94c7946f67`  
		Last Modified: Wed, 04 Oct 2017 10:45:41 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:1549e352f133ff77a3794bd5830e8e9e3a4a10585449d766b98502ae091146a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206070649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8484c4e1a210b843cb20a07d07da8c0d2d0d966da6b741163c6644036be7ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 23:10:48 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 14 Sep 2017 23:11:08 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 14 Sep 2017 23:11:12 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 14 Sep 2017 23:15:42 GMT
ENV NODE_VERSION=6.11.3
# Thu, 14 Sep 2017 23:16:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 14 Sep 2017 23:16:41 GMT
ENV YARN_VERSION=0.27.5
# Thu, 14 Sep 2017 23:16:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 14 Sep 2017 23:16:50 GMT
CMD ["node"]
# Fri, 15 Sep 2017 02:22:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:22:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:22:48 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 15 Sep 2017 02:22:52 GMT
ENV NODE_ENV=production
# Fri, 15 Sep 2017 02:22:54 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 04 Oct 2017 01:26:24 GMT
ENV GHOST_VERSION=1.11.0
# Wed, 04 Oct 2017 01:27:32 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 04 Oct 2017 01:27:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Oct 2017 01:27:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Oct 2017 01:29:12 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 04 Oct 2017 01:29:18 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Oct 2017 01:29:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Oct 2017 01:29:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 04 Oct 2017 01:29:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Oct 2017 01:29:31 GMT
EXPOSE 2368/tcp
# Wed, 04 Oct 2017 01:29:34 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1dc276f5b0bc12cddaf889657d8ed9d7ec3e6add07506308ea49dc52bb6eff`  
		Last Modified: Thu, 14 Sep 2017 23:22:38 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb57f53562fb9db3e40e7ee479f5526f635b724a0632d9a4d3da2500a44c491d`  
		Last Modified: Thu, 14 Sep 2017 23:22:39 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f255065ee2535a6b44019881cc1954c1a7f665f6b0c530c618663be94e4a23`  
		Last Modified: Thu, 14 Sep 2017 23:26:37 GMT  
		Size: 14.5 MB (14475182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68be6ded470a2cf42b2ccda178f212a25198e102a4e3249456140252fa22f054`  
		Last Modified: Thu, 14 Sep 2017 23:26:32 GMT  
		Size: 940.2 KB (940157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d6527d8ade34c5efd2bd98f7a049a917ff22859c6eaaed4046a2df232d91b`  
		Last Modified: Fri, 15 Sep 2017 02:32:57 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0187b30fed04835fc6ff89622323589466f7f3efb28b4a5f1a49bf621ebb2d`  
		Last Modified: Wed, 04 Oct 2017 01:30:03 GMT  
		Size: 29.2 MB (29168286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6848c950b576bf9b6b4c5e30a811733cdf93c5343ce19ce7d3871574ec94975`  
		Last Modified: Wed, 04 Oct 2017 01:30:20 GMT  
		Size: 89.9 MB (89883804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45b93d846441e45265684bce35c0055cbf71b7dcf59c6e17bf9a2c01b9b0227`  
		Last Modified: Wed, 04 Oct 2017 01:29:54 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:d0756392fbe28af6a6f1061909442ab244ba9a004e7500ef9e83086567b8060f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207664828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2272952374826767eea5916a2755a3763235b2827390472ba4501ae4300493e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 17:04:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 08 Sep 2017 17:04:12 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 08 Sep 2017 17:04:12 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 08 Sep 2017 17:04:55 GMT
ENV NODE_VERSION=6.11.3
# Fri, 08 Sep 2017 17:05:10 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 08 Sep 2017 17:05:10 GMT
ENV YARN_VERSION=0.27.5
# Fri, 08 Sep 2017 17:05:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 08 Sep 2017 17:05:12 GMT
CMD ["node"]
# Fri, 08 Sep 2017 18:17:08 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:17:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:17:11 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 08 Sep 2017 18:17:11 GMT
ENV NODE_ENV=production
# Fri, 08 Sep 2017 18:17:11 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Wed, 04 Oct 2017 14:22:28 GMT
ENV GHOST_VERSION=1.11.0
# Wed, 04 Oct 2017 14:23:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 04 Oct 2017 14:23:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Oct 2017 14:23:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Oct 2017 14:23:34 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 04 Oct 2017 14:23:36 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Oct 2017 14:23:36 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Oct 2017 14:23:37 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 04 Oct 2017 14:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Oct 2017 14:23:37 GMT
EXPOSE 2368/tcp
# Wed, 04 Oct 2017 14:23:37 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c81355314e654fd3d4e1dcbec2f82fffb19b856e65aa403cf7b2d471582658`  
		Last Modified: Fri, 08 Sep 2017 17:05:56 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9c66bc4cf9f13c8d89cb57f07ce23693a1efcbbbcc32e7e30c5e8e0cefa2c8`  
		Last Modified: Fri, 08 Sep 2017 17:05:56 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1121a725f9b59e0fcd0c6226075d97e638b15fdfc40f5e1d57d3a5f3c3f190`  
		Last Modified: Fri, 08 Sep 2017 17:07:00 GMT  
		Size: 14.8 MB (14847789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa31e4823df3a66473b6ca7286cf7a152288b868f3cf1d4df5eb0393f5e81da`  
		Last Modified: Fri, 08 Sep 2017 17:06:56 GMT  
		Size: 938.5 KB (938452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6819f9496d60b6b7dda2b89e7dd5c2a3c3442d0f1270b9f67b3c132f70fbeeb`  
		Last Modified: Fri, 08 Sep 2017 18:20:31 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9d6962b5a5ef92958f1e7c35f04f53c2aaed7c8554f0a514eac41a69db39d`  
		Last Modified: Wed, 04 Oct 2017 14:24:03 GMT  
		Size: 29.2 MB (29167281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92609bad2c2c484aef39a6720a7e465ae868733383df17d0443b7c428dc121d`  
		Last Modified: Wed, 04 Oct 2017 14:24:16 GMT  
		Size: 89.8 MB (89841175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b0f4caa147d01c3e45ca58f87950260ea810ff1c75554fc76e6c1b7d989bf9`  
		Last Modified: Wed, 04 Oct 2017 14:23:56 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
