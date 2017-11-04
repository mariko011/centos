<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.16`](#ghost116)
-	[`ghost:1.16.2`](#ghost1162)
-	[`ghost:1.16.2-alpine`](#ghost1162-alpine)
-	[`ghost:1.16-alpine`](#ghost116-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:e296010528ec13ad7083c94b30c060a23ea238cf0bc0c980e966faa183058e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:e87ca826930aac854b1157de67eee2f5b2df6fb01b3af5ba79a6a50483c60d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113691834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb2773ad0fd32abf6954ec747db0bc2901c4ee8f2643c4b17548aa920c85bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:34:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 04 Nov 2017 16:34:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:34:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:38:00 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:38:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:38:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:38:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:38:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 16:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:38:03 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:38:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980267550d9ea08708e1a3e0053c2f3377237c53adf90035c68bd5154a1d9d1`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e1ae0cf6bcc1f6cfd4090e7030d49625b13f165a6a6208c28a8e73e779efd8`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6f03387f9f75b1ee5069b671a7943b46aba1ecf1e5af5f36077959fcf8e545`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb090dd5e033eccc84ca996f227d9c11e46ce6fc570a675eda649ba5744b265e`  
		Last Modified: Sat, 04 Nov 2017 16:45:52 GMT  
		Size: 25.5 MB (25478745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d545cb4127d369d700c7036bed396484070bf53c79d90da4b4ff85bd60d4d35`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb87fe338ead61aeae9493c9e2b26457e8fbffe73a295aaf54f77277281d4ea3`  
		Last Modified: Sat, 04 Nov 2017 16:45:33 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4a11deb2167b8cc1f8a261841cd1051e6421e28f1e6e2610267260536ed50b`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2387acbca035ace818d5009226601487f05b533a5e0c6c50ef900a079ece0242
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114265934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06181c9f59a3354d6a91de8e2375895338d553eaad58e4099c42ddb121b8776a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:13:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 02:13:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:13:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 02:13:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 02:16:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 02:16:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 02:16:52 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 02:16:52 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 02:16:53 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 02:16:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 02:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:16:57 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:16:57 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aa45851ad3a78cdf52fa755a4408978da1ac0619feb915b04620230d08dc5c`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa444cc849f349b23f39e712a075e4067f29a21d30a804d12b6e5743bb0ea96`  
		Last Modified: Fri, 03 Nov 2017 02:18:53 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecffe2abcb32884e0644d5f34de271b1c9a4c187885c3bdc290f8a70e300a61`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f632d36c55ebf82d887b458b9cb04e20888bed1411b511a17895ae91b82bc0`  
		Last Modified: Fri, 03 Nov 2017 02:19:04 GMT  
		Size: 31.8 MB (31828204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0397547e502ca98c364c87f523d7ea226b1359a3d5c18be3e937c2b1000c62a`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fa0b84804fef69286110dd71277138f39e4c6efba3a064c5f1a35ecdd76a89`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36c6b4eb1c8f675f9a29047fc197a9f075542a0604b0c33118af2c253d54ec5`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0268d6826fd8bd12e3feba1b779df85e8e4e1e89720d984c18af8ef3cd194b15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0022e0229125cfef35021a2c083b472df10d46d8e86eb753b41c6427e57124b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:10:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 12:10:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 12:10:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 12:10:27 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 12:10:28 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 12:15:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 12:15:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 12:15:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 12:15:38 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 12:15:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 12:15:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 12:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 12:15:42 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 12:15:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95be936befb70cbc6cace89f56593b5106e710bcb4937150773bb412670f87e`  
		Last Modified: Fri, 03 Nov 2017 12:18:17 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd7de11115ae230600af45e64abdfbb7ffa5f43b12785449e2ee2a24788db1`  
		Last Modified: Fri, 03 Nov 2017 12:18:18 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5127fd672ac3881b2a9e0afa474e37d34209cf3130184ff8d458faabbf6b6f5`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1985ffeed81d8504153bdf97e84a9ca5c815c9c507e98906d4beb06a7c1da3`  
		Last Modified: Fri, 03 Nov 2017 12:18:32 GMT  
		Size: 32.2 MB (32164937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed2455225e7a6bcf6a553ee6ecf26a74665ad883a087e8bfe77dcaaf928de6`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f09b4c881cc74b4c57020a9fa3e3e2802d4f0f007ce236b889d6413bdcc654`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd14776c493da18551023a92aaf63100bfc9f3953b42a5e27011ef2f27b6929`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:90b4d8e7921b842e1b3b059928ebe15cfef2169b930a66dfd3856945d28c9d8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119727724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857540224beb50a7a15a732cf4ddcb4135eeddbaec3b728007abe89bcc787e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:48:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 21:48:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:48:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 21:48:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 21:48:32 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 21:48:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 21:53:34 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 21:53:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 21:53:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 21:53:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 21:53:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 21:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 21:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:54:00 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:54:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1adf3d93359b8339196785a2d243f46607bd4924aaaf8ad297fe4ae686d4ac`  
		Last Modified: Thu, 02 Nov 2017 21:57:10 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b939426710f9e111eca39e9cd2df077887d6db3f6843a1df7466974c8287686`  
		Last Modified: Thu, 02 Nov 2017 21:57:11 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5e1afff7d59a318da1deb6df2d822d864d228e357fb75cc9af9f3b0fef938`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd5f7b54370ccf03528396ed3435061675db2ebee1983817796a60acc5db081`  
		Last Modified: Thu, 02 Nov 2017 21:57:19 GMT  
		Size: 32.6 MB (32635149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f64d220473afcbf277fcf49624ef154f7bb4c3795af533db8c7b26203f0ee2`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a0058e41ba608fe3b92170771dbea2e80eb9c7937e04820681daaf2217b0f9`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89041eddf8b1eec92f4ed3d3b025cf837af6651298b9390c6e4763302d5d105`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:0eee11e55dfe00dcf26df67818c43701cdcf6b548bdc0f7e3d921015be43b0e5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121403007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72a0a7f12a95710763324d4ef2597a44527748c0e44f934c3721c3fb0f01f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:24:48 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 00:24:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:24:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 00:24:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 00:24:53 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 00:24:54 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 00:28:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 00:28:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 00:28:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 00:28:24 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 00:28:24 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 00:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 00:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:28:26 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:28:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b4adea88e373da148e20160c19e33a5e7e3ff5abf2ebdd4a29379fb6ee50e7`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 4.5 KB (4457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee433b259586105a510b736687cef4584753af038ef9bfb269a05914e388867`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9d802cf0b21d2de202e19ed7d70b8d7a54e5b462bd50ee3983190d798c09d`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e13f83b6dd9bee1c22de94a69b6ea392c6119bad2b19dae6e4cc0d7f3ef9d2`  
		Last Modified: Fri, 03 Nov 2017 00:30:11 GMT  
		Size: 32.7 MB (32671919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6678a38f27e6884e4546f65d41e7b9a7573666c4e6de6d8fdb3858431bf464`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d10ad10dd1a8c2074cf78217775747192bc28ff461fb9f05d537950503a40b8`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dcfa3518ec4f3c7bc54af1fa9dc36ea9a0cbe4e64ca52dabd0f090e0d73f1b`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:e296010528ec13ad7083c94b30c060a23ea238cf0bc0c980e966faa183058e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:e87ca826930aac854b1157de67eee2f5b2df6fb01b3af5ba79a6a50483c60d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113691834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb2773ad0fd32abf6954ec747db0bc2901c4ee8f2643c4b17548aa920c85bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:34:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 04 Nov 2017 16:34:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:34:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:38:00 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:38:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:38:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:38:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:38:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 16:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:38:03 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:38:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980267550d9ea08708e1a3e0053c2f3377237c53adf90035c68bd5154a1d9d1`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e1ae0cf6bcc1f6cfd4090e7030d49625b13f165a6a6208c28a8e73e779efd8`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6f03387f9f75b1ee5069b671a7943b46aba1ecf1e5af5f36077959fcf8e545`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb090dd5e033eccc84ca996f227d9c11e46ce6fc570a675eda649ba5744b265e`  
		Last Modified: Sat, 04 Nov 2017 16:45:52 GMT  
		Size: 25.5 MB (25478745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d545cb4127d369d700c7036bed396484070bf53c79d90da4b4ff85bd60d4d35`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb87fe338ead61aeae9493c9e2b26457e8fbffe73a295aaf54f77277281d4ea3`  
		Last Modified: Sat, 04 Nov 2017 16:45:33 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4a11deb2167b8cc1f8a261841cd1051e6421e28f1e6e2610267260536ed50b`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2387acbca035ace818d5009226601487f05b533a5e0c6c50ef900a079ece0242
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114265934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06181c9f59a3354d6a91de8e2375895338d553eaad58e4099c42ddb121b8776a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:13:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 02:13:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:13:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 02:13:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 02:16:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 02:16:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 02:16:52 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 02:16:52 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 02:16:53 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 02:16:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 02:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:16:57 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:16:57 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aa45851ad3a78cdf52fa755a4408978da1ac0619feb915b04620230d08dc5c`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa444cc849f349b23f39e712a075e4067f29a21d30a804d12b6e5743bb0ea96`  
		Last Modified: Fri, 03 Nov 2017 02:18:53 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecffe2abcb32884e0644d5f34de271b1c9a4c187885c3bdc290f8a70e300a61`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f632d36c55ebf82d887b458b9cb04e20888bed1411b511a17895ae91b82bc0`  
		Last Modified: Fri, 03 Nov 2017 02:19:04 GMT  
		Size: 31.8 MB (31828204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0397547e502ca98c364c87f523d7ea226b1359a3d5c18be3e937c2b1000c62a`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fa0b84804fef69286110dd71277138f39e4c6efba3a064c5f1a35ecdd76a89`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36c6b4eb1c8f675f9a29047fc197a9f075542a0604b0c33118af2c253d54ec5`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0268d6826fd8bd12e3feba1b779df85e8e4e1e89720d984c18af8ef3cd194b15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0022e0229125cfef35021a2c083b472df10d46d8e86eb753b41c6427e57124b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:10:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 12:10:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 12:10:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 12:10:27 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 12:10:28 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 12:15:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 12:15:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 12:15:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 12:15:38 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 12:15:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 12:15:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 12:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 12:15:42 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 12:15:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95be936befb70cbc6cace89f56593b5106e710bcb4937150773bb412670f87e`  
		Last Modified: Fri, 03 Nov 2017 12:18:17 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd7de11115ae230600af45e64abdfbb7ffa5f43b12785449e2ee2a24788db1`  
		Last Modified: Fri, 03 Nov 2017 12:18:18 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5127fd672ac3881b2a9e0afa474e37d34209cf3130184ff8d458faabbf6b6f5`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1985ffeed81d8504153bdf97e84a9ca5c815c9c507e98906d4beb06a7c1da3`  
		Last Modified: Fri, 03 Nov 2017 12:18:32 GMT  
		Size: 32.2 MB (32164937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed2455225e7a6bcf6a553ee6ecf26a74665ad883a087e8bfe77dcaaf928de6`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f09b4c881cc74b4c57020a9fa3e3e2802d4f0f007ce236b889d6413bdcc654`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd14776c493da18551023a92aaf63100bfc9f3953b42a5e27011ef2f27b6929`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:90b4d8e7921b842e1b3b059928ebe15cfef2169b930a66dfd3856945d28c9d8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119727724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857540224beb50a7a15a732cf4ddcb4135eeddbaec3b728007abe89bcc787e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:48:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 21:48:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:48:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 21:48:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 21:48:32 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 21:48:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 21:53:34 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 21:53:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 21:53:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 21:53:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 21:53:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 21:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 21:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:54:00 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:54:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1adf3d93359b8339196785a2d243f46607bd4924aaaf8ad297fe4ae686d4ac`  
		Last Modified: Thu, 02 Nov 2017 21:57:10 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b939426710f9e111eca39e9cd2df077887d6db3f6843a1df7466974c8287686`  
		Last Modified: Thu, 02 Nov 2017 21:57:11 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5e1afff7d59a318da1deb6df2d822d864d228e357fb75cc9af9f3b0fef938`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd5f7b54370ccf03528396ed3435061675db2ebee1983817796a60acc5db081`  
		Last Modified: Thu, 02 Nov 2017 21:57:19 GMT  
		Size: 32.6 MB (32635149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f64d220473afcbf277fcf49624ef154f7bb4c3795af533db8c7b26203f0ee2`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a0058e41ba608fe3b92170771dbea2e80eb9c7937e04820681daaf2217b0f9`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89041eddf8b1eec92f4ed3d3b025cf837af6651298b9390c6e4763302d5d105`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:0eee11e55dfe00dcf26df67818c43701cdcf6b548bdc0f7e3d921015be43b0e5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121403007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72a0a7f12a95710763324d4ef2597a44527748c0e44f934c3721c3fb0f01f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:24:48 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 00:24:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:24:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 00:24:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 00:24:53 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 00:24:54 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 00:28:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 00:28:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 00:28:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 00:28:24 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 00:28:24 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 00:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 00:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:28:26 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:28:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b4adea88e373da148e20160c19e33a5e7e3ff5abf2ebdd4a29379fb6ee50e7`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 4.5 KB (4457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee433b259586105a510b736687cef4584753af038ef9bfb269a05914e388867`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9d802cf0b21d2de202e19ed7d70b8d7a54e5b462bd50ee3983190d798c09d`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e13f83b6dd9bee1c22de94a69b6ea392c6119bad2b19dae6e4cc0d7f3ef9d2`  
		Last Modified: Fri, 03 Nov 2017 00:30:11 GMT  
		Size: 32.7 MB (32671919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6678a38f27e6884e4546f65d41e7b9a7573666c4e6de6d8fdb3858431bf464`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d10ad10dd1a8c2074cf78217775747192bc28ff461fb9f05d537950503a40b8`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dcfa3518ec4f3c7bc54af1fa9dc36ea9a0cbe4e64ca52dabd0f090e0d73f1b`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:e296010528ec13ad7083c94b30c060a23ea238cf0bc0c980e966faa183058e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.12` - linux; amd64

```console
$ docker pull ghost@sha256:e87ca826930aac854b1157de67eee2f5b2df6fb01b3af5ba79a6a50483c60d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113691834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb2773ad0fd32abf6954ec747db0bc2901c4ee8f2643c4b17548aa920c85bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:34:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 04 Nov 2017 16:34:49 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:34:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:34:55 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:38:00 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:38:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:38:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:38:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:38:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:38:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 16:38:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:38:03 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:38:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980267550d9ea08708e1a3e0053c2f3377237c53adf90035c68bd5154a1d9d1`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e1ae0cf6bcc1f6cfd4090e7030d49625b13f165a6a6208c28a8e73e779efd8`  
		Last Modified: Sat, 04 Nov 2017 16:45:34 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6f03387f9f75b1ee5069b671a7943b46aba1ecf1e5af5f36077959fcf8e545`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb090dd5e033eccc84ca996f227d9c11e46ce6fc570a675eda649ba5744b265e`  
		Last Modified: Sat, 04 Nov 2017 16:45:52 GMT  
		Size: 25.5 MB (25478745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d545cb4127d369d700c7036bed396484070bf53c79d90da4b4ff85bd60d4d35`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb87fe338ead61aeae9493c9e2b26457e8fbffe73a295aaf54f77277281d4ea3`  
		Last Modified: Sat, 04 Nov 2017 16:45:33 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4a11deb2167b8cc1f8a261841cd1051e6421e28f1e6e2610267260536ed50b`  
		Last Modified: Sat, 04 Nov 2017 16:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2387acbca035ace818d5009226601487f05b533a5e0c6c50ef900a079ece0242
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114265934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06181c9f59a3354d6a91de8e2375895338d553eaad58e4099c42ddb121b8776a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:13:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 02:13:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:13:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 02:13:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 02:13:21 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 02:16:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 02:16:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 02:16:52 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 02:16:52 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 02:16:53 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 02:16:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 02:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:16:57 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:16:57 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aa45851ad3a78cdf52fa755a4408978da1ac0619feb915b04620230d08dc5c`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa444cc849f349b23f39e712a075e4067f29a21d30a804d12b6e5743bb0ea96`  
		Last Modified: Fri, 03 Nov 2017 02:18:53 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecffe2abcb32884e0644d5f34de271b1c9a4c187885c3bdc290f8a70e300a61`  
		Last Modified: Fri, 03 Nov 2017 02:18:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f632d36c55ebf82d887b458b9cb04e20888bed1411b511a17895ae91b82bc0`  
		Last Modified: Fri, 03 Nov 2017 02:19:04 GMT  
		Size: 31.8 MB (31828204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0397547e502ca98c364c87f523d7ea226b1359a3d5c18be3e937c2b1000c62a`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fa0b84804fef69286110dd71277138f39e4c6efba3a064c5f1a35ecdd76a89`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36c6b4eb1c8f675f9a29047fc197a9f075542a0604b0c33118af2c253d54ec5`  
		Last Modified: Fri, 03 Nov 2017 02:18:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:0268d6826fd8bd12e3feba1b779df85e8e4e1e89720d984c18af8ef3cd194b15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0022e0229125cfef35021a2c083b472df10d46d8e86eb753b41c6427e57124b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:10:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 12:10:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 12:10:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 12:10:27 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 12:10:28 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 12:15:33 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 12:15:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 12:15:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 12:15:38 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 12:15:38 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 12:15:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 12:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 12:15:42 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 12:15:42 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95be936befb70cbc6cace89f56593b5106e710bcb4937150773bb412670f87e`  
		Last Modified: Fri, 03 Nov 2017 12:18:17 GMT  
		Size: 4.5 KB (4458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd7de11115ae230600af45e64abdfbb7ffa5f43b12785449e2ee2a24788db1`  
		Last Modified: Fri, 03 Nov 2017 12:18:18 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5127fd672ac3881b2a9e0afa474e37d34209cf3130184ff8d458faabbf6b6f5`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1985ffeed81d8504153bdf97e84a9ca5c815c9c507e98906d4beb06a7c1da3`  
		Last Modified: Fri, 03 Nov 2017 12:18:32 GMT  
		Size: 32.2 MB (32164937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ed2455225e7a6bcf6a553ee6ecf26a74665ad883a087e8bfe77dcaaf928de6`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f09b4c881cc74b4c57020a9fa3e3e2802d4f0f007ce236b889d6413bdcc654`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd14776c493da18551023a92aaf63100bfc9f3953b42a5e27011ef2f27b6929`  
		Last Modified: Fri, 03 Nov 2017 12:18:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:90b4d8e7921b842e1b3b059928ebe15cfef2169b930a66dfd3856945d28c9d8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119727724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857540224beb50a7a15a732cf4ddcb4135eeddbaec3b728007abe89bcc787e0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:48:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 21:48:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:48:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 21:48:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 21:48:32 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 21:48:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 21:53:34 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 21:53:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 21:53:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 21:53:43 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 21:53:46 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 21:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 21:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:54:00 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:54:03 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1adf3d93359b8339196785a2d243f46607bd4924aaaf8ad297fe4ae686d4ac`  
		Last Modified: Thu, 02 Nov 2017 21:57:10 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b939426710f9e111eca39e9cd2df077887d6db3f6843a1df7466974c8287686`  
		Last Modified: Thu, 02 Nov 2017 21:57:11 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5e1afff7d59a318da1deb6df2d822d864d228e357fb75cc9af9f3b0fef938`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd5f7b54370ccf03528396ed3435061675db2ebee1983817796a60acc5db081`  
		Last Modified: Thu, 02 Nov 2017 21:57:19 GMT  
		Size: 32.6 MB (32635149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f64d220473afcbf277fcf49624ef154f7bb4c3795af533db8c7b26203f0ee2`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a0058e41ba608fe3b92170771dbea2e80eb9c7937e04820681daaf2217b0f9`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89041eddf8b1eec92f4ed3d3b025cf837af6651298b9390c6e4763302d5d105`  
		Last Modified: Thu, 02 Nov 2017 21:57:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; s390x

```console
$ docker pull ghost@sha256:0eee11e55dfe00dcf26df67818c43701cdcf6b548bdc0f7e3d921015be43b0e5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121403007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72a0a7f12a95710763324d4ef2597a44527748c0e44f934c3721c3fb0f01f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:24:48 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 03 Nov 2017 00:24:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:24:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 00:24:52 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 03 Nov 2017 00:24:53 GMT
WORKDIR /usr/src/ghost
# Fri, 03 Nov 2017 00:24:54 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 03 Nov 2017 00:28:20 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 03 Nov 2017 00:28:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 03 Nov 2017 00:28:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 03 Nov 2017 00:28:24 GMT
VOLUME [/var/lib/ghost]
# Fri, 03 Nov 2017 00:28:24 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 03 Nov 2017 00:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 00:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:28:26 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:28:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b4adea88e373da148e20160c19e33a5e7e3ff5abf2ebdd4a29379fb6ee50e7`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 4.5 KB (4457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee433b259586105a510b736687cef4584753af038ef9bfb269a05914e388867`  
		Last Modified: Fri, 03 Nov 2017 00:30:00 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9d802cf0b21d2de202e19ed7d70b8d7a54e5b462bd50ee3983190d798c09d`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e13f83b6dd9bee1c22de94a69b6ea392c6119bad2b19dae6e4cc0d7f3ef9d2`  
		Last Modified: Fri, 03 Nov 2017 00:30:11 GMT  
		Size: 32.7 MB (32671919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6678a38f27e6884e4546f65d41e7b9a7573666c4e6de6d8fdb3858431bf464`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d10ad10dd1a8c2074cf78217775747192bc28ff461fb9f05d537950503a40b8`  
		Last Modified: Fri, 03 Nov 2017 00:29:59 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dcfa3518ec4f3c7bc54af1fa9dc36ea9a0cbe4e64ca52dabd0f090e0d73f1b`  
		Last Modified: Fri, 03 Nov 2017 00:29:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:e093815a7376486f50df4d861e44752369ba88a99a193e32abb0091b137c19e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a198dcd2baa5247a0ef1a0ccadadd99fc70580960e861c21b9ba2da51342d080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45433476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ddc25a63b4e5602dcf706f557e541efe362d331364a0cbd72f532b61d2c274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:42:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:42:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:42:07 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:42:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:42:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:42:08 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:42:08 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccacb7e9fed49d92db8e684454328508a305e5ba5693715e87ed1c511220464`  
		Last Modified: Sat, 04 Nov 2017 16:46:11 GMT  
		Size: 1.4 MB (1353559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7d28580b178593259d3dab5f0b3d80a0bd2c9143cedf61e9df99a02e41ea71`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de911bfdf366dfa1653ec4cc982471a6827ab8ae587375200d0a93260ec8af3`  
		Last Modified: Sat, 04 Nov 2017 16:46:27 GMT  
		Size: 25.2 MB (25230769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13809e4e49d2889cb3980b1cd54482eacb3835cbcf4658403f467de15abea5c`  
		Last Modified: Sat, 04 Nov 2017 16:46:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd86e1d93d3f2581d3cc73f824aee3119178c9149d3c81b7efe3e923414c0b1`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:e093815a7376486f50df4d861e44752369ba88a99a193e32abb0091b137c19e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a198dcd2baa5247a0ef1a0ccadadd99fc70580960e861c21b9ba2da51342d080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45433476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ddc25a63b4e5602dcf706f557e541efe362d331364a0cbd72f532b61d2c274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:42:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:42:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:42:07 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:42:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:42:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:42:08 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:42:08 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccacb7e9fed49d92db8e684454328508a305e5ba5693715e87ed1c511220464`  
		Last Modified: Sat, 04 Nov 2017 16:46:11 GMT  
		Size: 1.4 MB (1353559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7d28580b178593259d3dab5f0b3d80a0bd2c9143cedf61e9df99a02e41ea71`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de911bfdf366dfa1653ec4cc982471a6827ab8ae587375200d0a93260ec8af3`  
		Last Modified: Sat, 04 Nov 2017 16:46:27 GMT  
		Size: 25.2 MB (25230769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13809e4e49d2889cb3980b1cd54482eacb3835cbcf4658403f467de15abea5c`  
		Last Modified: Sat, 04 Nov 2017 16:46:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd86e1d93d3f2581d3cc73f824aee3119178c9149d3c81b7efe3e923414c0b1`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:e093815a7376486f50df4d861e44752369ba88a99a193e32abb0091b137c19e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:a198dcd2baa5247a0ef1a0ccadadd99fc70580960e861c21b9ba2da51342d080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45433476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ddc25a63b4e5602dcf706f557e541efe362d331364a0cbd72f532b61d2c274`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:41:13 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
WORKDIR /usr/src/ghost
# Sat, 04 Nov 2017 16:41:13 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 04 Nov 2017 16:42:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 04 Nov 2017 16:42:06 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 04 Nov 2017 16:42:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 04 Nov 2017 16:42:07 GMT
VOLUME [/var/lib/ghost]
# Sat, 04 Nov 2017 16:42:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:42:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:42:08 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:42:08 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccacb7e9fed49d92db8e684454328508a305e5ba5693715e87ed1c511220464`  
		Last Modified: Sat, 04 Nov 2017 16:46:11 GMT  
		Size: 1.4 MB (1353559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7d28580b178593259d3dab5f0b3d80a0bd2c9143cedf61e9df99a02e41ea71`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de911bfdf366dfa1653ec4cc982471a6827ab8ae587375200d0a93260ec8af3`  
		Last Modified: Sat, 04 Nov 2017 16:46:27 GMT  
		Size: 25.2 MB (25230769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13809e4e49d2889cb3980b1cd54482eacb3835cbcf4658403f467de15abea5c`  
		Last Modified: Sat, 04 Nov 2017 16:46:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd86e1d93d3f2581d3cc73f824aee3119178c9149d3c81b7efe3e923414c0b1`  
		Last Modified: Sat, 04 Nov 2017 16:46:09 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:7535cf3e9d06ed6d4f97bd340ab062bd26d9883353203f0c5469e065728e22fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:5ab37ce7a24f764089e8c095eae461c2662abd5e71f2caa1556cc85ae282ffbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221210905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1aec6c81b37db546279285975f878d96dff05589edd677db0a6b29778dcc08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:28:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:29:02 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:29:02 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:29:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:31:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:31:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 16:31:15 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:31:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:31:16 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 16:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:31:16 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:31:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc69c23e3104963e91c38d5fa72126b12d3a3957cd25554fc6bed95af86f3a`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1d3abae9511b5fc32f37587c95a802954d23fd3d0d5baa66285bf6201c770`  
		Last Modified: Sat, 04 Nov 2017 16:42:45 GMT  
		Size: 28.9 MB (28885739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9bf20e571fbe3d138e09ac6bc347cf370f348b1262658b6ac83c6844fc0a3c`  
		Last Modified: Sat, 04 Nov 2017 16:43:21 GMT  
		Size: 96.7 MB (96705514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0480ebc9f001937b1f183a7429d501f03ef7d5c58b200b9cff851bac3f069a`  
		Last Modified: Sat, 04 Nov 2017 16:42:25 GMT  
		Size: 7.4 MB (7411554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58234353d7aacf9dcc0c895efac6ba183324a113c9a24201be2edd8460607357`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:5b121f41aa5736dfcf355b1bd24afc58e2242d117fa424f48046a5df4534288d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213465404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd847468d0a5c47f55a43caa92848ff9b24ef3e94c0c4674dfb786296cc61b46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:10:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:10:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 11:55:35 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 11:55:36 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 11:56:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 11:57:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 12:00:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 12:00:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 12:00:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 12:00:50 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 12:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 12:00:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 12:00:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c753ba9b290099b350d8c65c3e5ba5239df36c89e08e300eb21568f796f002`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd2876a1299d5c381bc7532d72d4c978f5f36baec99256cd0fb5400f4777182`  
		Last Modified: Sat, 04 Nov 2017 12:01:19 GMT  
		Size: 23.7 MB (23685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75588985ef3a2df01c8bef20688a8004406c46ecf8125ead5d63159e0e480068`  
		Last Modified: Sat, 04 Nov 2017 12:01:44 GMT  
		Size: 91.9 MB (91944714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1991c9560bd4169c2f4d8d102aa5d8845f29fdb58186f180af88eefe65f80a44`  
		Last Modified: Sat, 04 Nov 2017 12:01:15 GMT  
		Size: 15.4 MB (15402558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c945b087776494a0f285eafd4ac93cde3624d9cb563eb04e32ae508630eace9f`  
		Last Modified: Sat, 04 Nov 2017 12:01:11 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:4ec89c9d976d511561dafacb347e93ffb868fce3dcde6e590fc4a5d4a60627f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216342064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b97a1c5ee02f12f235b9c0d8c4b80963247d131eeff8e96544eb1a17087a2a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:06:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:06:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:10:58 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 18:10:58 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 18:12:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 18:12:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 18:14:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 18:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 18:18:59 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 18:19:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 18:19:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 18:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:19:02 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 18:19:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80c13b0a3a43acb2988b6d24d1d2a82ab8a288bd842269635cde9b4f3897db2`  
		Last Modified: Fri, 03 Nov 2017 12:16:13 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49c699c2adb1d47e5931ae1224512e6365ba170d7064a083724d210416905ed`  
		Last Modified: Sat, 04 Nov 2017 18:19:54 GMT  
		Size: 23.7 MB (23685658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2bdef759a9f7388e1c9404a7b356c62b4d43699457cc1e490cb60fd80b0fc0`  
		Last Modified: Sat, 04 Nov 2017 18:20:25 GMT  
		Size: 91.9 MB (91945446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee8b8b8ddd823fec59e35a55e5ac28d6296a7a1c42e69ed68d372257d959f96`  
		Last Modified: Sat, 04 Nov 2017 18:19:49 GMT  
		Size: 15.7 MB (15739129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79284df0d66e4c79673204f5ca47de8e588edc778d45f2d043d40cb3295cb5`  
		Last Modified: Sat, 04 Nov 2017 18:19:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:35bd66253607472205925b18d740f0a1fff1fba8b648b21edbc16be7a3d8407b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218837355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e46e4521ee12c800dc111205affde60f3719c6a0bfef5527cf3ccb9c1cba06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:44:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:45:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 01:26:36 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 01:26:38 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 01:27:33 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 01:27:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 01:27:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 01:27:42 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 01:28:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 01:34:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 01:34:33 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 01:34:36 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 01:34:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 01:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:34:43 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 01:34:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77bc11afaacdefdf142aca0af9122d88f797aeeb9edfb5f308931c5cc2ca442`  
		Last Modified: Thu, 02 Nov 2017 21:54:28 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ed6c1d330d0071a90daccd73de0fb1e948404739d286e122cc46e06372c62`  
		Last Modified: Sat, 04 Nov 2017 01:35:07 GMT  
		Size: 23.7 MB (23683429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09871e618213bf82012c7a23dfff7e1c957f8fb1c3e365206c16754fed58fefb`  
		Last Modified: Sat, 04 Nov 2017 01:35:27 GMT  
		Size: 91.9 MB (91945254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dddd4c5b960c5c3116922e6c59b1b6692a79d963df5703def467071cb8611c9`  
		Last Modified: Sat, 04 Nov 2017 01:35:04 GMT  
		Size: 16.1 MB (16121188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbea4b919fd115487025581e83f899e18e3612208281cfac2a0cd161646ea3a`  
		Last Modified: Sat, 04 Nov 2017 01:34:59 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:42859da5fe06df7ef0082eede270e8df10c6f2e5f933c8786a7a3bc58e781eb6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220512007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c46045263c6d7df8c9a025d918d379533a5b9d17406da60a1aa5a29665a79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:19:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:20:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 14:22:29 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 14:22:30 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 14:23:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 14:24:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 14:24:57 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 14:24:58 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 14:24:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 14:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:24:58 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 14:24:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b93f41b796684dc0379d364c291537fb3d0e7d12cc41e338d81d6fd4e9e8d6`  
		Last Modified: Fri, 03 Nov 2017 00:28:51 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9651b62a79c03842f248124ed9d5843b51a92b8a1470da562aa50f758bcef`  
		Last Modified: Sat, 04 Nov 2017 14:25:18 GMT  
		Size: 23.7 MB (23683794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba84838d4f4b73159de8b5842b102181c9b7280ef8f6e3af516694f1d7bd0e`  
		Last Modified: Sat, 04 Nov 2017 14:25:30 GMT  
		Size: 91.9 MB (91944115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c206ed45568a0a4b6731a5c7788917c4e55d1113c66e0e4a859ec539d6db9`  
		Last Modified: Sat, 04 Nov 2017 14:25:16 GMT  
		Size: 16.2 MB (16157998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cc63dc580ab91711bf9a11fc0e3ff83b472ca3a924f441ca5c67056d6c8df7`  
		Last Modified: Sat, 04 Nov 2017 14:25:13 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16`

```console
$ docker pull ghost@sha256:7535cf3e9d06ed6d4f97bd340ab062bd26d9883353203f0c5469e065728e22fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.16` - linux; amd64

```console
$ docker pull ghost@sha256:5ab37ce7a24f764089e8c095eae461c2662abd5e71f2caa1556cc85ae282ffbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221210905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1aec6c81b37db546279285975f878d96dff05589edd677db0a6b29778dcc08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:28:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:29:02 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:29:02 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:29:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:31:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:31:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 16:31:15 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:31:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:31:16 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 16:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:31:16 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:31:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc69c23e3104963e91c38d5fa72126b12d3a3957cd25554fc6bed95af86f3a`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1d3abae9511b5fc32f37587c95a802954d23fd3d0d5baa66285bf6201c770`  
		Last Modified: Sat, 04 Nov 2017 16:42:45 GMT  
		Size: 28.9 MB (28885739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9bf20e571fbe3d138e09ac6bc347cf370f348b1262658b6ac83c6844fc0a3c`  
		Last Modified: Sat, 04 Nov 2017 16:43:21 GMT  
		Size: 96.7 MB (96705514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0480ebc9f001937b1f183a7429d501f03ef7d5c58b200b9cff851bac3f069a`  
		Last Modified: Sat, 04 Nov 2017 16:42:25 GMT  
		Size: 7.4 MB (7411554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58234353d7aacf9dcc0c895efac6ba183324a113c9a24201be2edd8460607357`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; arm variant v7

```console
$ docker pull ghost@sha256:5b121f41aa5736dfcf355b1bd24afc58e2242d117fa424f48046a5df4534288d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213465404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd847468d0a5c47f55a43caa92848ff9b24ef3e94c0c4674dfb786296cc61b46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:10:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:10:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 11:55:35 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 11:55:36 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 11:56:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 11:57:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 12:00:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 12:00:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 12:00:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 12:00:50 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 12:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 12:00:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 12:00:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c753ba9b290099b350d8c65c3e5ba5239df36c89e08e300eb21568f796f002`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd2876a1299d5c381bc7532d72d4c978f5f36baec99256cd0fb5400f4777182`  
		Last Modified: Sat, 04 Nov 2017 12:01:19 GMT  
		Size: 23.7 MB (23685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75588985ef3a2df01c8bef20688a8004406c46ecf8125ead5d63159e0e480068`  
		Last Modified: Sat, 04 Nov 2017 12:01:44 GMT  
		Size: 91.9 MB (91944714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1991c9560bd4169c2f4d8d102aa5d8845f29fdb58186f180af88eefe65f80a44`  
		Last Modified: Sat, 04 Nov 2017 12:01:15 GMT  
		Size: 15.4 MB (15402558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c945b087776494a0f285eafd4ac93cde3624d9cb563eb04e32ae508630eace9f`  
		Last Modified: Sat, 04 Nov 2017 12:01:11 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:4ec89c9d976d511561dafacb347e93ffb868fce3dcde6e590fc4a5d4a60627f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216342064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b97a1c5ee02f12f235b9c0d8c4b80963247d131eeff8e96544eb1a17087a2a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:06:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:06:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:10:58 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 18:10:58 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 18:12:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 18:12:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 18:14:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 18:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 18:18:59 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 18:19:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 18:19:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 18:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:19:02 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 18:19:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80c13b0a3a43acb2988b6d24d1d2a82ab8a288bd842269635cde9b4f3897db2`  
		Last Modified: Fri, 03 Nov 2017 12:16:13 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49c699c2adb1d47e5931ae1224512e6365ba170d7064a083724d210416905ed`  
		Last Modified: Sat, 04 Nov 2017 18:19:54 GMT  
		Size: 23.7 MB (23685658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2bdef759a9f7388e1c9404a7b356c62b4d43699457cc1e490cb60fd80b0fc0`  
		Last Modified: Sat, 04 Nov 2017 18:20:25 GMT  
		Size: 91.9 MB (91945446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee8b8b8ddd823fec59e35a55e5ac28d6296a7a1c42e69ed68d372257d959f96`  
		Last Modified: Sat, 04 Nov 2017 18:19:49 GMT  
		Size: 15.7 MB (15739129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79284df0d66e4c79673204f5ca47de8e588edc778d45f2d043d40cb3295cb5`  
		Last Modified: Sat, 04 Nov 2017 18:19:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; ppc64le

```console
$ docker pull ghost@sha256:35bd66253607472205925b18d740f0a1fff1fba8b648b21edbc16be7a3d8407b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218837355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e46e4521ee12c800dc111205affde60f3719c6a0bfef5527cf3ccb9c1cba06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:44:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:45:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 01:26:36 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 01:26:38 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 01:27:33 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 01:27:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 01:27:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 01:27:42 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 01:28:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 01:34:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 01:34:33 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 01:34:36 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 01:34:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 01:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:34:43 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 01:34:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77bc11afaacdefdf142aca0af9122d88f797aeeb9edfb5f308931c5cc2ca442`  
		Last Modified: Thu, 02 Nov 2017 21:54:28 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ed6c1d330d0071a90daccd73de0fb1e948404739d286e122cc46e06372c62`  
		Last Modified: Sat, 04 Nov 2017 01:35:07 GMT  
		Size: 23.7 MB (23683429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09871e618213bf82012c7a23dfff7e1c957f8fb1c3e365206c16754fed58fefb`  
		Last Modified: Sat, 04 Nov 2017 01:35:27 GMT  
		Size: 91.9 MB (91945254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dddd4c5b960c5c3116922e6c59b1b6692a79d963df5703def467071cb8611c9`  
		Last Modified: Sat, 04 Nov 2017 01:35:04 GMT  
		Size: 16.1 MB (16121188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbea4b919fd115487025581e83f899e18e3612208281cfac2a0cd161646ea3a`  
		Last Modified: Sat, 04 Nov 2017 01:34:59 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; s390x

```console
$ docker pull ghost@sha256:42859da5fe06df7ef0082eede270e8df10c6f2e5f933c8786a7a3bc58e781eb6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220512007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c46045263c6d7df8c9a025d918d379533a5b9d17406da60a1aa5a29665a79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:19:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:20:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 14:22:29 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 14:22:30 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 14:23:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 14:24:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 14:24:57 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 14:24:58 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 14:24:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 14:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:24:58 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 14:24:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b93f41b796684dc0379d364c291537fb3d0e7d12cc41e338d81d6fd4e9e8d6`  
		Last Modified: Fri, 03 Nov 2017 00:28:51 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9651b62a79c03842f248124ed9d5843b51a92b8a1470da562aa50f758bcef`  
		Last Modified: Sat, 04 Nov 2017 14:25:18 GMT  
		Size: 23.7 MB (23683794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba84838d4f4b73159de8b5842b102181c9b7280ef8f6e3af516694f1d7bd0e`  
		Last Modified: Sat, 04 Nov 2017 14:25:30 GMT  
		Size: 91.9 MB (91944115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c206ed45568a0a4b6731a5c7788917c4e55d1113c66e0e4a859ec539d6db9`  
		Last Modified: Sat, 04 Nov 2017 14:25:16 GMT  
		Size: 16.2 MB (16157998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cc63dc580ab91711bf9a11fc0e3ff83b472ca3a924f441ca5c67056d6c8df7`  
		Last Modified: Sat, 04 Nov 2017 14:25:13 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.2`

```console
$ docker pull ghost@sha256:7535cf3e9d06ed6d4f97bd340ab062bd26d9883353203f0c5469e065728e22fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.16.2` - linux; amd64

```console
$ docker pull ghost@sha256:5ab37ce7a24f764089e8c095eae461c2662abd5e71f2caa1556cc85ae282ffbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221210905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1aec6c81b37db546279285975f878d96dff05589edd677db0a6b29778dcc08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:28:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:29:02 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:29:02 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:29:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:31:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:31:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 16:31:15 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:31:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:31:16 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 16:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:31:16 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:31:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc69c23e3104963e91c38d5fa72126b12d3a3957cd25554fc6bed95af86f3a`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1d3abae9511b5fc32f37587c95a802954d23fd3d0d5baa66285bf6201c770`  
		Last Modified: Sat, 04 Nov 2017 16:42:45 GMT  
		Size: 28.9 MB (28885739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9bf20e571fbe3d138e09ac6bc347cf370f348b1262658b6ac83c6844fc0a3c`  
		Last Modified: Sat, 04 Nov 2017 16:43:21 GMT  
		Size: 96.7 MB (96705514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0480ebc9f001937b1f183a7429d501f03ef7d5c58b200b9cff851bac3f069a`  
		Last Modified: Sat, 04 Nov 2017 16:42:25 GMT  
		Size: 7.4 MB (7411554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58234353d7aacf9dcc0c895efac6ba183324a113c9a24201be2edd8460607357`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.2` - linux; arm variant v7

```console
$ docker pull ghost@sha256:5b121f41aa5736dfcf355b1bd24afc58e2242d117fa424f48046a5df4534288d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213465404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd847468d0a5c47f55a43caa92848ff9b24ef3e94c0c4674dfb786296cc61b46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:10:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:10:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 11:55:35 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 11:55:36 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 11:56:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 11:57:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 12:00:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 12:00:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 12:00:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 12:00:50 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 12:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 12:00:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 12:00:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c753ba9b290099b350d8c65c3e5ba5239df36c89e08e300eb21568f796f002`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd2876a1299d5c381bc7532d72d4c978f5f36baec99256cd0fb5400f4777182`  
		Last Modified: Sat, 04 Nov 2017 12:01:19 GMT  
		Size: 23.7 MB (23685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75588985ef3a2df01c8bef20688a8004406c46ecf8125ead5d63159e0e480068`  
		Last Modified: Sat, 04 Nov 2017 12:01:44 GMT  
		Size: 91.9 MB (91944714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1991c9560bd4169c2f4d8d102aa5d8845f29fdb58186f180af88eefe65f80a44`  
		Last Modified: Sat, 04 Nov 2017 12:01:15 GMT  
		Size: 15.4 MB (15402558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c945b087776494a0f285eafd4ac93cde3624d9cb563eb04e32ae508630eace9f`  
		Last Modified: Sat, 04 Nov 2017 12:01:11 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.2` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:4ec89c9d976d511561dafacb347e93ffb868fce3dcde6e590fc4a5d4a60627f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216342064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b97a1c5ee02f12f235b9c0d8c4b80963247d131eeff8e96544eb1a17087a2a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:06:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:06:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:10:58 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 18:10:58 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 18:12:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 18:12:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 18:14:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 18:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 18:18:59 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 18:19:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 18:19:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 18:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:19:02 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 18:19:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80c13b0a3a43acb2988b6d24d1d2a82ab8a288bd842269635cde9b4f3897db2`  
		Last Modified: Fri, 03 Nov 2017 12:16:13 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49c699c2adb1d47e5931ae1224512e6365ba170d7064a083724d210416905ed`  
		Last Modified: Sat, 04 Nov 2017 18:19:54 GMT  
		Size: 23.7 MB (23685658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2bdef759a9f7388e1c9404a7b356c62b4d43699457cc1e490cb60fd80b0fc0`  
		Last Modified: Sat, 04 Nov 2017 18:20:25 GMT  
		Size: 91.9 MB (91945446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee8b8b8ddd823fec59e35a55e5ac28d6296a7a1c42e69ed68d372257d959f96`  
		Last Modified: Sat, 04 Nov 2017 18:19:49 GMT  
		Size: 15.7 MB (15739129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79284df0d66e4c79673204f5ca47de8e588edc778d45f2d043d40cb3295cb5`  
		Last Modified: Sat, 04 Nov 2017 18:19:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.2` - linux; ppc64le

```console
$ docker pull ghost@sha256:35bd66253607472205925b18d740f0a1fff1fba8b648b21edbc16be7a3d8407b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218837355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e46e4521ee12c800dc111205affde60f3719c6a0bfef5527cf3ccb9c1cba06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:44:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:45:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 01:26:36 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 01:26:38 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 01:27:33 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 01:27:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 01:27:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 01:27:42 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 01:28:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 01:34:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 01:34:33 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 01:34:36 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 01:34:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 01:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:34:43 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 01:34:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77bc11afaacdefdf142aca0af9122d88f797aeeb9edfb5f308931c5cc2ca442`  
		Last Modified: Thu, 02 Nov 2017 21:54:28 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ed6c1d330d0071a90daccd73de0fb1e948404739d286e122cc46e06372c62`  
		Last Modified: Sat, 04 Nov 2017 01:35:07 GMT  
		Size: 23.7 MB (23683429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09871e618213bf82012c7a23dfff7e1c957f8fb1c3e365206c16754fed58fefb`  
		Last Modified: Sat, 04 Nov 2017 01:35:27 GMT  
		Size: 91.9 MB (91945254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dddd4c5b960c5c3116922e6c59b1b6692a79d963df5703def467071cb8611c9`  
		Last Modified: Sat, 04 Nov 2017 01:35:04 GMT  
		Size: 16.1 MB (16121188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbea4b919fd115487025581e83f899e18e3612208281cfac2a0cd161646ea3a`  
		Last Modified: Sat, 04 Nov 2017 01:34:59 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.2` - linux; s390x

```console
$ docker pull ghost@sha256:42859da5fe06df7ef0082eede270e8df10c6f2e5f933c8786a7a3bc58e781eb6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220512007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c46045263c6d7df8c9a025d918d379533a5b9d17406da60a1aa5a29665a79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:19:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:20:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 14:22:29 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 14:22:30 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 14:23:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 14:24:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 14:24:57 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 14:24:58 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 14:24:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 14:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:24:58 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 14:24:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b93f41b796684dc0379d364c291537fb3d0e7d12cc41e338d81d6fd4e9e8d6`  
		Last Modified: Fri, 03 Nov 2017 00:28:51 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9651b62a79c03842f248124ed9d5843b51a92b8a1470da562aa50f758bcef`  
		Last Modified: Sat, 04 Nov 2017 14:25:18 GMT  
		Size: 23.7 MB (23683794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba84838d4f4b73159de8b5842b102181c9b7280ef8f6e3af516694f1d7bd0e`  
		Last Modified: Sat, 04 Nov 2017 14:25:30 GMT  
		Size: 91.9 MB (91944115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c206ed45568a0a4b6731a5c7788917c4e55d1113c66e0e4a859ec539d6db9`  
		Last Modified: Sat, 04 Nov 2017 14:25:16 GMT  
		Size: 16.2 MB (16157998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cc63dc580ab91711bf9a11fc0e3ff83b472ca3a924f441ca5c67056d6c8df7`  
		Last Modified: Sat, 04 Nov 2017 14:25:13 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.2-alpine`

```console
$ docker pull ghost@sha256:35452066c572fa0c525788a529fe7708648354a4c8d4c82ff885c2976a7453e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16.2-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:57c83d26f3a11592622725980792bd5fbeb4f0974027186055d672faf790f8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145550969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db71cdaeddede3bbb5f67cf88e9b9fbf72083b0d59ad92b1571f0c05dd8c593`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:31:27 GMT
RUN apk add --no-cache 		bash
# Sat, 04 Nov 2017 16:31:27 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:31:27 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:32:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:32:01 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:32:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:32:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:32:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:32:49 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 04 Nov 2017 16:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:32:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:32:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e032f8ef8853cbe491654749ccef263a603738bcc50402768fba0e6a2d1f45d`  
		Last Modified: Sat, 04 Nov 2017 16:43:48 GMT  
		Size: 1.1 MB (1112367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9d1e9f3e704c6fa4078e46f1f117e8b9ed741468b534d339467d826b10ebf`  
		Last Modified: Sat, 04 Nov 2017 16:44:07 GMT  
		Size: 28.9 MB (28885769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399e2fbcbc3bd63d712e57f19c643aac05350a476c29a793a932741d57d753d5`  
		Last Modified: Sat, 04 Nov 2017 16:44:45 GMT  
		Size: 96.7 MB (96704092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c8bf1d225257fe4cd1e08b4218576eedd9a0a666c036b0811e6c936961a55`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16-alpine`

```console
$ docker pull ghost@sha256:35452066c572fa0c525788a529fe7708648354a4c8d4c82ff885c2976a7453e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:57c83d26f3a11592622725980792bd5fbeb4f0974027186055d672faf790f8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145550969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db71cdaeddede3bbb5f67cf88e9b9fbf72083b0d59ad92b1571f0c05dd8c593`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:31:27 GMT
RUN apk add --no-cache 		bash
# Sat, 04 Nov 2017 16:31:27 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:31:27 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:32:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:32:01 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:32:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:32:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:32:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:32:49 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 04 Nov 2017 16:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:32:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:32:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e032f8ef8853cbe491654749ccef263a603738bcc50402768fba0e6a2d1f45d`  
		Last Modified: Sat, 04 Nov 2017 16:43:48 GMT  
		Size: 1.1 MB (1112367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9d1e9f3e704c6fa4078e46f1f117e8b9ed741468b534d339467d826b10ebf`  
		Last Modified: Sat, 04 Nov 2017 16:44:07 GMT  
		Size: 28.9 MB (28885769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399e2fbcbc3bd63d712e57f19c643aac05350a476c29a793a932741d57d753d5`  
		Last Modified: Sat, 04 Nov 2017 16:44:45 GMT  
		Size: 96.7 MB (96704092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c8bf1d225257fe4cd1e08b4218576eedd9a0a666c036b0811e6c936961a55`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:35452066c572fa0c525788a529fe7708648354a4c8d4c82ff885c2976a7453e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:57c83d26f3a11592622725980792bd5fbeb4f0974027186055d672faf790f8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145550969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db71cdaeddede3bbb5f67cf88e9b9fbf72083b0d59ad92b1571f0c05dd8c593`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:31:27 GMT
RUN apk add --no-cache 		bash
# Sat, 04 Nov 2017 16:31:27 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:31:27 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:32:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:32:01 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:32:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:32:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:32:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:32:49 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 04 Nov 2017 16:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:32:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:32:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e032f8ef8853cbe491654749ccef263a603738bcc50402768fba0e6a2d1f45d`  
		Last Modified: Sat, 04 Nov 2017 16:43:48 GMT  
		Size: 1.1 MB (1112367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9d1e9f3e704c6fa4078e46f1f117e8b9ed741468b534d339467d826b10ebf`  
		Last Modified: Sat, 04 Nov 2017 16:44:07 GMT  
		Size: 28.9 MB (28885769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399e2fbcbc3bd63d712e57f19c643aac05350a476c29a793a932741d57d753d5`  
		Last Modified: Sat, 04 Nov 2017 16:44:45 GMT  
		Size: 96.7 MB (96704092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c8bf1d225257fe4cd1e08b4218576eedd9a0a666c036b0811e6c936961a55`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:35452066c572fa0c525788a529fe7708648354a4c8d4c82ff885c2976a7453e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:57c83d26f3a11592622725980792bd5fbeb4f0974027186055d672faf790f8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145550969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db71cdaeddede3bbb5f67cf88e9b9fbf72083b0d59ad92b1571f0c05dd8c593`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:25 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Fri, 03 Nov 2017 22:10:25 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 12:35:38 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:49:08 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 04 Nov 2017 12:49:45 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:49:53 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 04 Nov 2017 12:49:54 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:31:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:31:27 GMT
RUN apk add --no-cache 		bash
# Sat, 04 Nov 2017 16:31:27 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:31:27 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:32:00 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:32:00 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:32:01 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:32:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:32:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:32:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:32:49 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 04 Nov 2017 16:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:32:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:32:50 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd1cf64bd6132b894084f2286c70d6feac915b12aff1df50dc2228a1d7ffbde`  
		Last Modified: Sat, 04 Nov 2017 13:08:12 GMT  
		Size: 15.4 MB (15439281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eceb429d2da51780e6c7810c603d2ae40a6d72f8486f24343db264ffe0a05e9`  
		Last Modified: Sat, 04 Nov 2017 13:08:04 GMT  
		Size: 1.0 MB (1015525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8cb16dab9504be25814d54f927207a5d83b59b27fe2a973a996e023a7b71f0`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e032f8ef8853cbe491654749ccef263a603738bcc50402768fba0e6a2d1f45d`  
		Last Modified: Sat, 04 Nov 2017 16:43:48 GMT  
		Size: 1.1 MB (1112367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9d1e9f3e704c6fa4078e46f1f117e8b9ed741468b534d339467d826b10ebf`  
		Last Modified: Sat, 04 Nov 2017 16:44:07 GMT  
		Size: 28.9 MB (28885769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399e2fbcbc3bd63d712e57f19c643aac05350a476c29a793a932741d57d753d5`  
		Last Modified: Sat, 04 Nov 2017 16:44:45 GMT  
		Size: 96.7 MB (96704092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c8bf1d225257fe4cd1e08b4218576eedd9a0a666c036b0811e6c936961a55`  
		Last Modified: Sat, 04 Nov 2017 16:43:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:7535cf3e9d06ed6d4f97bd340ab062bd26d9883353203f0c5469e065728e22fa
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
$ docker pull ghost@sha256:5ab37ce7a24f764089e8c095eae461c2662abd5e71f2caa1556cc85ae282ffbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221210905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1aec6c81b37db546279285975f878d96dff05589edd677db0a6b29778dcc08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 12:12:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 12:12:39 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 04 Nov 2017 12:50:07 GMT
ENV NODE_VERSION=6.11.5
# Sat, 04 Nov 2017 12:50:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 04 Nov 2017 12:50:23 GMT
ENV YARN_VERSION=1.2.1
# Sat, 04 Nov 2017 12:50:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 04 Nov 2017 12:50:27 GMT
CMD ["node"]
# Sat, 04 Nov 2017 16:28:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:29:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 16:29:02 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 16:29:02 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 16:29:34 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 16:30:17 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 16:31:01 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 16:31:15 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 16:31:15 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 16:31:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 16:31:16 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 16:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:31:16 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 16:31:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8730af7da8bfe1f205bafae0a5d40be49012ba3f021363c48786fd11817d840`  
		Last Modified: Sat, 04 Nov 2017 13:03:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84980a3f83d9feea2ec873855fa9ce96c26b596c2cdc154526470d03a46250`  
		Last Modified: Sat, 04 Nov 2017 13:03:08 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87556d04493b76edcf5714cf70141a2285013442a1f3a9087afdef00a3738a`  
		Last Modified: Sat, 04 Nov 2017 13:09:00 GMT  
		Size: 14.7 MB (14717830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a4e0b5a08db142c8d5df05c5e7f243e89265b1ce874bfa8c28e9a40b03b2c`  
		Last Modified: Sat, 04 Nov 2017 13:08:55 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc69c23e3104963e91c38d5fa72126b12d3a3957cd25554fc6bed95af86f3a`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1d3abae9511b5fc32f37587c95a802954d23fd3d0d5baa66285bf6201c770`  
		Last Modified: Sat, 04 Nov 2017 16:42:45 GMT  
		Size: 28.9 MB (28885739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9bf20e571fbe3d138e09ac6bc347cf370f348b1262658b6ac83c6844fc0a3c`  
		Last Modified: Sat, 04 Nov 2017 16:43:21 GMT  
		Size: 96.7 MB (96705514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0480ebc9f001937b1f183a7429d501f03ef7d5c58b200b9cff851bac3f069a`  
		Last Modified: Sat, 04 Nov 2017 16:42:25 GMT  
		Size: 7.4 MB (7411554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58234353d7aacf9dcc0c895efac6ba183324a113c9a24201be2edd8460607357`  
		Last Modified: Sat, 04 Nov 2017 16:42:23 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:5b121f41aa5736dfcf355b1bd24afc58e2242d117fa424f48046a5df4534288d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213465404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd847468d0a5c47f55a43caa92848ff9b24ef3e94c0c4674dfb786296cc61b46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 01:34:09 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 01:38:38 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 01:39:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 01:39:17 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 01:39:19 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 01:39:19 GMT
CMD ["node"]
# Fri, 03 Nov 2017 02:10:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 02:10:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 11:55:35 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 11:55:36 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 11:56:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 11:56:28 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 11:57:50 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 12:00:49 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 12:00:49 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 12:00:49 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 12:00:50 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 12:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 12:00:50 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 12:00:51 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9983a3ed67f4aeff634335cd66924f686e7d1185f7759af230a1df16b0b415cf`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f887c3a294176fc82e7bd4dec3626288965475285be282785cdb470beb9da5`  
		Last Modified: Fri, 03 Nov 2017 01:44:45 GMT  
		Size: 116.5 KB (116516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ba35e81cddaaf449633b714c74a5c5b82920d94db4c2fed6e176cd518e0717`  
		Last Modified: Fri, 03 Nov 2017 01:50:20 GMT  
		Size: 13.9 MB (13878373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b63d0fe5081bdface0c0a486c8d9fc627a49a37c0b658d101bc0999b009b46`  
		Last Modified: Fri, 03 Nov 2017 01:50:15 GMT  
		Size: 1.0 MB (1008472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c753ba9b290099b350d8c65c3e5ba5239df36c89e08e300eb21568f796f002`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd2876a1299d5c381bc7532d72d4c978f5f36baec99256cd0fb5400f4777182`  
		Last Modified: Sat, 04 Nov 2017 12:01:19 GMT  
		Size: 23.7 MB (23685457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75588985ef3a2df01c8bef20688a8004406c46ecf8125ead5d63159e0e480068`  
		Last Modified: Sat, 04 Nov 2017 12:01:44 GMT  
		Size: 91.9 MB (91944714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1991c9560bd4169c2f4d8d102aa5d8845f29fdb58186f180af88eefe65f80a44`  
		Last Modified: Sat, 04 Nov 2017 12:01:15 GMT  
		Size: 15.4 MB (15402558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c945b087776494a0f285eafd4ac93cde3624d9cb563eb04e32ae508630eace9f`  
		Last Modified: Sat, 04 Nov 2017 12:01:11 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:4ec89c9d976d511561dafacb347e93ffb868fce3dcde6e590fc4a5d4a60627f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216342064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b97a1c5ee02f12f235b9c0d8c4b80963247d131eeff8e96544eb1a17087a2a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:30:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 03 Nov 2017 11:38:32 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 03 Nov 2017 11:41:29 GMT
ENV NODE_VERSION=6.11.5
# Fri, 03 Nov 2017 11:42:16 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 03 Nov 2017 11:42:20 GMT
ENV YARN_VERSION=1.2.1
# Fri, 03 Nov 2017 11:42:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 03 Nov 2017 11:42:31 GMT
CMD ["node"]
# Fri, 03 Nov 2017 12:06:03 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 12:06:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 18:10:58 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 18:10:58 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 18:12:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 18:12:17 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 18:12:30 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 18:14:24 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 18:18:58 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 18:18:59 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 18:19:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 18:19:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 18:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:19:02 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 18:19:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be56910501be69d5b6a13da926c3c28572be0573b9cfa6de8826e752a38ebd1`  
		Last Modified: Fri, 03 Nov 2017 11:44:51 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a2c52b3e44172721f35459acf56a7e853a6241c6bd272af27fd6ab3abca543`  
		Last Modified: Fri, 03 Nov 2017 11:44:52 GMT  
		Size: 116.5 KB (116491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0095d353cf312fb920815469d4bfe9b3d99ff1aa605d2eb8e5146513681702e7`  
		Last Modified: Fri, 03 Nov 2017 11:47:56 GMT  
		Size: 14.7 MB (14705831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcf65cb7303baf9398ccab14fd780dc3c9fdad7ca6d53fc56d2bad6ba3766bc`  
		Last Modified: Fri, 03 Nov 2017 11:47:50 GMT  
		Size: 1.0 MB (1008450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80c13b0a3a43acb2988b6d24d1d2a82ab8a288bd842269635cde9b4f3897db2`  
		Last Modified: Fri, 03 Nov 2017 12:16:13 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49c699c2adb1d47e5931ae1224512e6365ba170d7064a083724d210416905ed`  
		Last Modified: Sat, 04 Nov 2017 18:19:54 GMT  
		Size: 23.7 MB (23685658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2bdef759a9f7388e1c9404a7b356c62b4d43699457cc1e490cb60fd80b0fc0`  
		Last Modified: Sat, 04 Nov 2017 18:20:25 GMT  
		Size: 91.9 MB (91945446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee8b8b8ddd823fec59e35a55e5ac28d6296a7a1c42e69ed68d372257d959f96`  
		Last Modified: Sat, 04 Nov 2017 18:19:49 GMT  
		Size: 15.7 MB (15739129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd79284df0d66e4c79673204f5ca47de8e588edc778d45f2d043d40cb3295cb5`  
		Last Modified: Sat, 04 Nov 2017 18:19:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:35bd66253607472205925b18d740f0a1fff1fba8b648b21edbc16be7a3d8407b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218837355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e46e4521ee12c800dc111205affde60f3719c6a0bfef5527cf3ccb9c1cba06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 18:40:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 18:41:00 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 18:46:55 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 18:47:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 18:47:36 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 18:47:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 18:47:48 GMT
CMD ["node"]
# Thu, 02 Nov 2017 21:44:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 21:45:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 01:26:36 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 01:26:38 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 01:27:33 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 01:27:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 01:27:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 01:27:42 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 01:28:59 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 01:34:28 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 01:34:33 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 01:34:36 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 01:34:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 01:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:34:43 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 01:34:44 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c75e3f96afdfd07a6938d7733667446d89430833e903bc5ac9deeb6fc30f66`  
		Last Modified: Thu, 02 Nov 2017 18:53:40 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d0824afc62589e3438f12d5c3557ed203e0f3ca7e6cd3207615249b0612c82`  
		Last Modified: Thu, 02 Nov 2017 18:53:41 GMT  
		Size: 116.5 KB (116515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e23ece7d04b5985ce074c5affbb22a037e108a0951b6279ca6cc238b999c27`  
		Last Modified: Thu, 02 Nov 2017 18:59:27 GMT  
		Size: 14.5 MB (14476868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f4b3e4fafbcbae838a2cadd59bf2f374caf0f0a979caf5d5488974206b7d5`  
		Last Modified: Thu, 02 Nov 2017 18:59:21 GMT  
		Size: 1.0 MB (1008476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77bc11afaacdefdf142aca0af9122d88f797aeeb9edfb5f308931c5cc2ca442`  
		Last Modified: Thu, 02 Nov 2017 21:54:28 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ed6c1d330d0071a90daccd73de0fb1e948404739d286e122cc46e06372c62`  
		Last Modified: Sat, 04 Nov 2017 01:35:07 GMT  
		Size: 23.7 MB (23683429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09871e618213bf82012c7a23dfff7e1c957f8fb1c3e365206c16754fed58fefb`  
		Last Modified: Sat, 04 Nov 2017 01:35:27 GMT  
		Size: 91.9 MB (91945254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dddd4c5b960c5c3116922e6c59b1b6692a79d963df5703def467071cb8611c9`  
		Last Modified: Sat, 04 Nov 2017 01:35:04 GMT  
		Size: 16.1 MB (16121188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbea4b919fd115487025581e83f899e18e3612208281cfac2a0cd161646ea3a`  
		Last Modified: Sat, 04 Nov 2017 01:34:59 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:42859da5fe06df7ef0082eede270e8df10c6f2e5f933c8786a7a3bc58e781eb6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220512007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c46045263c6d7df8c9a025d918d379533a5b9d17406da60a1aa5a29665a79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:54:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 02 Nov 2017 21:54:26 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 22:42:45 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 22:42:59 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 22:42:59 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 22:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 22:43:01 GMT
CMD ["node"]
# Fri, 03 Nov 2017 00:19:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 00:20:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 14:22:29 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 14:22:30 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 14:22:53 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 14:23:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 14:24:57 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 04 Nov 2017 14:24:57 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 14:24:58 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 14:24:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 04 Nov 2017 14:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:24:58 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 14:24:59 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a21dcee942585a67b02720f9b5480887ec48b9021b7f0bf2b4cbb5691e403`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bdcc2a52af8c6254c7b7a75848326c0f055bcd22c2b5746fde9de8a6ab2271`  
		Last Modified: Thu, 02 Nov 2017 22:44:16 GMT  
		Size: 116.5 KB (116481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db0a036b68e1bf753c2355b6940ffb8b74050bb3d083d56cd7ed118a64eb867`  
		Last Modified: Thu, 02 Nov 2017 22:48:00 GMT  
		Size: 14.8 MB (14849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4350da181a5baef60c5ca0bd418f25f19bd2355a1169ef83f0d8055d1a29a`  
		Last Modified: Thu, 02 Nov 2017 22:47:57 GMT  
		Size: 1.0 MB (1008446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b93f41b796684dc0379d364c291537fb3d0e7d12cc41e338d81d6fd4e9e8d6`  
		Last Modified: Fri, 03 Nov 2017 00:28:51 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9651b62a79c03842f248124ed9d5843b51a92b8a1470da562aa50f758bcef`  
		Last Modified: Sat, 04 Nov 2017 14:25:18 GMT  
		Size: 23.7 MB (23683794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba84838d4f4b73159de8b5842b102181c9b7280ef8f6e3af516694f1d7bd0e`  
		Last Modified: Sat, 04 Nov 2017 14:25:30 GMT  
		Size: 91.9 MB (91944115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c206ed45568a0a4b6731a5c7788917c4e55d1113c66e0e4a859ec539d6db9`  
		Last Modified: Sat, 04 Nov 2017 14:25:16 GMT  
		Size: 16.2 MB (16157998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cc63dc580ab91711bf9a11fc0e3ff83b472ca3a924f441ca5c67056d6c8df7`  
		Last Modified: Sat, 04 Nov 2017 14:25:13 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
