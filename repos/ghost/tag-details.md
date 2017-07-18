<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:alpine`](#ghostalpine)

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:eb3d8214d88821c55169d75fb43d7f55e58e44ac79bc4617b89e2b7d0377fa11
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123559947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a313abefc61b5834f0d4fac849d15bf4e43f0ea28b883b78d01494f68d9bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:20:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 08 Jul 2017 04:23:56 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 08 Jul 2017 04:23:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:27:37 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Jul 2017 23:27:50 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Jul 2017 23:27:54 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:26:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 12 Jul 2017 16:26:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 12 Jul 2017 16:26:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Jul 2017 16:26:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:55:13 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:56:34 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:56:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:56:36 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:56:36 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:56:37 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:56:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 22:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:56:39 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:56:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405c8e05a47440060907f35b13c15d3346452f19cf1db17c659568eb3391e90`  
		Last Modified: Mon, 10 Jul 2017 18:16:29 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeeb57a2cd360c68be9ca1a01878bf2be388153a1874b87c2dd1a19a0ae79d`  
		Last Modified: Mon, 10 Jul 2017 18:16:26 GMT  
		Size: 119.2 KB (119157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fdfa03cee406af9161ee7783cfd9d9e09c6495280dba0f99032350d0e7d9aa`  
		Last Modified: Tue, 11 Jul 2017 23:43:12 GMT  
		Size: 12.4 MB (12420659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35934788e1f4f8661ea49c2b728356a69498ec68f4ded86f3ef3ae7779c9fa1`  
		Last Modified: Tue, 11 Jul 2017 23:43:05 GMT  
		Size: 900.6 KB (900598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631e092f4995595c9f4fbc9068a604d6e5036c11ed1a09890c21ed4a522645`  
		Last Modified: Wed, 12 Jul 2017 16:28:45 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb86d85d9355bd4e57e6d1d6e73a0e987fa2d044f9da7f69d634cbcc4026bea`  
		Last Modified: Wed, 12 Jul 2017 16:28:44 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595649c1af8fb2bc6f465da953db62b2316e837bb398003be9247c300cc06669`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e44761291d807937f827f63b3d5d6d816e2ca5c706aef1a6a832de5f72c5c1a`  
		Last Modified: Tue, 18 Jul 2017 22:58:37 GMT  
		Size: 37.4 MB (37411677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23059be3f02112f62d30a3e09ac5609532cd2d243acc5544e0415fefdb9d605a`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8e2dc427d9fc4e564b1d1887bc283366132051b9f886d237a57508509456e`  
		Last Modified: Tue, 18 Jul 2017 22:58:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aee2e060decf4688a1205228edccc7ebf3f55095b4f8b652164914daf2274f`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:eb3d8214d88821c55169d75fb43d7f55e58e44ac79bc4617b89e2b7d0377fa11
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123559947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a313abefc61b5834f0d4fac849d15bf4e43f0ea28b883b78d01494f68d9bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:20:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 08 Jul 2017 04:23:56 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 08 Jul 2017 04:23:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:27:37 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Jul 2017 23:27:50 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Jul 2017 23:27:54 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:26:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 12 Jul 2017 16:26:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 12 Jul 2017 16:26:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Jul 2017 16:26:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:55:13 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:56:34 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:56:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:56:36 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:56:36 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:56:37 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:56:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 22:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:56:39 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:56:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405c8e05a47440060907f35b13c15d3346452f19cf1db17c659568eb3391e90`  
		Last Modified: Mon, 10 Jul 2017 18:16:29 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeeb57a2cd360c68be9ca1a01878bf2be388153a1874b87c2dd1a19a0ae79d`  
		Last Modified: Mon, 10 Jul 2017 18:16:26 GMT  
		Size: 119.2 KB (119157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fdfa03cee406af9161ee7783cfd9d9e09c6495280dba0f99032350d0e7d9aa`  
		Last Modified: Tue, 11 Jul 2017 23:43:12 GMT  
		Size: 12.4 MB (12420659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35934788e1f4f8661ea49c2b728356a69498ec68f4ded86f3ef3ae7779c9fa1`  
		Last Modified: Tue, 11 Jul 2017 23:43:05 GMT  
		Size: 900.6 KB (900598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631e092f4995595c9f4fbc9068a604d6e5036c11ed1a09890c21ed4a522645`  
		Last Modified: Wed, 12 Jul 2017 16:28:45 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb86d85d9355bd4e57e6d1d6e73a0e987fa2d044f9da7f69d634cbcc4026bea`  
		Last Modified: Wed, 12 Jul 2017 16:28:44 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595649c1af8fb2bc6f465da953db62b2316e837bb398003be9247c300cc06669`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e44761291d807937f827f63b3d5d6d816e2ca5c706aef1a6a832de5f72c5c1a`  
		Last Modified: Tue, 18 Jul 2017 22:58:37 GMT  
		Size: 37.4 MB (37411677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23059be3f02112f62d30a3e09ac5609532cd2d243acc5544e0415fefdb9d605a`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8e2dc427d9fc4e564b1d1887bc283366132051b9f886d237a57508509456e`  
		Last Modified: Tue, 18 Jul 2017 22:58:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aee2e060decf4688a1205228edccc7ebf3f55095b4f8b652164914daf2274f`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:eb3d8214d88821c55169d75fb43d7f55e58e44ac79bc4617b89e2b7d0377fa11
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123559947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a313abefc61b5834f0d4fac849d15bf4e43f0ea28b883b78d01494f68d9bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:20:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 08 Jul 2017 04:23:56 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 08 Jul 2017 04:23:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:27:37 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Jul 2017 23:27:50 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Jul 2017 23:27:54 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:26:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 12 Jul 2017 16:26:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 12 Jul 2017 16:26:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Jul 2017 16:26:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:55:13 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:56:34 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:56:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:56:36 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:56:36 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:56:37 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:56:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 22:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:56:39 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:56:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405c8e05a47440060907f35b13c15d3346452f19cf1db17c659568eb3391e90`  
		Last Modified: Mon, 10 Jul 2017 18:16:29 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeeb57a2cd360c68be9ca1a01878bf2be388153a1874b87c2dd1a19a0ae79d`  
		Last Modified: Mon, 10 Jul 2017 18:16:26 GMT  
		Size: 119.2 KB (119157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fdfa03cee406af9161ee7783cfd9d9e09c6495280dba0f99032350d0e7d9aa`  
		Last Modified: Tue, 11 Jul 2017 23:43:12 GMT  
		Size: 12.4 MB (12420659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35934788e1f4f8661ea49c2b728356a69498ec68f4ded86f3ef3ae7779c9fa1`  
		Last Modified: Tue, 11 Jul 2017 23:43:05 GMT  
		Size: 900.6 KB (900598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631e092f4995595c9f4fbc9068a604d6e5036c11ed1a09890c21ed4a522645`  
		Last Modified: Wed, 12 Jul 2017 16:28:45 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb86d85d9355bd4e57e6d1d6e73a0e987fa2d044f9da7f69d634cbcc4026bea`  
		Last Modified: Wed, 12 Jul 2017 16:28:44 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595649c1af8fb2bc6f465da953db62b2316e837bb398003be9247c300cc06669`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e44761291d807937f827f63b3d5d6d816e2ca5c706aef1a6a832de5f72c5c1a`  
		Last Modified: Tue, 18 Jul 2017 22:58:37 GMT  
		Size: 37.4 MB (37411677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23059be3f02112f62d30a3e09ac5609532cd2d243acc5544e0415fefdb9d605a`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8e2dc427d9fc4e564b1d1887bc283366132051b9f886d237a57508509456e`  
		Last Modified: Tue, 18 Jul 2017 22:58:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aee2e060decf4688a1205228edccc7ebf3f55095b4f8b652164914daf2274f`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:eb3d8214d88821c55169d75fb43d7f55e58e44ac79bc4617b89e2b7d0377fa11
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123559947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a313abefc61b5834f0d4fac849d15bf4e43f0ea28b883b78d01494f68d9bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:20:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 08 Jul 2017 04:23:56 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 08 Jul 2017 04:23:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:27:37 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Jul 2017 23:27:50 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Jul 2017 23:27:54 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:26:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 12 Jul 2017 16:26:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 12 Jul 2017 16:26:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Jul 2017 16:26:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:55:13 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:56:34 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:56:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:56:36 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:56:36 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:56:37 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:56:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 22:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:56:39 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:56:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405c8e05a47440060907f35b13c15d3346452f19cf1db17c659568eb3391e90`  
		Last Modified: Mon, 10 Jul 2017 18:16:29 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeeb57a2cd360c68be9ca1a01878bf2be388153a1874b87c2dd1a19a0ae79d`  
		Last Modified: Mon, 10 Jul 2017 18:16:26 GMT  
		Size: 119.2 KB (119157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fdfa03cee406af9161ee7783cfd9d9e09c6495280dba0f99032350d0e7d9aa`  
		Last Modified: Tue, 11 Jul 2017 23:43:12 GMT  
		Size: 12.4 MB (12420659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35934788e1f4f8661ea49c2b728356a69498ec68f4ded86f3ef3ae7779c9fa1`  
		Last Modified: Tue, 11 Jul 2017 23:43:05 GMT  
		Size: 900.6 KB (900598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631e092f4995595c9f4fbc9068a604d6e5036c11ed1a09890c21ed4a522645`  
		Last Modified: Wed, 12 Jul 2017 16:28:45 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb86d85d9355bd4e57e6d1d6e73a0e987fa2d044f9da7f69d634cbcc4026bea`  
		Last Modified: Wed, 12 Jul 2017 16:28:44 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595649c1af8fb2bc6f465da953db62b2316e837bb398003be9247c300cc06669`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e44761291d807937f827f63b3d5d6d816e2ca5c706aef1a6a832de5f72c5c1a`  
		Last Modified: Tue, 18 Jul 2017 22:58:37 GMT  
		Size: 37.4 MB (37411677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23059be3f02112f62d30a3e09ac5609532cd2d243acc5544e0415fefdb9d605a`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8e2dc427d9fc4e564b1d1887bc283366132051b9f886d237a57508509456e`  
		Last Modified: Tue, 18 Jul 2017 22:58:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aee2e060decf4688a1205228edccc7ebf3f55095b4f8b652164914daf2274f`  
		Last Modified: Tue, 18 Jul 2017 22:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11-alpine`

```console
$ docker pull ghost@sha256:acda68ca051787139a162b8748dfd5efbccb45f98899ad0d76f30220c65dd47b
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.11-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52584644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ddd161b693c38f8f99875ad8166e9c04ee8814ca8bc9b276ad83aa9b2dfa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:20:01 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 11 Jul 2017 23:27:09 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 11 Jul 2017 23:27:18 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:27:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Jul 2017 16:27:47 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Jul 2017 16:27:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:27:48 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:56:52 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:58:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:58:12 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:58:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:58:14 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:58:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302ce48cc18573629a7038cc1dc77c9308a93680ed8657560090d50c7aa64589`  
		Last Modified: Tue, 11 Jul 2017 23:41:38 GMT  
		Size: 10.5 MB (10549466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c17ba3935d6420981a057d8afb8bb2728c77ecca498088a9e17dbd595df019`  
		Last Modified: Tue, 11 Jul 2017 23:41:36 GMT  
		Size: 908.0 KB (907953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a86fd5d5e80035eb3ca0541f22236b30988a7d1daeb1c1642f69eaf428b2bda`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 8.3 KB (8314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6139c361248ab8a8bcd75289e71dfeaf1698a44ec2cf12ced72593d8ef9e84d`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 1.3 MB (1340408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a700ec450ffcebc177ab43e3ffdd9f5f49723afe7473558a1dbece42fff5646`  
		Last Modified: Wed, 12 Jul 2017 16:29:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db228789f699125d7a6bd08b5b87c0a67081ec0784005dcd61f79987a2a843`  
		Last Modified: Tue, 18 Jul 2017 22:59:41 GMT  
		Size: 37.4 MB (37392555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4133c4fb9cdec16b534f2bcc22fa28e97f3cf8bfeb42bf7b14aa8ecc5bf126`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fdc920c323dc13bfe24d23c5319bed8ef932af53f98e487f968ffec28b6b2`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:acda68ca051787139a162b8748dfd5efbccb45f98899ad0d76f30220c65dd47b
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52584644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ddd161b693c38f8f99875ad8166e9c04ee8814ca8bc9b276ad83aa9b2dfa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:20:01 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 11 Jul 2017 23:27:09 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 11 Jul 2017 23:27:18 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:27:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Jul 2017 16:27:47 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Jul 2017 16:27:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:27:48 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:56:52 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:58:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:58:12 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:58:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:58:14 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:58:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302ce48cc18573629a7038cc1dc77c9308a93680ed8657560090d50c7aa64589`  
		Last Modified: Tue, 11 Jul 2017 23:41:38 GMT  
		Size: 10.5 MB (10549466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c17ba3935d6420981a057d8afb8bb2728c77ecca498088a9e17dbd595df019`  
		Last Modified: Tue, 11 Jul 2017 23:41:36 GMT  
		Size: 908.0 KB (907953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a86fd5d5e80035eb3ca0541f22236b30988a7d1daeb1c1642f69eaf428b2bda`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 8.3 KB (8314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6139c361248ab8a8bcd75289e71dfeaf1698a44ec2cf12ced72593d8ef9e84d`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 1.3 MB (1340408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a700ec450ffcebc177ab43e3ffdd9f5f49723afe7473558a1dbece42fff5646`  
		Last Modified: Wed, 12 Jul 2017 16:29:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db228789f699125d7a6bd08b5b87c0a67081ec0784005dcd61f79987a2a843`  
		Last Modified: Tue, 18 Jul 2017 22:59:41 GMT  
		Size: 37.4 MB (37392555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4133c4fb9cdec16b534f2bcc22fa28e97f3cf8bfeb42bf7b14aa8ecc5bf126`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fdc920c323dc13bfe24d23c5319bed8ef932af53f98e487f968ffec28b6b2`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:acda68ca051787139a162b8748dfd5efbccb45f98899ad0d76f30220c65dd47b
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52584644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ddd161b693c38f8f99875ad8166e9c04ee8814ca8bc9b276ad83aa9b2dfa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:20:01 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 11 Jul 2017 23:27:09 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 11 Jul 2017 23:27:18 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:27:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Jul 2017 16:27:47 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Jul 2017 16:27:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:27:48 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:56:52 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:58:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:58:12 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:58:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:58:14 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:58:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302ce48cc18573629a7038cc1dc77c9308a93680ed8657560090d50c7aa64589`  
		Last Modified: Tue, 11 Jul 2017 23:41:38 GMT  
		Size: 10.5 MB (10549466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c17ba3935d6420981a057d8afb8bb2728c77ecca498088a9e17dbd595df019`  
		Last Modified: Tue, 11 Jul 2017 23:41:36 GMT  
		Size: 908.0 KB (907953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a86fd5d5e80035eb3ca0541f22236b30988a7d1daeb1c1642f69eaf428b2bda`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 8.3 KB (8314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6139c361248ab8a8bcd75289e71dfeaf1698a44ec2cf12ced72593d8ef9e84d`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 1.3 MB (1340408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a700ec450ffcebc177ab43e3ffdd9f5f49723afe7473558a1dbece42fff5646`  
		Last Modified: Wed, 12 Jul 2017 16:29:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db228789f699125d7a6bd08b5b87c0a67081ec0784005dcd61f79987a2a843`  
		Last Modified: Tue, 18 Jul 2017 22:59:41 GMT  
		Size: 37.4 MB (37392555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4133c4fb9cdec16b534f2bcc22fa28e97f3cf8bfeb42bf7b14aa8ecc5bf126`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fdc920c323dc13bfe24d23c5319bed8ef932af53f98e487f968ffec28b6b2`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:acda68ca051787139a162b8748dfd5efbccb45f98899ad0d76f30220c65dd47b
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52584644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824ddd161b693c38f8f99875ad8166e9c04ee8814ca8bc9b276ad83aa9b2dfa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:20:01 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 11 Jul 2017 23:27:09 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:18 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 11 Jul 2017 23:27:18 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:27:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Jul 2017 16:27:47 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 12 Jul 2017 16:27:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:27:48 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Jul 2017 22:56:52 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 18 Jul 2017 22:58:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 18 Jul 2017 22:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Jul 2017 22:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 18 Jul 2017 22:58:12 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Jul 2017 22:58:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 18 Jul 2017 22:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 22:58:14 GMT
EXPOSE 2368/tcp
# Tue, 18 Jul 2017 22:58:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302ce48cc18573629a7038cc1dc77c9308a93680ed8657560090d50c7aa64589`  
		Last Modified: Tue, 11 Jul 2017 23:41:38 GMT  
		Size: 10.5 MB (10549466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c17ba3935d6420981a057d8afb8bb2728c77ecca498088a9e17dbd595df019`  
		Last Modified: Tue, 11 Jul 2017 23:41:36 GMT  
		Size: 908.0 KB (907953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a86fd5d5e80035eb3ca0541f22236b30988a7d1daeb1c1642f69eaf428b2bda`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 8.3 KB (8314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6139c361248ab8a8bcd75289e71dfeaf1698a44ec2cf12ced72593d8ef9e84d`  
		Last Modified: Wed, 12 Jul 2017 16:29:33 GMT  
		Size: 1.3 MB (1340408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a700ec450ffcebc177ab43e3ffdd9f5f49723afe7473558a1dbece42fff5646`  
		Last Modified: Wed, 12 Jul 2017 16:29:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db228789f699125d7a6bd08b5b87c0a67081ec0784005dcd61f79987a2a843`  
		Last Modified: Tue, 18 Jul 2017 22:59:41 GMT  
		Size: 37.4 MB (37392555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4133c4fb9cdec16b534f2bcc22fa28e97f3cf8bfeb42bf7b14aa8ecc5bf126`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fdc920c323dc13bfe24d23c5319bed8ef932af53f98e487f968ffec28b6b2`  
		Last Modified: Tue, 18 Jul 2017 22:59:27 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
