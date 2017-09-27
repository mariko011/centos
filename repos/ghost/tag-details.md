<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.11`](#ghost01111)
-	[`ghost:0.11.11-alpine`](#ghost01111-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.9`](#ghost19)
-	[`ghost:1.9.1`](#ghost191)
-	[`ghost:1.9.1-alpine`](#ghost191-alpine)
-	[`ghost:1.9-alpine`](#ghost19-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:0608eecda5c28c266f8e9a76f344b2bb052d4ddc856900fef999709c432f6a77
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
$ docker pull ghost@sha256:511818d093b3345ca0dedcaea215bd20fc5c7b549f7ebad6f7586bbdf4a7dba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113269805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d82d3afe087e6b88bab7d4d737896ef68ffa64ebd741cee1c31ddd8448c44ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 13 Sep 2017 21:14:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Sep 2017 21:14:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 21:15:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:16:24 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:16:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:16:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:16:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:16:26 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:27 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:16:28 GMT
CMD ["npm" "start"]
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
	-	`sha256:3e9f22cda90b85cccd1b353e17d922de5a934c06671035eae326e98223a1de5f`  
		Last Modified: Wed, 13 Sep 2017 21:20:36 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41cb7f523c5ff8fbd286d75e12d93a0968d671681d8a6956832b0b8a6919b27`  
		Last Modified: Wed, 13 Sep 2017 21:20:35 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d19cc9ab0833c7f84bdf167c388b98e749852126eb766a5e3b6b647961651d6`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dcbf3a9813073bb7c6a29dccd5bbcfbc19e403194cb33a651c685ce59d51b9`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 25.1 MB (25123887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01261b2c97b70e0bfc042b0c9003de82f0cb5d0d0eb4ad2f128c99a229e14140`  
		Last Modified: Wed, 13 Sep 2017 21:20:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040b3b274e1dec0d310497e1cb05a227e48e32d052e32735eacd83d0047196b3`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3ddb09f03c511d88db3d400b3cea499a39bd59e2e89e2a9787551887fe8acb`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f5dc803a573bbcf641027bb6acb3c2564a33ec49dd8d124ec9c87154b197790e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113620036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220af54d11cf29e1cfbae4e22ff80c8d4e6f8219529be7ae25c3fdb893aed398`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 27 Sep 2017 08:01:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 27 Sep 2017 08:01:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 08:01:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
WORKDIR /usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 27 Sep 2017 08:05:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 27 Sep 2017 08:05:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 27 Sep 2017 08:05:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 27 Sep 2017 08:05:05 GMT
VOLUME [/var/lib/ghost]
# Wed, 27 Sep 2017 08:05:06 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 27 Sep 2017 08:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Sep 2017 08:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:05:07 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:05:08 GMT
CMD ["npm" "start"]
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
	-	`sha256:37537787dded5775d1180812048b91700f5982da8ba1f428c0f2981544a7083d`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 4.5 KB (4469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e765804f3106a1b91e6c0aa2780c949136a0a36cf7ef8c92d4f760043918efc`  
		Last Modified: Wed, 27 Sep 2017 08:06:19 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9491fb3d3b05124cb0ce6c5ceaaec73865863082b87de90f0d3c51c1052fb1`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d66f8d6952b18181012a923a68e15d973f38eafdda3fb0a9319a1b855e1c1`  
		Last Modified: Wed, 27 Sep 2017 08:06:32 GMT  
		Size: 31.2 MB (31248627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6590702ed8de1bb6bac96f9145e5fc8a0f66853255485b11374804adf310e1b0`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f029b0c10ea0cf5fbaba441701c26ae405e0fb7327f877f5293d0a4f85e070`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579cf0eb08c79b744cff566d460b94bd9aa469fca496d123ce46e20b6d3ead96`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1a55aedead29d8caf9fff136dd539dd07d58139577df0f77a991ea03f5e06da0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116725227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb0891026cfcb61955f4003c5dcb3fc261d8d589b773667556d528a1bbe9574`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:27:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:27:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:27:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:27:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:27:14 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:27:15 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:35:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:35:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:35:20 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:35:20 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:35:21 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:35:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:35:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:35:24 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:35:25 GMT
CMD ["npm" "start"]
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
	-	`sha256:73726fc42bfd83fa52c0278ba63ea9ac32229bbc0dce11e97911eb243a502b7d`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a404ee6743342ba49df4730735f43adce0cad4a59f0efa2f933c9000f11ef1bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199a30b04158d900b32b6a01ae1eed0b4ab70c91358d2ea1b7516b8d95eebeab`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ff3e008f9c5fc283f06b985e850020efe124193f084224f2f23e0b443bb55b`  
		Last Modified: Fri, 15 Sep 2017 02:37:43 GMT  
		Size: 31.8 MB (31812987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9d9e2d563bae9f4b25081e999b9f6b45410ca7d3d125a57e4e87c3021f9c3`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50b0b8be229b3bfbb8870da1f7d1b5e01735d2b8b0f55112199f8fe6afab7bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e6c52495f660412aa883da2946898c623b13051daa29cc4c410da90f5b03f`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:1005f1627225f360a522fcee9a8a0840235d9ec71060e199b0c85e58a6ffe1bd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119302332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ae52ab21f68a4ee3cd2bd1c27a1ba5475ea4b75d619f35b76469c2860f40eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:26:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:26:08 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:26:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:26:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:26:20 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:26:22 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:31:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:31:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:32:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:32:09 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:32:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:32:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:32:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:32:32 GMT
CMD ["npm" "start"]
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
	-	`sha256:efc22da3eeebe6b135d1888ec1156f28777b348fec7f3c6cdb6a333a8099da0a`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd8f3207ce6955d11deca98a27aaf2de8301a014e0d97af228e465805db5dff`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade0b0c060ae61440265b252105450eba70bcf2388b5bf58325334e89529f188`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5643202e31c71770c2d4639e1179e072282f5c531ee7b8d045b6f8c53eb3aaeb`  
		Last Modified: Fri, 15 Sep 2017 02:35:24 GMT  
		Size: 32.3 MB (32278685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237f9807dedef02d610dcb1b86f56887011abc35d10ae0969d7a094f32ccdb9a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9e30a9c779f9c54a1fa2dd99fc9fefd824063e9ebefcfb9701eded495d1a3a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cf6eeed2edebfb236212d609426ac37f4e63c3cc24c25b9bcae333812a4685`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:a57f39121c488a204984d8455dc4a101b516f95a3e8bdfed6394bd44617e9116
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120978548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfda72a7d2c2c07e6cd42304b3101f3117c76802be6300435a19350226b562c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 08 Sep 2017 18:18:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 08 Sep 2017 18:18:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
WORKDIR /usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 08 Sep 2017 18:20:12 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 08 Sep 2017 18:20:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 08 Sep 2017 18:20:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 08 Sep 2017 18:20:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 08 Sep 2017 18:20:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 08 Sep 2017 18:20:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 18:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:20:15 GMT
EXPOSE 2368/tcp
# Fri, 08 Sep 2017 18:20:15 GMT
CMD ["npm" "start"]
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
	-	`sha256:310ec0c957fa56cf3a91e64a6fd1fb173f1ab96f858b1d33ef0e0b9f0d6d8c54`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbb5c26fc18f28cbae51ee1a57fde1b4dff26ef099909f735707cdb34590485`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f8595ea20b8e5e7e0b9cc7c44eaa0f184f031ff8e16feb566226a29704133`  
		Last Modified: Fri, 08 Sep 2017 18:21:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d8ea3650b4f6dc874d8a690cffecb6dd26ac8fae1c60e210bfcb931f8ebf2a`  
		Last Modified: Fri, 08 Sep 2017 18:21:19 GMT  
		Size: 32.3 MB (32317190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6ca33ee71f9b5d3f8463a3bf15bde45487d6bfdef165404f1bbc66c5650241`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d601bece71affe0ea8f1bf22c4a94f1ce5f45b2caf38d7eb5b44c5de72543d3`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aaf8edaffa4c98463316ba4768b63b95ebe5aac145d5e8b5b218ed4ab73a54`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:0608eecda5c28c266f8e9a76f344b2bb052d4ddc856900fef999709c432f6a77
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
$ docker pull ghost@sha256:511818d093b3345ca0dedcaea215bd20fc5c7b549f7ebad6f7586bbdf4a7dba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113269805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d82d3afe087e6b88bab7d4d737896ef68ffa64ebd741cee1c31ddd8448c44ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 13 Sep 2017 21:14:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Sep 2017 21:14:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 21:15:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:16:24 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:16:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:16:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:16:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:16:26 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:27 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:16:28 GMT
CMD ["npm" "start"]
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
	-	`sha256:3e9f22cda90b85cccd1b353e17d922de5a934c06671035eae326e98223a1de5f`  
		Last Modified: Wed, 13 Sep 2017 21:20:36 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41cb7f523c5ff8fbd286d75e12d93a0968d671681d8a6956832b0b8a6919b27`  
		Last Modified: Wed, 13 Sep 2017 21:20:35 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d19cc9ab0833c7f84bdf167c388b98e749852126eb766a5e3b6b647961651d6`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dcbf3a9813073bb7c6a29dccd5bbcfbc19e403194cb33a651c685ce59d51b9`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 25.1 MB (25123887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01261b2c97b70e0bfc042b0c9003de82f0cb5d0d0eb4ad2f128c99a229e14140`  
		Last Modified: Wed, 13 Sep 2017 21:20:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040b3b274e1dec0d310497e1cb05a227e48e32d052e32735eacd83d0047196b3`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3ddb09f03c511d88db3d400b3cea499a39bd59e2e89e2a9787551887fe8acb`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f5dc803a573bbcf641027bb6acb3c2564a33ec49dd8d124ec9c87154b197790e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113620036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220af54d11cf29e1cfbae4e22ff80c8d4e6f8219529be7ae25c3fdb893aed398`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 27 Sep 2017 08:01:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 27 Sep 2017 08:01:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 08:01:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
WORKDIR /usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 27 Sep 2017 08:05:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 27 Sep 2017 08:05:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 27 Sep 2017 08:05:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 27 Sep 2017 08:05:05 GMT
VOLUME [/var/lib/ghost]
# Wed, 27 Sep 2017 08:05:06 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 27 Sep 2017 08:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Sep 2017 08:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:05:07 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:05:08 GMT
CMD ["npm" "start"]
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
	-	`sha256:37537787dded5775d1180812048b91700f5982da8ba1f428c0f2981544a7083d`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 4.5 KB (4469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e765804f3106a1b91e6c0aa2780c949136a0a36cf7ef8c92d4f760043918efc`  
		Last Modified: Wed, 27 Sep 2017 08:06:19 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9491fb3d3b05124cb0ce6c5ceaaec73865863082b87de90f0d3c51c1052fb1`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d66f8d6952b18181012a923a68e15d973f38eafdda3fb0a9319a1b855e1c1`  
		Last Modified: Wed, 27 Sep 2017 08:06:32 GMT  
		Size: 31.2 MB (31248627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6590702ed8de1bb6bac96f9145e5fc8a0f66853255485b11374804adf310e1b0`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f029b0c10ea0cf5fbaba441701c26ae405e0fb7327f877f5293d0a4f85e070`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579cf0eb08c79b744cff566d460b94bd9aa469fca496d123ce46e20b6d3ead96`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1a55aedead29d8caf9fff136dd539dd07d58139577df0f77a991ea03f5e06da0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116725227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb0891026cfcb61955f4003c5dcb3fc261d8d589b773667556d528a1bbe9574`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:27:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:27:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:27:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:27:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:27:14 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:27:15 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:35:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:35:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:35:20 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:35:20 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:35:21 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:35:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:35:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:35:24 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:35:25 GMT
CMD ["npm" "start"]
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
	-	`sha256:73726fc42bfd83fa52c0278ba63ea9ac32229bbc0dce11e97911eb243a502b7d`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a404ee6743342ba49df4730735f43adce0cad4a59f0efa2f933c9000f11ef1bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199a30b04158d900b32b6a01ae1eed0b4ab70c91358d2ea1b7516b8d95eebeab`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ff3e008f9c5fc283f06b985e850020efe124193f084224f2f23e0b443bb55b`  
		Last Modified: Fri, 15 Sep 2017 02:37:43 GMT  
		Size: 31.8 MB (31812987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9d9e2d563bae9f4b25081e999b9f6b45410ca7d3d125a57e4e87c3021f9c3`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50b0b8be229b3bfbb8870da1f7d1b5e01735d2b8b0f55112199f8fe6afab7bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e6c52495f660412aa883da2946898c623b13051daa29cc4c410da90f5b03f`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:1005f1627225f360a522fcee9a8a0840235d9ec71060e199b0c85e58a6ffe1bd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119302332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ae52ab21f68a4ee3cd2bd1c27a1ba5475ea4b75d619f35b76469c2860f40eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:26:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:26:08 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:26:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:26:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:26:20 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:26:22 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:31:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:31:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:32:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:32:09 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:32:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:32:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:32:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:32:32 GMT
CMD ["npm" "start"]
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
	-	`sha256:efc22da3eeebe6b135d1888ec1156f28777b348fec7f3c6cdb6a333a8099da0a`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd8f3207ce6955d11deca98a27aaf2de8301a014e0d97af228e465805db5dff`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade0b0c060ae61440265b252105450eba70bcf2388b5bf58325334e89529f188`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5643202e31c71770c2d4639e1179e072282f5c531ee7b8d045b6f8c53eb3aaeb`  
		Last Modified: Fri, 15 Sep 2017 02:35:24 GMT  
		Size: 32.3 MB (32278685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237f9807dedef02d610dcb1b86f56887011abc35d10ae0969d7a094f32ccdb9a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9e30a9c779f9c54a1fa2dd99fc9fefd824063e9ebefcfb9701eded495d1a3a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cf6eeed2edebfb236212d609426ac37f4e63c3cc24c25b9bcae333812a4685`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:a57f39121c488a204984d8455dc4a101b516f95a3e8bdfed6394bd44617e9116
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120978548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfda72a7d2c2c07e6cd42304b3101f3117c76802be6300435a19350226b562c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 08 Sep 2017 18:18:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 08 Sep 2017 18:18:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
WORKDIR /usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 08 Sep 2017 18:20:12 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 08 Sep 2017 18:20:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 08 Sep 2017 18:20:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 08 Sep 2017 18:20:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 08 Sep 2017 18:20:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 08 Sep 2017 18:20:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 18:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:20:15 GMT
EXPOSE 2368/tcp
# Fri, 08 Sep 2017 18:20:15 GMT
CMD ["npm" "start"]
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
	-	`sha256:310ec0c957fa56cf3a91e64a6fd1fb173f1ab96f858b1d33ef0e0b9f0d6d8c54`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbb5c26fc18f28cbae51ee1a57fde1b4dff26ef099909f735707cdb34590485`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f8595ea20b8e5e7e0b9cc7c44eaa0f184f031ff8e16feb566226a29704133`  
		Last Modified: Fri, 08 Sep 2017 18:21:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d8ea3650b4f6dc874d8a690cffecb6dd26ac8fae1c60e210bfcb931f8ebf2a`  
		Last Modified: Fri, 08 Sep 2017 18:21:19 GMT  
		Size: 32.3 MB (32317190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6ca33ee71f9b5d3f8463a3bf15bde45487d6bfdef165404f1bbc66c5650241`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d601bece71affe0ea8f1bf22c4a94f1ce5f45b2caf38d7eb5b44c5de72543d3`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aaf8edaffa4c98463316ba4768b63b95ebe5aac145d5e8b5b218ed4ab73a54`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11`

```console
$ docker pull ghost@sha256:0608eecda5c28c266f8e9a76f344b2bb052d4ddc856900fef999709c432f6a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.11` - linux; amd64

```console
$ docker pull ghost@sha256:511818d093b3345ca0dedcaea215bd20fc5c7b549f7ebad6f7586bbdf4a7dba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113269805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d82d3afe087e6b88bab7d4d737896ef68ffa64ebd741cee1c31ddd8448c44ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 13 Sep 2017 21:14:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Sep 2017 21:14:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 21:15:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:15:03 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:16:24 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:16:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:16:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:16:26 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:16:26 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:27 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:16:28 GMT
CMD ["npm" "start"]
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
	-	`sha256:3e9f22cda90b85cccd1b353e17d922de5a934c06671035eae326e98223a1de5f`  
		Last Modified: Wed, 13 Sep 2017 21:20:36 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41cb7f523c5ff8fbd286d75e12d93a0968d671681d8a6956832b0b8a6919b27`  
		Last Modified: Wed, 13 Sep 2017 21:20:35 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d19cc9ab0833c7f84bdf167c388b98e749852126eb766a5e3b6b647961651d6`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dcbf3a9813073bb7c6a29dccd5bbcfbc19e403194cb33a651c685ce59d51b9`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 25.1 MB (25123887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01261b2c97b70e0bfc042b0c9003de82f0cb5d0d0eb4ad2f128c99a229e14140`  
		Last Modified: Wed, 13 Sep 2017 21:20:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040b3b274e1dec0d310497e1cb05a227e48e32d052e32735eacd83d0047196b3`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3ddb09f03c511d88db3d400b3cea499a39bd59e2e89e2a9787551887fe8acb`  
		Last Modified: Wed, 13 Sep 2017 21:20:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:f5dc803a573bbcf641027bb6acb3c2564a33ec49dd8d124ec9c87154b197790e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113620036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220af54d11cf29e1cfbae4e22ff80c8d4e6f8219529be7ae25c3fdb893aed398`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 27 Sep 2017 08:01:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 27 Sep 2017 08:01:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Sep 2017 08:01:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
WORKDIR /usr/src/ghost
# Wed, 27 Sep 2017 08:01:46 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 27 Sep 2017 08:05:02 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 27 Sep 2017 08:05:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 27 Sep 2017 08:05:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 27 Sep 2017 08:05:05 GMT
VOLUME [/var/lib/ghost]
# Wed, 27 Sep 2017 08:05:06 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 27 Sep 2017 08:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Sep 2017 08:05:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:05:07 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:05:08 GMT
CMD ["npm" "start"]
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
	-	`sha256:37537787dded5775d1180812048b91700f5982da8ba1f428c0f2981544a7083d`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 4.5 KB (4469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e765804f3106a1b91e6c0aa2780c949136a0a36cf7ef8c92d4f760043918efc`  
		Last Modified: Wed, 27 Sep 2017 08:06:19 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9491fb3d3b05124cb0ce6c5ceaaec73865863082b87de90f0d3c51c1052fb1`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d66f8d6952b18181012a923a68e15d973f38eafdda3fb0a9319a1b855e1c1`  
		Last Modified: Wed, 27 Sep 2017 08:06:32 GMT  
		Size: 31.2 MB (31248627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6590702ed8de1bb6bac96f9145e5fc8a0f66853255485b11374804adf310e1b0`  
		Last Modified: Wed, 27 Sep 2017 08:06:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f029b0c10ea0cf5fbaba441701c26ae405e0fb7327f877f5293d0a4f85e070`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579cf0eb08c79b744cff566d460b94bd9aa469fca496d123ce46e20b6d3ead96`  
		Last Modified: Wed, 27 Sep 2017 08:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1a55aedead29d8caf9fff136dd539dd07d58139577df0f77a991ea03f5e06da0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116725227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb0891026cfcb61955f4003c5dcb3fc261d8d589b773667556d528a1bbe9574`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:27:03 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:27:04 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:27:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:27:13 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:27:14 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:27:15 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:35:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:35:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:35:20 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:35:20 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:35:21 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:35:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:35:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:35:24 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:35:25 GMT
CMD ["npm" "start"]
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
	-	`sha256:73726fc42bfd83fa52c0278ba63ea9ac32229bbc0dce11e97911eb243a502b7d`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a404ee6743342ba49df4730735f43adce0cad4a59f0efa2f933c9000f11ef1bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:26 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199a30b04158d900b32b6a01ae1eed0b4ab70c91358d2ea1b7516b8d95eebeab`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ff3e008f9c5fc283f06b985e850020efe124193f084224f2f23e0b443bb55b`  
		Last Modified: Fri, 15 Sep 2017 02:37:43 GMT  
		Size: 31.8 MB (31812987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9d9e2d563bae9f4b25081e999b9f6b45410ca7d3d125a57e4e87c3021f9c3`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50b0b8be229b3bfbb8870da1f7d1b5e01735d2b8b0f55112199f8fe6afab7bc`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e6c52495f660412aa883da2946898c623b13051daa29cc4c410da90f5b03f`  
		Last Modified: Fri, 15 Sep 2017 02:37:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:1005f1627225f360a522fcee9a8a0840235d9ec71060e199b0c85e58a6ffe1bd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119302332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ae52ab21f68a4ee3cd2bd1c27a1ba5475ea4b75d619f35b76469c2860f40eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 15 Sep 2017 02:26:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Sep 2017 02:26:08 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:26:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:26:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Sep 2017 02:26:20 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Sep 2017 02:26:22 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 15 Sep 2017 02:31:53 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Sep 2017 02:31:56 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Sep 2017 02:32:07 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Sep 2017 02:32:09 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Sep 2017 02:32:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Sep 2017 02:32:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Sep 2017 02:32:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Sep 2017 02:32:30 GMT
EXPOSE 2368/tcp
# Fri, 15 Sep 2017 02:32:32 GMT
CMD ["npm" "start"]
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
	-	`sha256:efc22da3eeebe6b135d1888ec1156f28777b348fec7f3c6cdb6a333a8099da0a`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 4.5 KB (4498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd8f3207ce6955d11deca98a27aaf2de8301a014e0d97af228e465805db5dff`  
		Last Modified: Fri, 15 Sep 2017 02:35:06 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade0b0c060ae61440265b252105450eba70bcf2388b5bf58325334e89529f188`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5643202e31c71770c2d4639e1179e072282f5c531ee7b8d045b6f8c53eb3aaeb`  
		Last Modified: Fri, 15 Sep 2017 02:35:24 GMT  
		Size: 32.3 MB (32278685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237f9807dedef02d610dcb1b86f56887011abc35d10ae0969d7a094f32ccdb9a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9e30a9c779f9c54a1fa2dd99fc9fefd824063e9ebefcfb9701eded495d1a3a`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cf6eeed2edebfb236212d609426ac37f4e63c3cc24c25b9bcae333812a4685`  
		Last Modified: Fri, 15 Sep 2017 02:35:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.11` - linux; s390x

```console
$ docker pull ghost@sha256:a57f39121c488a204984d8455dc4a101b516f95a3e8bdfed6394bd44617e9116
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120978548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfda72a7d2c2c07e6cd42304b3101f3117c76802be6300435a19350226b562c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Fri, 08 Sep 2017 18:18:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 08 Sep 2017 18:18:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:18:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
WORKDIR /usr/src/ghost
# Fri, 08 Sep 2017 18:18:26 GMT
ENV GHOST_VERSION=0.11.11
# Fri, 08 Sep 2017 18:20:12 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 08 Sep 2017 18:20:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 08 Sep 2017 18:20:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 08 Sep 2017 18:20:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 08 Sep 2017 18:20:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 08 Sep 2017 18:20:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 18:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:20:15 GMT
EXPOSE 2368/tcp
# Fri, 08 Sep 2017 18:20:15 GMT
CMD ["npm" "start"]
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
	-	`sha256:310ec0c957fa56cf3a91e64a6fd1fb173f1ab96f858b1d33ef0e0b9f0d6d8c54`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbb5c26fc18f28cbae51ee1a57fde1b4dff26ef099909f735707cdb34590485`  
		Last Modified: Fri, 08 Sep 2017 18:21:11 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f8595ea20b8e5e7e0b9cc7c44eaa0f184f031ff8e16feb566226a29704133`  
		Last Modified: Fri, 08 Sep 2017 18:21:10 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d8ea3650b4f6dc874d8a690cffecb6dd26ac8fae1c60e210bfcb931f8ebf2a`  
		Last Modified: Fri, 08 Sep 2017 18:21:19 GMT  
		Size: 32.3 MB (32317190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6ca33ee71f9b5d3f8463a3bf15bde45487d6bfdef165404f1bbc66c5650241`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d601bece71affe0ea8f1bf22c4a94f1ce5f45b2caf38d7eb5b44c5de72543d3`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aaf8edaffa4c98463316ba4768b63b95ebe5aac145d5e8b5b218ed4ab73a54`  
		Last Modified: Fri, 08 Sep 2017 18:21:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.11-alpine`

```console
$ docker pull ghost@sha256:26a691bac954e9b8e07da7346e82d5ea14218361395c16e38793eec63c9957c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4ad3d7e137160c04def7f214fcae86a03d473a76efc88af5f820bf194bd932f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44996427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ae23590f30dcbf59bd5464a61c9d637ebc7ff58820fd39e0aac46f08b9271f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:16:34 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 13 Sep 2017 21:16:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:16:34 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:16:35 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:17:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:17:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:17:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:17:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:25 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:17:25 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6998b8eab62af074a96f5a68111c04090ff0a876b7a501917024948d84228a`  
		Last Modified: Wed, 13 Sep 2017 21:21:11 GMT  
		Size: 1.3 MB (1336092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0b83b60255add53275d283becad4dd2c65fbacccb6ba51342326cab98cde9`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940406319f692a95bc97b34410f9ad07b1ac5410b537fedf4bcef9cd1cf19f22`  
		Last Modified: Wed, 13 Sep 2017 21:21:20 GMT  
		Size: 24.9 MB (24881708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ebfd1db388965772b75bf1597d45b7d4cd3d8c591934d37ad09b94b5e43d2`  
		Last Modified: Wed, 13 Sep 2017 21:21:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a533120c862f1a83b05447d226be18d2af33f4860087d080db846d1360a05`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:26a691bac954e9b8e07da7346e82d5ea14218361395c16e38793eec63c9957c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4ad3d7e137160c04def7f214fcae86a03d473a76efc88af5f820bf194bd932f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44996427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ae23590f30dcbf59bd5464a61c9d637ebc7ff58820fd39e0aac46f08b9271f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:16:34 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 13 Sep 2017 21:16:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:16:34 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:16:35 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:17:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:17:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:17:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:17:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:25 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:17:25 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6998b8eab62af074a96f5a68111c04090ff0a876b7a501917024948d84228a`  
		Last Modified: Wed, 13 Sep 2017 21:21:11 GMT  
		Size: 1.3 MB (1336092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0b83b60255add53275d283becad4dd2c65fbacccb6ba51342326cab98cde9`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940406319f692a95bc97b34410f9ad07b1ac5410b537fedf4bcef9cd1cf19f22`  
		Last Modified: Wed, 13 Sep 2017 21:21:20 GMT  
		Size: 24.9 MB (24881708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ebfd1db388965772b75bf1597d45b7d4cd3d8c591934d37ad09b94b5e43d2`  
		Last Modified: Wed, 13 Sep 2017 21:21:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a533120c862f1a83b05447d226be18d2af33f4860087d080db846d1360a05`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:26a691bac954e9b8e07da7346e82d5ea14218361395c16e38793eec63c9957c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4ad3d7e137160c04def7f214fcae86a03d473a76efc88af5f820bf194bd932f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44996427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ae23590f30dcbf59bd5464a61c9d637ebc7ff58820fd39e0aac46f08b9271f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:16:34 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 13 Sep 2017 21:16:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:16:34 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:16:35 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:17:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:17:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:17:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:17:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:25 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:17:25 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6998b8eab62af074a96f5a68111c04090ff0a876b7a501917024948d84228a`  
		Last Modified: Wed, 13 Sep 2017 21:21:11 GMT  
		Size: 1.3 MB (1336092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0b83b60255add53275d283becad4dd2c65fbacccb6ba51342326cab98cde9`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940406319f692a95bc97b34410f9ad07b1ac5410b537fedf4bcef9cd1cf19f22`  
		Last Modified: Wed, 13 Sep 2017 21:21:20 GMT  
		Size: 24.9 MB (24881708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ebfd1db388965772b75bf1597d45b7d4cd3d8c591934d37ad09b94b5e43d2`  
		Last Modified: Wed, 13 Sep 2017 21:21:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a533120c862f1a83b05447d226be18d2af33f4860087d080db846d1360a05`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:f92a2765bfacf0a61c2425efd5efddd70c3a22ce3100a06d806a241aa57fd56a
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
$ docker pull ghost@sha256:4e734c7eb11cb742921d1818c8cc850b2f44febea8145299f763c1323187594a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216212211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9566d96b18e258ff47033c2c2e22b9d841cfd817a23e34b55843b37b8c274bf2`
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
# Tue, 26 Sep 2017 00:35:52 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:36:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:36:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:36:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:37:10 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:37:10 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 00:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:37:11 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:37:11 GMT
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
	-	`sha256:6d6db3e32b4ddc7bb09406ffc620a3fabb614d687b136e9074c6248ea49c0ef2`  
		Last Modified: Tue, 26 Sep 2017 00:45:00 GMT  
		Size: 34.5 MB (34479526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ac68b3a5bb14ccd127f965583e7bdee8c9bff5420163aa6a91f73b2e9476f2`  
		Last Modified: Tue, 26 Sep 2017 00:45:22 GMT  
		Size: 93.6 MB (93591754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a43571d9ddecd21aeb04611479db6ab9d96871895770c491d8057739f603f4`  
		Last Modified: Tue, 26 Sep 2017 00:44:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:6db9afa9075c2f8de830bef6f5b56911b2c1fcc9e34276e1ba62b227c1309743
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200560566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238cba418777d276aa7c6ab4c82356988528c5b6b09541bef15fd157fa5295cf`
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
# Wed, 27 Sep 2017 07:58:55 GMT
ENV GHOST_VERSION=1.9.0
# Wed, 27 Sep 2017 08:00:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 27 Sep 2017 08:00:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Sep 2017 08:00:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Sep 2017 08:01:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Sep 2017 08:01:23 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Sep 2017 08:01:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Sep 2017 08:01:24 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 27 Sep 2017 08:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:01:24 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:01:24 GMT
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
	-	`sha256:85685bc579c7051f631ea5b71a8fb05591bd8fc9e88a3d611c70409fc5a4c99c`  
		Last Modified: Wed, 27 Sep 2017 08:05:38 GMT  
		Size: 29.3 MB (29266276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd74c09adcf137a4451dd4d8c442ddd05500523604c32a28571cf608b66dc761`  
		Last Modified: Wed, 27 Sep 2017 08:06:01 GMT  
		Size: 88.9 MB (88927951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec76b41c92e43c63e515158f4207de0a6ec70371fe98d56e3335937f8e9fe07b`  
		Last Modified: Wed, 27 Sep 2017 08:05:26 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:99c1ef94c31fcb5f633cf892934abf669d175d4ee86a87c75d7508a0079bb162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203159844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41f19b3519371fa743c8e4f3a8cc62e73298b41b8a415866c0980a6fe69ea5e`
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
# Tue, 26 Sep 2017 10:41:37 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 10:43:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 10:45:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 10:45:16 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 10:45:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 10:45:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 10:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:45:19 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 10:45:19 GMT
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
	-	`sha256:dc5b92552d6c052e504b112f4bbe5513b044317b586b510d280765afdd44dc98`  
		Last Modified: Tue, 26 Sep 2017 10:45:50 GMT  
		Size: 29.3 MB (29267282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b56fb7afa12868ea9c8facfba32a7e8117e35387f48b5d373bc7d4ef6a07c8e`  
		Last Modified: Tue, 26 Sep 2017 10:46:15 GMT  
		Size: 89.0 MB (88985324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f90f527454bf6553f049052e0e966c450785551db753fe0c54ae769fb0b539`  
		Last Modified: Tue, 26 Sep 2017 10:45:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:826b01c7597f15b0b511072cf8a25b2bf44c7816c70de6c0baea85ead8f036a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205293501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5eb848eed08fa9fedf35128a5b18e5185740d4784a128456fa058a0ea8659e`
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
# Tue, 26 Sep 2017 01:26:22 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 01:27:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 01:27:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 01:27:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 01:28:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 01:28:34 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 01:28:36 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 01:28:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 01:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:28:44 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 01:28:47 GMT
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
	-	`sha256:57d0bc621476346c9dcc2b69a9943e230904ad4696a589c5722079b600def5c5`  
		Last Modified: Tue, 26 Sep 2017 01:29:19 GMT  
		Size: 29.3 MB (29265976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c75fb175437dbf5d65202c9ab1c806eb1bc81a516a42d11af304d6bf8be7ae1`  
		Last Modified: Tue, 26 Sep 2017 01:29:36 GMT  
		Size: 89.0 MB (89008967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e924d15af08e49753d5025b7d443324c4142bf1b9c2305933a9eea39188e88af`  
		Last Modified: Tue, 26 Sep 2017 01:29:10 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:1e816c9e438193c41e66bfd20c421fd3cdb05b6c48fb7efb426327b065a52a2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206891346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4a5fe3962f200d35079c12600b27bc78992fd35048af128f2dbb0ff622a567`
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
# Tue, 26 Sep 2017 14:22:24 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 14:23:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 14:23:25 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 14:23:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 14:23:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 14:23:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:23:26 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 14:23:26 GMT
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
	-	`sha256:839606b6af004bb69087e03d6298f7f3af131b33695e875e39e5a98af401606f`  
		Last Modified: Tue, 26 Sep 2017 14:23:51 GMT  
		Size: 29.3 MB (29265795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c7be78f7849ea27389fae74984c181661ab2f77bae9c055d647f5f25fd532`  
		Last Modified: Tue, 26 Sep 2017 14:24:02 GMT  
		Size: 89.0 MB (88969181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf171ec225f9ee7f7850bd7f938021dba56574a46f953bb61382f7cd7247547f`  
		Last Modified: Tue, 26 Sep 2017 14:23:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.9`

```console
$ docker pull ghost@sha256:f92a2765bfacf0a61c2425efd5efddd70c3a22ce3100a06d806a241aa57fd56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.9` - linux; amd64

```console
$ docker pull ghost@sha256:4e734c7eb11cb742921d1818c8cc850b2f44febea8145299f763c1323187594a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216212211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9566d96b18e258ff47033c2c2e22b9d841cfd817a23e34b55843b37b8c274bf2`
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
# Tue, 26 Sep 2017 00:35:52 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:36:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:36:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:36:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:37:10 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:37:10 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 00:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:37:11 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:37:11 GMT
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
	-	`sha256:6d6db3e32b4ddc7bb09406ffc620a3fabb614d687b136e9074c6248ea49c0ef2`  
		Last Modified: Tue, 26 Sep 2017 00:45:00 GMT  
		Size: 34.5 MB (34479526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ac68b3a5bb14ccd127f965583e7bdee8c9bff5420163aa6a91f73b2e9476f2`  
		Last Modified: Tue, 26 Sep 2017 00:45:22 GMT  
		Size: 93.6 MB (93591754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a43571d9ddecd21aeb04611479db6ab9d96871895770c491d8057739f603f4`  
		Last Modified: Tue, 26 Sep 2017 00:44:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.9` - linux; arm variant v7

```console
$ docker pull ghost@sha256:6db9afa9075c2f8de830bef6f5b56911b2c1fcc9e34276e1ba62b227c1309743
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200560566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238cba418777d276aa7c6ab4c82356988528c5b6b09541bef15fd157fa5295cf`
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
# Wed, 27 Sep 2017 07:58:55 GMT
ENV GHOST_VERSION=1.9.0
# Wed, 27 Sep 2017 08:00:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 27 Sep 2017 08:00:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Sep 2017 08:00:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Sep 2017 08:01:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Sep 2017 08:01:23 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Sep 2017 08:01:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Sep 2017 08:01:24 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 27 Sep 2017 08:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:01:24 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:01:24 GMT
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
	-	`sha256:85685bc579c7051f631ea5b71a8fb05591bd8fc9e88a3d611c70409fc5a4c99c`  
		Last Modified: Wed, 27 Sep 2017 08:05:38 GMT  
		Size: 29.3 MB (29266276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd74c09adcf137a4451dd4d8c442ddd05500523604c32a28571cf608b66dc761`  
		Last Modified: Wed, 27 Sep 2017 08:06:01 GMT  
		Size: 88.9 MB (88927951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec76b41c92e43c63e515158f4207de0a6ec70371fe98d56e3335937f8e9fe07b`  
		Last Modified: Wed, 27 Sep 2017 08:05:26 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.9` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:99c1ef94c31fcb5f633cf892934abf669d175d4ee86a87c75d7508a0079bb162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203159844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41f19b3519371fa743c8e4f3a8cc62e73298b41b8a415866c0980a6fe69ea5e`
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
# Tue, 26 Sep 2017 10:41:37 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 10:43:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 10:45:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 10:45:16 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 10:45:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 10:45:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 10:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:45:19 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 10:45:19 GMT
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
	-	`sha256:dc5b92552d6c052e504b112f4bbe5513b044317b586b510d280765afdd44dc98`  
		Last Modified: Tue, 26 Sep 2017 10:45:50 GMT  
		Size: 29.3 MB (29267282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b56fb7afa12868ea9c8facfba32a7e8117e35387f48b5d373bc7d4ef6a07c8e`  
		Last Modified: Tue, 26 Sep 2017 10:46:15 GMT  
		Size: 89.0 MB (88985324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f90f527454bf6553f049052e0e966c450785551db753fe0c54ae769fb0b539`  
		Last Modified: Tue, 26 Sep 2017 10:45:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.9` - linux; ppc64le

```console
$ docker pull ghost@sha256:826b01c7597f15b0b511072cf8a25b2bf44c7816c70de6c0baea85ead8f036a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205293501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5eb848eed08fa9fedf35128a5b18e5185740d4784a128456fa058a0ea8659e`
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
# Tue, 26 Sep 2017 01:26:22 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 01:27:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 01:27:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 01:27:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 01:28:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 01:28:34 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 01:28:36 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 01:28:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 01:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:28:44 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 01:28:47 GMT
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
	-	`sha256:57d0bc621476346c9dcc2b69a9943e230904ad4696a589c5722079b600def5c5`  
		Last Modified: Tue, 26 Sep 2017 01:29:19 GMT  
		Size: 29.3 MB (29265976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c75fb175437dbf5d65202c9ab1c806eb1bc81a516a42d11af304d6bf8be7ae1`  
		Last Modified: Tue, 26 Sep 2017 01:29:36 GMT  
		Size: 89.0 MB (89008967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e924d15af08e49753d5025b7d443324c4142bf1b9c2305933a9eea39188e88af`  
		Last Modified: Tue, 26 Sep 2017 01:29:10 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.9` - linux; s390x

```console
$ docker pull ghost@sha256:1e816c9e438193c41e66bfd20c421fd3cdb05b6c48fb7efb426327b065a52a2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206891346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4a5fe3962f200d35079c12600b27bc78992fd35048af128f2dbb0ff622a567`
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
# Tue, 26 Sep 2017 14:22:24 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 14:23:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 14:23:25 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 14:23:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 14:23:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 14:23:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:23:26 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 14:23:26 GMT
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
	-	`sha256:839606b6af004bb69087e03d6298f7f3af131b33695e875e39e5a98af401606f`  
		Last Modified: Tue, 26 Sep 2017 14:23:51 GMT  
		Size: 29.3 MB (29265795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c7be78f7849ea27389fae74984c181661ab2f77bae9c055d647f5f25fd532`  
		Last Modified: Tue, 26 Sep 2017 14:24:02 GMT  
		Size: 89.0 MB (88969181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf171ec225f9ee7f7850bd7f938021dba56574a46f953bb61382f7cd7247547f`  
		Last Modified: Tue, 26 Sep 2017 14:23:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.9.1`

**does not exist** (yet?)

## `ghost:1.9.1-alpine`

**does not exist** (yet?)

## `ghost:1.9-alpine`

```console
$ docker pull ghost@sha256:40c12af77e9a31e0bd0235f96564a260c31bc6f047bee6ddec2f8fe9af5afcf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.9-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:919cf015f6b27984c84d6725e759fa1f9665411894ca7d1db05e0e47935410dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147950859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570613750729feac20997b27a802921d40b7cdb6037e34c8831cd2fa60f96d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:13:38 GMT
RUN apk add --no-cache 		bash
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:13:40 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 26 Sep 2017 00:40:07 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:40:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:41:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:41:26 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:41:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:41:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 26 Sep 2017 00:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:41:27 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:41:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bea52f21d15abf9efa81d6d421474f05454334c0b6f6d271b714f31d813ba4`  
		Last Modified: Wed, 13 Sep 2017 21:19:06 GMT  
		Size: 1.1 MB (1095613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555d89e9f77d9e29ecd734a56f3e23606fff171c8d9c9fd19514ec10607bc999`  
		Last Modified: Tue, 26 Sep 2017 00:46:45 GMT  
		Size: 34.5 MB (34479561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f083891fee6d8ee3cab0fa16c5857e0826afae62d542f554de5d4d610a57984`  
		Last Modified: Tue, 26 Sep 2017 00:47:11 GMT  
		Size: 93.6 MB (93597462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c042e4c5adbd6954b55840e2b465a819fdb4568f2a631a380eb29566a9b5286b`  
		Last Modified: Tue, 26 Sep 2017 00:45:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:40c12af77e9a31e0bd0235f96564a260c31bc6f047bee6ddec2f8fe9af5afcf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:919cf015f6b27984c84d6725e759fa1f9665411894ca7d1db05e0e47935410dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147950859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570613750729feac20997b27a802921d40b7cdb6037e34c8831cd2fa60f96d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:13:38 GMT
RUN apk add --no-cache 		bash
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:13:40 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 26 Sep 2017 00:40:07 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:40:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:41:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:41:26 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:41:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:41:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 26 Sep 2017 00:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:41:27 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:41:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bea52f21d15abf9efa81d6d421474f05454334c0b6f6d271b714f31d813ba4`  
		Last Modified: Wed, 13 Sep 2017 21:19:06 GMT  
		Size: 1.1 MB (1095613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555d89e9f77d9e29ecd734a56f3e23606fff171c8d9c9fd19514ec10607bc999`  
		Last Modified: Tue, 26 Sep 2017 00:46:45 GMT  
		Size: 34.5 MB (34479561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f083891fee6d8ee3cab0fa16c5857e0826afae62d542f554de5d4d610a57984`  
		Last Modified: Tue, 26 Sep 2017 00:47:11 GMT  
		Size: 93.6 MB (93597462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c042e4c5adbd6954b55840e2b465a819fdb4568f2a631a380eb29566a9b5286b`  
		Last Modified: Tue, 26 Sep 2017 00:45:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:40c12af77e9a31e0bd0235f96564a260c31bc6f047bee6ddec2f8fe9af5afcf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:919cf015f6b27984c84d6725e759fa1f9665411894ca7d1db05e0e47935410dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147950859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570613750729feac20997b27a802921d40b7cdb6037e34c8831cd2fa60f96d0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:13:38 GMT
RUN apk add --no-cache 		bash
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:13:40 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 26 Sep 2017 00:40:07 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:40:48 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:40:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:41:25 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:41:26 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:41:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:41:26 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 26 Sep 2017 00:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:41:27 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:41:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bea52f21d15abf9efa81d6d421474f05454334c0b6f6d271b714f31d813ba4`  
		Last Modified: Wed, 13 Sep 2017 21:19:06 GMT  
		Size: 1.1 MB (1095613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555d89e9f77d9e29ecd734a56f3e23606fff171c8d9c9fd19514ec10607bc999`  
		Last Modified: Tue, 26 Sep 2017 00:46:45 GMT  
		Size: 34.5 MB (34479561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f083891fee6d8ee3cab0fa16c5857e0826afae62d542f554de5d4d610a57984`  
		Last Modified: Tue, 26 Sep 2017 00:47:11 GMT  
		Size: 93.6 MB (93597462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c042e4c5adbd6954b55840e2b465a819fdb4568f2a631a380eb29566a9b5286b`  
		Last Modified: Tue, 26 Sep 2017 00:45:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:f92a2765bfacf0a61c2425efd5efddd70c3a22ce3100a06d806a241aa57fd56a
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
$ docker pull ghost@sha256:4e734c7eb11cb742921d1818c8cc850b2f44febea8145299f763c1323187594a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216212211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9566d96b18e258ff47033c2c2e22b9d841cfd817a23e34b55843b37b8c274bf2`
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
# Tue, 26 Sep 2017 00:35:52 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:36:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:36:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:36:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:37:10 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:37:10 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 00:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:37:11 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:37:11 GMT
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
	-	`sha256:6d6db3e32b4ddc7bb09406ffc620a3fabb614d687b136e9074c6248ea49c0ef2`  
		Last Modified: Tue, 26 Sep 2017 00:45:00 GMT  
		Size: 34.5 MB (34479526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ac68b3a5bb14ccd127f965583e7bdee8c9bff5420163aa6a91f73b2e9476f2`  
		Last Modified: Tue, 26 Sep 2017 00:45:22 GMT  
		Size: 93.6 MB (93591754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a43571d9ddecd21aeb04611479db6ab9d96871895770c491d8057739f603f4`  
		Last Modified: Tue, 26 Sep 2017 00:44:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:6db9afa9075c2f8de830bef6f5b56911b2c1fcc9e34276e1ba62b227c1309743
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200560566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238cba418777d276aa7c6ab4c82356988528c5b6b09541bef15fd157fa5295cf`
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
# Wed, 27 Sep 2017 07:58:55 GMT
ENV GHOST_VERSION=1.9.0
# Wed, 27 Sep 2017 08:00:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 27 Sep 2017 08:00:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 27 Sep 2017 08:00:08 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 27 Sep 2017 08:01:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 27 Sep 2017 08:01:23 GMT
WORKDIR /var/lib/ghost
# Wed, 27 Sep 2017 08:01:23 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 27 Sep 2017 08:01:24 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 27 Sep 2017 08:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 08:01:24 GMT
EXPOSE 2368/tcp
# Wed, 27 Sep 2017 08:01:24 GMT
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
	-	`sha256:85685bc579c7051f631ea5b71a8fb05591bd8fc9e88a3d611c70409fc5a4c99c`  
		Last Modified: Wed, 27 Sep 2017 08:05:38 GMT  
		Size: 29.3 MB (29266276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd74c09adcf137a4451dd4d8c442ddd05500523604c32a28571cf608b66dc761`  
		Last Modified: Wed, 27 Sep 2017 08:06:01 GMT  
		Size: 88.9 MB (88927951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec76b41c92e43c63e515158f4207de0a6ec70371fe98d56e3335937f8e9fe07b`  
		Last Modified: Wed, 27 Sep 2017 08:05:26 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:99c1ef94c31fcb5f633cf892934abf669d175d4ee86a87c75d7508a0079bb162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203159844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41f19b3519371fa743c8e4f3a8cc62e73298b41b8a415866c0980a6fe69ea5e`
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
# Tue, 26 Sep 2017 10:41:37 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 10:43:35 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 10:43:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 10:45:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 10:45:16 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 10:45:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 10:45:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 10:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:45:19 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 10:45:19 GMT
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
	-	`sha256:dc5b92552d6c052e504b112f4bbe5513b044317b586b510d280765afdd44dc98`  
		Last Modified: Tue, 26 Sep 2017 10:45:50 GMT  
		Size: 29.3 MB (29267282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b56fb7afa12868ea9c8facfba32a7e8117e35387f48b5d373bc7d4ef6a07c8e`  
		Last Modified: Tue, 26 Sep 2017 10:46:15 GMT  
		Size: 89.0 MB (88985324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f90f527454bf6553f049052e0e966c450785551db753fe0c54ae769fb0b539`  
		Last Modified: Tue, 26 Sep 2017 10:45:38 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:826b01c7597f15b0b511072cf8a25b2bf44c7816c70de6c0baea85ead8f036a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205293501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5eb848eed08fa9fedf35128a5b18e5185740d4784a128456fa058a0ea8659e`
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
# Tue, 26 Sep 2017 01:26:22 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 01:27:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 01:27:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 01:27:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 01:28:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 01:28:34 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 01:28:36 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 01:28:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 01:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:28:44 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 01:28:47 GMT
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
	-	`sha256:57d0bc621476346c9dcc2b69a9943e230904ad4696a589c5722079b600def5c5`  
		Last Modified: Tue, 26 Sep 2017 01:29:19 GMT  
		Size: 29.3 MB (29265976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c75fb175437dbf5d65202c9ab1c806eb1bc81a516a42d11af304d6bf8be7ae1`  
		Last Modified: Tue, 26 Sep 2017 01:29:36 GMT  
		Size: 89.0 MB (89008967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e924d15af08e49753d5025b7d443324c4142bf1b9c2305933a9eea39188e88af`  
		Last Modified: Tue, 26 Sep 2017 01:29:10 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:1e816c9e438193c41e66bfd20c421fd3cdb05b6c48fb7efb426327b065a52a2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206891346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4a5fe3962f200d35079c12600b27bc78992fd35048af128f2dbb0ff622a567`
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
# Tue, 26 Sep 2017 14:22:24 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 14:22:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 14:22:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 14:23:23 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 14:23:25 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 14:23:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 14:23:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 14:23:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:23:26 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 14:23:26 GMT
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
	-	`sha256:839606b6af004bb69087e03d6298f7f3af131b33695e875e39e5a98af401606f`  
		Last Modified: Tue, 26 Sep 2017 14:23:51 GMT  
		Size: 29.3 MB (29265795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c7be78f7849ea27389fae74984c181661ab2f77bae9c055d647f5f25fd532`  
		Last Modified: Tue, 26 Sep 2017 14:24:02 GMT  
		Size: 89.0 MB (88969181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf171ec225f9ee7f7850bd7f938021dba56574a46f953bb61382f7cd7247547f`  
		Last Modified: Tue, 26 Sep 2017 14:23:39 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
