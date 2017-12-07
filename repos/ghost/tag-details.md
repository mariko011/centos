<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.18`](#ghost118)
-	[`ghost:1.18.3`](#ghost1183)
-	[`ghost:1.18.3-alpine`](#ghost1183-alpine)
-	[`ghost:1.18-alpine`](#ghost118-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:e32706df92c287870321215fbd827a837b1e46ccdc3e60530c56c063f1bfeaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0` - linux; amd64

```console
$ docker pull ghost@sha256:8af5e55f55f6cf936e129922d0e2ccbdf4361ce5483ccb1a599e4f36cc35d505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113704478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c910c95c88c6160c06fcdc2f2da7cc0112572248c4eca7a1dbd91ac91931ce71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Wed, 06 Dec 2017 00:02:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 00:02:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 00:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 00:02:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:03:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:03:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:03:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:03:17 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:03:17 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:03:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 00:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:03:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:03:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d4207880182ccc85845234f1d2fb5d3287ac479deb4ffdb82997bf7e66847c`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a27ff689b78212465ffce69495a2bddb07836ff2db0f6ce3f65de4aa5b1cd`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcd6f6dd20ccdefce61827dc5941bcd0f4cddd96af04766f1e22bc7c37efed3`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd0ad997e8ef4d64ca5ce3ee8015a7e470b74ad474ac499f93e26dd82955693`  
		Last Modified: Wed, 06 Dec 2017 00:13:18 GMT  
		Size: 25.5 MB (25478466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32731af8e4a2bed76e6d60bd3d5f195ec5d7da4e82c271584bcacd732e86a22c`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d81a5058217fba02ff4fe40ce6064a556b653a2e99ea2338fc579ce14d5c2f`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def39552906472207b6c02ff1a1de9f4fc20533fc2fb4a63e4b01bd3c63adfb3`  
		Last Modified: Wed, 06 Dec 2017 00:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f643623c42406aeee7e8ef92b253767993ba3dd86d568303d5b3e2c412bdb7e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a405f1f6fe5e34c2c78927aa47e507a1616b011e37f7a4e9947095dd0a5e0d6e`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:21:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:21:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:21:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:21:40 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:21:40 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:21:41 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:24:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:24:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:25:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:25:00 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:25:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:25:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:25:02 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:25:02 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21119bf809ca7c6394fc0282dcab3a679cd9b462047ff0754ecb0591527761e7`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57e997431c4d557c4dfdb7282a394272877696e06c8a9b8e1c228af97416b24`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24c1ffc30f25dddd19d4fe973ae05b4623de29e636ea36e8e5171eca751ff49`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f44787c03ebce5e43c488d15fd16088f5c500279b67f38d4a6093d9e68317`  
		Last Modified: Wed, 06 Dec 2017 06:26:57 GMT  
		Size: 31.8 MB (31828548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d5ca5770db042470a057a75f42f07372ff165403b8d5ec662e8b40b10ddba5`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab60ae2b270676f2ec6730e78f9d0b0292a1e15b7ef307c69668b0a0db85989e`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b5070c8a516c1e9d29adde112abc6fcb191c1f0da52e53dd525c41ab3c7219`  
		Last Modified: Wed, 06 Dec 2017 06:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e5a15ff306717a62ff3e5efec4301e27e3837001c0a3ccb9c9bbf9167bd795b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dddd46d340e406ead7ea349d5cc5b3a37101151e742b1a10ffffb845c378b3`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:32:25 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 13:32:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:32:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:32:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 13:32:31 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 13:32:32 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 13:37:27 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 13:37:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 13:37:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 13:37:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 13:37:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 13:37:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 13:37:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:37:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:37:35 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4131b8b4339deb903b00d26a099b369cbb1bf0ebae331d7cb3bcd2e356f630c3`  
		Last Modified: Wed, 06 Dec 2017 13:39:53 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a83a0deee85e2f60a935fdbe7452f1af6b29cb3a9aac6599f43ba58ce5ae51`  
		Last Modified: Wed, 06 Dec 2017 13:39:54 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce15f242122812d4a4b23685f875f050079a6f99b3f8dca25cee83ecb7fdf93`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5258796d47e58b0e38d090cff09eee14da6aeb337a97ae1e50b067c28d35f`  
		Last Modified: Wed, 06 Dec 2017 13:40:07 GMT  
		Size: 32.2 MB (32165093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176ea9cf933eef98c27954550207b760ba52ee00e1c3ac8b85c4eefa12c9339`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331ba434e0abfccab62d9d94894bb7d782a6b8b39a53683d05fd29253b41eaf1`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a065b6e86ad438d9f41fc5ceb063c5c7c7fd8ad17eea2ed14ec6fb5c0d5d1589`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:59400bc4c71ab3ebbdc50c421a098bb55ab74ae8f5bf0868c19ba511dc27cc2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e9e1414d8b577c979fc174077e6d4fca4cdbd928c72cbbba4273b9322f7760`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:15:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:15:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:15:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:17:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:17:40 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:17:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:17:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:17:41 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:17:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714eb27b20f5dcb5fdbb6356e2c892417874144e240302ca48f0f8f5f4ce5b4`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c0bec48ffbe5604d776bd240edebaa6ec4a28967f9bdfbcd59e5ac3e3f38f7`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e447662f4e2451b8a4804083494acc9009650a8229e859f9f83c7be7e88d07c`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89759fe81d9e2c1f2698223478421886d8e5b9fb8f7a6a6ff7e784c1f5813cd6`  
		Last Modified: Wed, 06 Dec 2017 06:32:54 GMT  
		Size: 32.2 MB (32237223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bff69acb842cb12eadc65a8bd05038195b7c41d39947790d5b6ce4504f026f`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf6dfcb54721a1336e1838523f5ee4656640c1b7e9ab4534c57cd3797ac8f5b`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f670f013ecb99274cbdfbc7f6143e342b24a7a57266b439a419ae328eee72`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:4270dc5b3ba9159ec10d379a3737bf934107d3361a7d98e544c1db7fd5cf08f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc7824d7ceb0dc4559e8ff1997bf129dd9e11ce758b16af8ab4c684aa8f8d9b`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:39:58 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 05:40:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:40:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:40:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 05:40:12 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 05:40:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 05:44:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 05:44:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 05:44:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 05:44:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 05:44:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 05:45:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 05:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:45:06 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:45:07 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e5a71e92391f6d0be1ffe4309209c493dbe7a94ebba2738b444e8c439dca5`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df946a7781fa8fdff1699c7affa72005c3944093b072c3c0d5b5f841548e1`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0624ecd41615657fca82ee8dcea74a8e7b8ae583326be2dc8202f435ab94ae`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c8b5f87a4d21fdf7df40472924ba9763c6aafac5fd2f8f5d2029d1f851a41`  
		Last Modified: Wed, 06 Dec 2017 05:46:33 GMT  
		Size: 32.6 MB (32635045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c75f833290ef91e0de276a0a470bc117bbe853e8443665e8546f50fdf450485`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8b8cd75aa9d075e64d4abb76e2f10a70364b31b828e5b15b077fc19dafa92`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29faa69cf0415b54c023e4e2c2bddb784654d7a6ce2dea878631f8e59ab042f7`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:6ae8aa195643ef80eb3ff98b70a27cac806342e23d7906488163ae040fe6d950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118e390ae16898b09c86455a941c7d99b53cca3360685b9f49447a8fb8848b5a`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:26:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 20:26:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:26:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:26:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 20:26:56 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 20:26:57 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 20:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 20:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 20:28:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 20:28:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 20:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 20:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 20:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:28:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:28:34 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e799c1b3863abb4ca4e17b21ee9c0d30a82f5a6139c008c8c59ba717934d01`  
		Last Modified: Wed, 06 Dec 2017 20:29:44 GMT  
		Size: 4.5 KB (4467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3755756718797cba432eace4324bd9fd8a99489035a23b3f719b696dc39a29cd`  
		Last Modified: Wed, 06 Dec 2017 20:29:43 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b06a7fd86e2490c199275b8e929785e0090074a6763345b8aa14df7df9358d`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6388af8dadcb1e127f2057795ef5aa6bdaa584f1932d2eb71cc8218a78950`  
		Last Modified: Wed, 06 Dec 2017 20:29:49 GMT  
		Size: 32.7 MB (32671713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839149d8dcea30dec363e7283cc8c3bed5e21740f91dfdbe31f109e568726440`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a535b2b234981b7bc81f8c5038caf4b4822ec9de85adc4571a75a6e6f9f32f`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4521645d92378d65a81b4cd699cebbbcbec5ebde5a6635c5757491b5e66f7b1b`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:e32706df92c287870321215fbd827a837b1e46ccdc3e60530c56c063f1bfeaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11` - linux; amd64

```console
$ docker pull ghost@sha256:8af5e55f55f6cf936e129922d0e2ccbdf4361ce5483ccb1a599e4f36cc35d505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113704478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c910c95c88c6160c06fcdc2f2da7cc0112572248c4eca7a1dbd91ac91931ce71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Wed, 06 Dec 2017 00:02:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 00:02:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 00:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 00:02:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:03:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:03:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:03:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:03:17 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:03:17 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:03:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 00:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:03:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:03:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d4207880182ccc85845234f1d2fb5d3287ac479deb4ffdb82997bf7e66847c`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a27ff689b78212465ffce69495a2bddb07836ff2db0f6ce3f65de4aa5b1cd`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcd6f6dd20ccdefce61827dc5941bcd0f4cddd96af04766f1e22bc7c37efed3`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd0ad997e8ef4d64ca5ce3ee8015a7e470b74ad474ac499f93e26dd82955693`  
		Last Modified: Wed, 06 Dec 2017 00:13:18 GMT  
		Size: 25.5 MB (25478466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32731af8e4a2bed76e6d60bd3d5f195ec5d7da4e82c271584bcacd732e86a22c`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d81a5058217fba02ff4fe40ce6064a556b653a2e99ea2338fc579ce14d5c2f`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def39552906472207b6c02ff1a1de9f4fc20533fc2fb4a63e4b01bd3c63adfb3`  
		Last Modified: Wed, 06 Dec 2017 00:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f643623c42406aeee7e8ef92b253767993ba3dd86d568303d5b3e2c412bdb7e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a405f1f6fe5e34c2c78927aa47e507a1616b011e37f7a4e9947095dd0a5e0d6e`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:21:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:21:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:21:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:21:40 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:21:40 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:21:41 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:24:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:24:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:25:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:25:00 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:25:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:25:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:25:02 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:25:02 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21119bf809ca7c6394fc0282dcab3a679cd9b462047ff0754ecb0591527761e7`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57e997431c4d557c4dfdb7282a394272877696e06c8a9b8e1c228af97416b24`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24c1ffc30f25dddd19d4fe973ae05b4623de29e636ea36e8e5171eca751ff49`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f44787c03ebce5e43c488d15fd16088f5c500279b67f38d4a6093d9e68317`  
		Last Modified: Wed, 06 Dec 2017 06:26:57 GMT  
		Size: 31.8 MB (31828548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d5ca5770db042470a057a75f42f07372ff165403b8d5ec662e8b40b10ddba5`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab60ae2b270676f2ec6730e78f9d0b0292a1e15b7ef307c69668b0a0db85989e`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b5070c8a516c1e9d29adde112abc6fcb191c1f0da52e53dd525c41ab3c7219`  
		Last Modified: Wed, 06 Dec 2017 06:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e5a15ff306717a62ff3e5efec4301e27e3837001c0a3ccb9c9bbf9167bd795b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dddd46d340e406ead7ea349d5cc5b3a37101151e742b1a10ffffb845c378b3`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:32:25 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 13:32:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:32:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:32:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 13:32:31 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 13:32:32 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 13:37:27 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 13:37:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 13:37:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 13:37:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 13:37:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 13:37:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 13:37:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:37:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:37:35 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4131b8b4339deb903b00d26a099b369cbb1bf0ebae331d7cb3bcd2e356f630c3`  
		Last Modified: Wed, 06 Dec 2017 13:39:53 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a83a0deee85e2f60a935fdbe7452f1af6b29cb3a9aac6599f43ba58ce5ae51`  
		Last Modified: Wed, 06 Dec 2017 13:39:54 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce15f242122812d4a4b23685f875f050079a6f99b3f8dca25cee83ecb7fdf93`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5258796d47e58b0e38d090cff09eee14da6aeb337a97ae1e50b067c28d35f`  
		Last Modified: Wed, 06 Dec 2017 13:40:07 GMT  
		Size: 32.2 MB (32165093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176ea9cf933eef98c27954550207b760ba52ee00e1c3ac8b85c4eefa12c9339`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331ba434e0abfccab62d9d94894bb7d782a6b8b39a53683d05fd29253b41eaf1`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a065b6e86ad438d9f41fc5ceb063c5c7c7fd8ad17eea2ed14ec6fb5c0d5d1589`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:59400bc4c71ab3ebbdc50c421a098bb55ab74ae8f5bf0868c19ba511dc27cc2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e9e1414d8b577c979fc174077e6d4fca4cdbd928c72cbbba4273b9322f7760`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:15:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:15:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:15:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:17:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:17:40 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:17:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:17:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:17:41 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:17:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714eb27b20f5dcb5fdbb6356e2c892417874144e240302ca48f0f8f5f4ce5b4`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c0bec48ffbe5604d776bd240edebaa6ec4a28967f9bdfbcd59e5ac3e3f38f7`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e447662f4e2451b8a4804083494acc9009650a8229e859f9f83c7be7e88d07c`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89759fe81d9e2c1f2698223478421886d8e5b9fb8f7a6a6ff7e784c1f5813cd6`  
		Last Modified: Wed, 06 Dec 2017 06:32:54 GMT  
		Size: 32.2 MB (32237223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bff69acb842cb12eadc65a8bd05038195b7c41d39947790d5b6ce4504f026f`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf6dfcb54721a1336e1838523f5ee4656640c1b7e9ab4534c57cd3797ac8f5b`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f670f013ecb99274cbdfbc7f6143e342b24a7a57266b439a419ae328eee72`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:4270dc5b3ba9159ec10d379a3737bf934107d3361a7d98e544c1db7fd5cf08f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc7824d7ceb0dc4559e8ff1997bf129dd9e11ce758b16af8ab4c684aa8f8d9b`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:39:58 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 05:40:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:40:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:40:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 05:40:12 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 05:40:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 05:44:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 05:44:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 05:44:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 05:44:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 05:44:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 05:45:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 05:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:45:06 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:45:07 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e5a71e92391f6d0be1ffe4309209c493dbe7a94ebba2738b444e8c439dca5`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df946a7781fa8fdff1699c7affa72005c3944093b072c3c0d5b5f841548e1`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0624ecd41615657fca82ee8dcea74a8e7b8ae583326be2dc8202f435ab94ae`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c8b5f87a4d21fdf7df40472924ba9763c6aafac5fd2f8f5d2029d1f851a41`  
		Last Modified: Wed, 06 Dec 2017 05:46:33 GMT  
		Size: 32.6 MB (32635045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c75f833290ef91e0de276a0a470bc117bbe853e8443665e8546f50fdf450485`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8b8cd75aa9d075e64d4abb76e2f10a70364b31b828e5b15b077fc19dafa92`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29faa69cf0415b54c023e4e2c2bddb784654d7a6ce2dea878631f8e59ab042f7`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:6ae8aa195643ef80eb3ff98b70a27cac806342e23d7906488163ae040fe6d950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118e390ae16898b09c86455a941c7d99b53cca3360685b9f49447a8fb8848b5a`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:26:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 20:26:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:26:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:26:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 20:26:56 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 20:26:57 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 20:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 20:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 20:28:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 20:28:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 20:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 20:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 20:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:28:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:28:34 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e799c1b3863abb4ca4e17b21ee9c0d30a82f5a6139c008c8c59ba717934d01`  
		Last Modified: Wed, 06 Dec 2017 20:29:44 GMT  
		Size: 4.5 KB (4467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3755756718797cba432eace4324bd9fd8a99489035a23b3f719b696dc39a29cd`  
		Last Modified: Wed, 06 Dec 2017 20:29:43 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b06a7fd86e2490c199275b8e929785e0090074a6763345b8aa14df7df9358d`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6388af8dadcb1e127f2057795ef5aa6bdaa584f1932d2eb71cc8218a78950`  
		Last Modified: Wed, 06 Dec 2017 20:29:49 GMT  
		Size: 32.7 MB (32671713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839149d8dcea30dec363e7283cc8c3bed5e21740f91dfdbe31f109e568726440`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a535b2b234981b7bc81f8c5038caf4b4822ec9de85adc4571a75a6e6f9f32f`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4521645d92378d65a81b4cd699cebbbcbec5ebde5a6635c5757491b5e66f7b1b`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:e32706df92c287870321215fbd827a837b1e46ccdc3e60530c56c063f1bfeaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:0.11.12` - linux; amd64

```console
$ docker pull ghost@sha256:8af5e55f55f6cf936e129922d0e2ccbdf4361ce5483ccb1a599e4f36cc35d505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113704478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c910c95c88c6160c06fcdc2f2da7cc0112572248c4eca7a1dbd91ac91931ce71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Wed, 06 Dec 2017 00:02:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 00:02:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 00:02:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 00:02:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:02:16 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:03:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:03:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:03:16 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:03:17 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:03:17 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:03:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 00:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:03:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:03:18 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d4207880182ccc85845234f1d2fb5d3287ac479deb4ffdb82997bf7e66847c`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a27ff689b78212465ffce69495a2bddb07836ff2db0f6ce3f65de4aa5b1cd`  
		Last Modified: Wed, 06 Dec 2017 00:13:07 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcd6f6dd20ccdefce61827dc5941bcd0f4cddd96af04766f1e22bc7c37efed3`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd0ad997e8ef4d64ca5ce3ee8015a7e470b74ad474ac499f93e26dd82955693`  
		Last Modified: Wed, 06 Dec 2017 00:13:18 GMT  
		Size: 25.5 MB (25478466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32731af8e4a2bed76e6d60bd3d5f195ec5d7da4e82c271584bcacd732e86a22c`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d81a5058217fba02ff4fe40ce6064a556b653a2e99ea2338fc579ce14d5c2f`  
		Last Modified: Wed, 06 Dec 2017 00:13:04 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def39552906472207b6c02ff1a1de9f4fc20533fc2fb4a63e4b01bd3c63adfb3`  
		Last Modified: Wed, 06 Dec 2017 00:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:8f643623c42406aeee7e8ef92b253767993ba3dd86d568303d5b3e2c412bdb7e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a405f1f6fe5e34c2c78927aa47e507a1616b011e37f7a4e9947095dd0a5e0d6e`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:21:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:21:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:21:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:21:40 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:21:40 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:21:41 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:24:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:24:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:25:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:25:00 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:25:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:25:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:25:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:25:02 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:25:02 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21119bf809ca7c6394fc0282dcab3a679cd9b462047ff0754ecb0591527761e7`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57e997431c4d557c4dfdb7282a394272877696e06c8a9b8e1c228af97416b24`  
		Last Modified: Wed, 06 Dec 2017 06:26:45 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24c1ffc30f25dddd19d4fe973ae05b4623de29e636ea36e8e5171eca751ff49`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f44787c03ebce5e43c488d15fd16088f5c500279b67f38d4a6093d9e68317`  
		Last Modified: Wed, 06 Dec 2017 06:26:57 GMT  
		Size: 31.8 MB (31828548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d5ca5770db042470a057a75f42f07372ff165403b8d5ec662e8b40b10ddba5`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab60ae2b270676f2ec6730e78f9d0b0292a1e15b7ef307c69668b0a0db85989e`  
		Last Modified: Wed, 06 Dec 2017 06:26:43 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b5070c8a516c1e9d29adde112abc6fcb191c1f0da52e53dd525c41ab3c7219`  
		Last Modified: Wed, 06 Dec 2017 06:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e5a15ff306717a62ff3e5efec4301e27e3837001c0a3ccb9c9bbf9167bd795b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dddd46d340e406ead7ea349d5cc5b3a37101151e742b1a10ffffb845c378b3`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:32:25 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 13:32:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:32:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:32:31 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 13:32:31 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 13:32:32 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 13:37:27 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 13:37:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 13:37:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 13:37:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 13:37:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 13:37:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 13:37:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:37:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:37:35 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4131b8b4339deb903b00d26a099b369cbb1bf0ebae331d7cb3bcd2e356f630c3`  
		Last Modified: Wed, 06 Dec 2017 13:39:53 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a83a0deee85e2f60a935fdbe7452f1af6b29cb3a9aac6599f43ba58ce5ae51`  
		Last Modified: Wed, 06 Dec 2017 13:39:54 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce15f242122812d4a4b23685f875f050079a6f99b3f8dca25cee83ecb7fdf93`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5258796d47e58b0e38d090cff09eee14da6aeb337a97ae1e50b067c28d35f`  
		Last Modified: Wed, 06 Dec 2017 13:40:07 GMT  
		Size: 32.2 MB (32165093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176ea9cf933eef98c27954550207b760ba52ee00e1c3ac8b85c4eefa12c9339`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331ba434e0abfccab62d9d94894bb7d782a6b8b39a53683d05fd29253b41eaf1`  
		Last Modified: Wed, 06 Dec 2017 13:39:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a065b6e86ad438d9f41fc5ceb063c5c7c7fd8ad17eea2ed14ec6fb5c0d5d1589`  
		Last Modified: Wed, 06 Dec 2017 13:39:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; 386

```console
$ docker pull ghost@sha256:59400bc4c71ab3ebbdc50c421a098bb55ab74ae8f5bf0868c19ba511dc27cc2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e9e1414d8b577c979fc174077e6d4fca4cdbd928c72cbbba4273b9322f7760`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:15:01 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 06:15:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:15:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 06:15:07 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 06:17:22 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 06:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:39 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 06:17:40 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 06:17:40 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 06:17:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 06:17:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:17:41 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:17:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714eb27b20f5dcb5fdbb6356e2c892417874144e240302ca48f0f8f5f4ce5b4`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 4.4 KB (4446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c0bec48ffbe5604d776bd240edebaa6ec4a28967f9bdfbcd59e5ac3e3f38f7`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e447662f4e2451b8a4804083494acc9009650a8229e859f9f83c7be7e88d07c`  
		Last Modified: Wed, 06 Dec 2017 06:32:35 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89759fe81d9e2c1f2698223478421886d8e5b9fb8f7a6a6ff7e784c1f5813cd6`  
		Last Modified: Wed, 06 Dec 2017 06:32:54 GMT  
		Size: 32.2 MB (32237223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bff69acb842cb12eadc65a8bd05038195b7c41d39947790d5b6ce4504f026f`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf6dfcb54721a1336e1838523f5ee4656640c1b7e9ab4534c57cd3797ac8f5b`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f670f013ecb99274cbdfbc7f6143e342b24a7a57266b439a419ae328eee72`  
		Last Modified: Wed, 06 Dec 2017 06:32:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:4270dc5b3ba9159ec10d379a3737bf934107d3361a7d98e544c1db7fd5cf08f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc7824d7ceb0dc4559e8ff1997bf129dd9e11ce758b16af8ab4c684aa8f8d9b`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:39:58 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 05:40:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:40:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:40:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 05:40:12 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 05:40:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 05:44:48 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 05:44:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 05:44:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 05:44:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 05:44:59 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 05:45:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 05:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:45:06 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:45:07 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e5a71e92391f6d0be1ffe4309209c493dbe7a94ebba2738b444e8c439dca5`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 4.5 KB (4505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df946a7781fa8fdff1699c7affa72005c3944093b072c3c0d5b5f841548e1`  
		Last Modified: Wed, 06 Dec 2017 05:46:26 GMT  
		Size: 469.8 KB (469849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0624ecd41615657fca82ee8dcea74a8e7b8ae583326be2dc8202f435ab94ae`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c8b5f87a4d21fdf7df40472924ba9763c6aafac5fd2f8f5d2029d1f851a41`  
		Last Modified: Wed, 06 Dec 2017 05:46:33 GMT  
		Size: 32.6 MB (32635045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c75f833290ef91e0de276a0a470bc117bbe853e8443665e8546f50fdf450485`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8b8cd75aa9d075e64d4abb76e2f10a70364b31b828e5b15b077fc19dafa92`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29faa69cf0415b54c023e4e2c2bddb784654d7a6ce2dea878631f8e59ab042f7`  
		Last Modified: Wed, 06 Dec 2017 05:46:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; s390x

```console
$ docker pull ghost@sha256:6ae8aa195643ef80eb3ff98b70a27cac806342e23d7906488163ae040fe6d950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118e390ae16898b09c86455a941c7d99b53cca3360685b9f49447a8fb8848b5a`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:26:51 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 06 Dec 2017 20:26:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:26:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:26:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 20:26:56 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 20:26:57 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 20:28:31 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 20:28:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 20:28:32 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 20:28:32 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 20:28:33 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 06 Dec 2017 20:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Dec 2017 20:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:28:34 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:28:34 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e799c1b3863abb4ca4e17b21ee9c0d30a82f5a6139c008c8c59ba717934d01`  
		Last Modified: Wed, 06 Dec 2017 20:29:44 GMT  
		Size: 4.5 KB (4467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3755756718797cba432eace4324bd9fd8a99489035a23b3f719b696dc39a29cd`  
		Last Modified: Wed, 06 Dec 2017 20:29:43 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b06a7fd86e2490c199275b8e929785e0090074a6763345b8aa14df7df9358d`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6388af8dadcb1e127f2057795ef5aa6bdaa584f1932d2eb71cc8218a78950`  
		Last Modified: Wed, 06 Dec 2017 20:29:49 GMT  
		Size: 32.7 MB (32671713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839149d8dcea30dec363e7283cc8c3bed5e21740f91dfdbe31f109e568726440`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a535b2b234981b7bc81f8c5038caf4b4822ec9de85adc4571a75a6e6f9f32f`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4521645d92378d65a81b4cd699cebbbcbec5ebde5a6635c5757491b5e66f7b1b`  
		Last Modified: Wed, 06 Dec 2017 20:29:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:28b1131ac50e630d647c92a34f81867acce6faf0526d49d61c0c58c0e37cfaef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:aee5c34162297cf9ed19cc194cf680f9d929056449e5a1fbbe36b802329c733d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08196d00cdc6910e045455c914861c00ce04947c9a7e53f1d8dd00267aeda8a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Dec 2017 00:03:37 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:04:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:04:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:04:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:04:24 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:04:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:04:24 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:04:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ee8b5c6a8de12bb902f7a884fd9da39098645d6cb6f168480d5a9f7918f48b`  
		Last Modified: Wed, 06 Dec 2017 00:13:49 GMT  
		Size: 1.4 MB (1353566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c288673dad761de223b7dc491bcb6140115d9f295ca6dbe8c198863e48b7`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5b3bfb9ab0a3759d829a14f788dbf1853283beccb05123ef31b4b1eba4c57c`  
		Last Modified: Wed, 06 Dec 2017 00:14:03 GMT  
		Size: 25.2 MB (25230723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2d82e05d034959ed7062037601d90c75e9281ae658988853ea542bec49d03`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63a76af38be0347bf84a1e9f7ed4aaaee07f009c616cd233d94cc6d5a263e5`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:28b1131ac50e630d647c92a34f81867acce6faf0526d49d61c0c58c0e37cfaef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:aee5c34162297cf9ed19cc194cf680f9d929056449e5a1fbbe36b802329c733d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08196d00cdc6910e045455c914861c00ce04947c9a7e53f1d8dd00267aeda8a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Dec 2017 00:03:37 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:04:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:04:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:04:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:04:24 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:04:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:04:24 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:04:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ee8b5c6a8de12bb902f7a884fd9da39098645d6cb6f168480d5a9f7918f48b`  
		Last Modified: Wed, 06 Dec 2017 00:13:49 GMT  
		Size: 1.4 MB (1353566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c288673dad761de223b7dc491bcb6140115d9f295ca6dbe8c198863e48b7`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5b3bfb9ab0a3759d829a14f788dbf1853283beccb05123ef31b4b1eba4c57c`  
		Last Modified: Wed, 06 Dec 2017 00:14:03 GMT  
		Size: 25.2 MB (25230723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2d82e05d034959ed7062037601d90c75e9281ae658988853ea542bec49d03`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63a76af38be0347bf84a1e9f7ed4aaaee07f009c616cd233d94cc6d5a263e5`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:28b1131ac50e630d647c92a34f81867acce6faf0526d49d61c0c58c0e37cfaef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:aee5c34162297cf9ed19cc194cf680f9d929056449e5a1fbbe36b802329c733d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08196d00cdc6910e045455c914861c00ce04947c9a7e53f1d8dd00267aeda8a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Dec 2017 00:03:37 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:04:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:04:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:04:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:04:24 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:04:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:04:24 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:04:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ee8b5c6a8de12bb902f7a884fd9da39098645d6cb6f168480d5a9f7918f48b`  
		Last Modified: Wed, 06 Dec 2017 00:13:49 GMT  
		Size: 1.4 MB (1353566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c288673dad761de223b7dc491bcb6140115d9f295ca6dbe8c198863e48b7`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5b3bfb9ab0a3759d829a14f788dbf1853283beccb05123ef31b4b1eba4c57c`  
		Last Modified: Wed, 06 Dec 2017 00:14:03 GMT  
		Size: 25.2 MB (25230723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2d82e05d034959ed7062037601d90c75e9281ae658988853ea542bec49d03`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63a76af38be0347bf84a1e9f7ed4aaaee07f009c616cd233d94cc6d5a263e5`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:8f583c91f62dec7f033b0dc400d62493d3d7c917b162668270f3807d1fee8f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:824ea923945793301aac2300366bcdd0274ee83acb85d71b03ec6e01560b61cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214289931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3999dab44ee404fb34aaad238b678bd157e4669fa6e7268a511037f80269e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:54:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Dec 2017 23:54:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Dec 2017 23:54:18 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:54:18 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:54:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:55:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:55:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Dec 2017 23:55:25 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:55:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:55:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 05 Dec 2017 23:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:55:26 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41490621b579612dfae5d58b809c5e7f2edcc09ad8cd5558e48427dbe00160`  
		Last Modified: Wed, 06 Dec 2017 00:10:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b32bce94036305e13cd2ad34cb63e6e01b030cc508a5b57ba15dc5a7f5cda8`  
		Last Modified: Wed, 06 Dec 2017 00:10:29 GMT  
		Size: 19.1 MB (19133011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb97908caf0a9c325f6d128018dded2506d6abfd641faaa22e0cb62686f290`  
		Last Modified: Wed, 06 Dec 2017 00:10:56 GMT  
		Size: 99.1 MB (99124178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0978fd2f765a5db5c3bb6c2f9880f9463b81b375aa37a20e45245526bf241f`  
		Last Modified: Wed, 06 Dec 2017 00:10:08 GMT  
		Size: 7.8 MB (7811737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975cfb24be89aaa81eb97a42abd53f2c8e302d3a312dd3df3feb89719ae9bd83`  
		Last Modified: Wed, 06 Dec 2017 00:10:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:003ac130ba9d4d0890ceb491d5086bb36398b040445a0be95316b14aac02c262
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211811364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e1e3d5cd9acfa0ac1d3844369518768aad2b93c18a4386776dec59e788db2d`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:16:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:16:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:16:24 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:16:24 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:17:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:17:06 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:18:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:18:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:21:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:21:16 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:21:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:21:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:21:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:21:18 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09733e6129fcb6987286d77f62333333f5df4baacf560178dba4a94c22e119da`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a334edd70ed2d1f1de542780dc14fed7b9680f64af2e9f176333b6ac6ceea4f6`  
		Last Modified: Wed, 06 Dec 2017 06:25:30 GMT  
		Size: 19.1 MB (19135382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe90067209e49c57eeb77c14f272d26195e748be3b5b030bf9d8ad58936d75de`  
		Last Modified: Wed, 06 Dec 2017 06:25:55 GMT  
		Size: 94.0 MB (94018384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9121875fccd7aefda06bedab062ef4f73b7bb65aefee1a5f33528aca2a0c0da`  
		Last Modified: Wed, 06 Dec 2017 06:25:28 GMT  
		Size: 16.2 MB (16209152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b8f7207619aa9f527e5e712b9bcf036e9c7b3f94840e016fb35a7542c74014`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a2d8a8742b5db19ad8bc0615b5a764111ddb94053fa5cfea6c18c2d02f64b53b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214705672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a7789d415ca9788377043b36b6d45df0f16f179b9710223562793786b1c676`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:24:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:24:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:24:52 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 13:24:52 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 13:25:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 13:25:52 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 13:27:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 13:27:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 13:31:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 13:31:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 13:31:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 13:31:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 13:31:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:32:00 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:32:00 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a380d9d31ef341bd18aaef99422548e3fac2b3b80c7e22c28e4b924c86d17739`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c1bfb8453c28ec3c404a7ab22e52d4f8d44f4961da74d16092eb235185d33b`  
		Last Modified: Wed, 06 Dec 2017 13:38:09 GMT  
		Size: 19.1 MB (19144832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd21855415fc862643bbd237195e225a7aa0cc72ec7ab603f3a13142cc77f58`  
		Last Modified: Wed, 06 Dec 2017 13:38:38 GMT  
		Size: 94.0 MB (94023599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e848bc981e2781e9fc4d9c81b0123eb5f53acf23596334afdb7cee891bf9eff2`  
		Last Modified: Wed, 06 Dec 2017 13:38:06 GMT  
		Size: 16.6 MB (16554289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0715f64358430b7e5322d757b1ec5668d37bd83d30a938d760b2cb0278966980`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:e17102378e21b330e6c9cb863c05756cd42fa42fb46598eb0f7b728cd5db97cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ec4d0743f6e8d2a366b5acfa0eca280a5959ae7ac583388bbc8c1d0e717495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:05:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:05:45 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:05:45 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:06:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:07:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:07:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:08:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:08:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:08:57 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:08:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:08:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:08:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:08:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cc0010d2e570b34bae37aaf6fc4918c684eced4bb1ab2eb0977919f5fc37c`  
		Last Modified: Wed, 06 Dec 2017 06:23:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac29e908f4eccfe29044f8dbe1799071435a4845e52159245d372c6c3ba6ee8c`  
		Last Modified: Wed, 06 Dec 2017 06:24:24 GMT  
		Size: 19.1 MB (19133185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65202aea2a7068a8e64a16e1b7c00e1096993504b2c0bba1671811ea76277d2`  
		Last Modified: Wed, 06 Dec 2017 06:24:58 GMT  
		Size: 94.0 MB (94016372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f631f89eb9056b8cff1f3158c291a56c4d88c53668aa5ba749b6a372adb20cb`  
		Last Modified: Wed, 06 Dec 2017 06:24:05 GMT  
		Size: 16.6 MB (16630654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4e56b96773bf6fa4b4712cb238bc0e9d7ad884c231ebe9ca18747a70cb55f`  
		Last Modified: Wed, 06 Dec 2017 06:23:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:fd63258fd7f546b06333e8a620c6def6a5a845f2986c3e784507a359215ed16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217274327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8b33f69fb5c8cd050b159b8ad937c820ff87f0a50a1c3bc1cfcf1365a64bad`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:32:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:32:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:32:50 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 05:32:51 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 05:33:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 05:33:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 05:33:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 05:33:24 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 05:35:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 05:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 05:38:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 05:38:52 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 05:38:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 05:38:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 05:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:38:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:39:00 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0a8ce1f146d73c57c7a4a56004737faabe409aa63acc1888b39c7db4ca2137`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431ca3d519882752275340174fc624b28d0114969217eeb1db564b1e01a5fcb`  
		Last Modified: Wed, 06 Dec 2017 05:45:42 GMT  
		Size: 19.1 MB (19133970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc54442d151b2179fe7eee5d34eeef74009c4dc43ea2639f82d717670b9f612`  
		Last Modified: Wed, 06 Dec 2017 05:45:55 GMT  
		Size: 94.0 MB (94016461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15db72076759f775a26f5ce2a73a3a416130ad9de45d150ec0eca8dbf32a4901`  
		Last Modified: Wed, 06 Dec 2017 05:45:35 GMT  
		Size: 17.0 MB (17021460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50190a9b8ba225daf6e686c870d17ea00242b2023d1a4bd581d6d926c177d2`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:db06122010137c04b3517fd570c615b203cc94a208410a3aa38b74aaa708a6c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218962349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb349f7bffeeaf08c993cbbb3bb1be290be56b3662bbf9527f269287c886301`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:24:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:24:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:24:04 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 20:24:04 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 20:24:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 20:25:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 20:25:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 20:26:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 20:26:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 20:26:38 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 20:26:38 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 20:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:26:38 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:26:38 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836fad59f298ffd840e1338e91115d05d2b604447fbcfbb65f19201417f0d507`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c954cfc55b95dd43e32b4f4e144bb1995f19557d3f100bb8b900e2eaef20bafa`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 19.1 MB (19141557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73c4a9311b6ff3643543e8517f6ced8c2930da42f8da63c3c5ae50e45019f2`  
		Last Modified: Wed, 06 Dec 2017 20:29:16 GMT  
		Size: 94.0 MB (94020525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09188d01708977053b1daa23faf1cee068b536154ea456f353da12baaea1eae5`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 17.1 MB (17060426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e60d7f08e50b76da0f8aa3fd201542ae829b2d37a0e8fc273f99ee7f19eda72`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18`

```console
$ docker pull ghost@sha256:8f583c91f62dec7f033b0dc400d62493d3d7c917b162668270f3807d1fee8f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.18` - linux; amd64

```console
$ docker pull ghost@sha256:824ea923945793301aac2300366bcdd0274ee83acb85d71b03ec6e01560b61cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214289931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3999dab44ee404fb34aaad238b678bd157e4669fa6e7268a511037f80269e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:54:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Dec 2017 23:54:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Dec 2017 23:54:18 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:54:18 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:54:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:55:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:55:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Dec 2017 23:55:25 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:55:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:55:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 05 Dec 2017 23:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:55:26 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41490621b579612dfae5d58b809c5e7f2edcc09ad8cd5558e48427dbe00160`  
		Last Modified: Wed, 06 Dec 2017 00:10:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b32bce94036305e13cd2ad34cb63e6e01b030cc508a5b57ba15dc5a7f5cda8`  
		Last Modified: Wed, 06 Dec 2017 00:10:29 GMT  
		Size: 19.1 MB (19133011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb97908caf0a9c325f6d128018dded2506d6abfd641faaa22e0cb62686f290`  
		Last Modified: Wed, 06 Dec 2017 00:10:56 GMT  
		Size: 99.1 MB (99124178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0978fd2f765a5db5c3bb6c2f9880f9463b81b375aa37a20e45245526bf241f`  
		Last Modified: Wed, 06 Dec 2017 00:10:08 GMT  
		Size: 7.8 MB (7811737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975cfb24be89aaa81eb97a42abd53f2c8e302d3a312dd3df3feb89719ae9bd83`  
		Last Modified: Wed, 06 Dec 2017 00:10:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; arm variant v7

```console
$ docker pull ghost@sha256:003ac130ba9d4d0890ceb491d5086bb36398b040445a0be95316b14aac02c262
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211811364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e1e3d5cd9acfa0ac1d3844369518768aad2b93c18a4386776dec59e788db2d`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:16:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:16:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:16:24 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:16:24 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:17:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:17:06 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:18:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:18:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:21:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:21:16 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:21:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:21:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:21:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:21:18 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09733e6129fcb6987286d77f62333333f5df4baacf560178dba4a94c22e119da`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a334edd70ed2d1f1de542780dc14fed7b9680f64af2e9f176333b6ac6ceea4f6`  
		Last Modified: Wed, 06 Dec 2017 06:25:30 GMT  
		Size: 19.1 MB (19135382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe90067209e49c57eeb77c14f272d26195e748be3b5b030bf9d8ad58936d75de`  
		Last Modified: Wed, 06 Dec 2017 06:25:55 GMT  
		Size: 94.0 MB (94018384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9121875fccd7aefda06bedab062ef4f73b7bb65aefee1a5f33528aca2a0c0da`  
		Last Modified: Wed, 06 Dec 2017 06:25:28 GMT  
		Size: 16.2 MB (16209152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b8f7207619aa9f527e5e712b9bcf036e9c7b3f94840e016fb35a7542c74014`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a2d8a8742b5db19ad8bc0615b5a764111ddb94053fa5cfea6c18c2d02f64b53b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214705672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a7789d415ca9788377043b36b6d45df0f16f179b9710223562793786b1c676`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:24:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:24:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:24:52 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 13:24:52 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 13:25:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 13:25:52 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 13:27:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 13:27:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 13:31:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 13:31:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 13:31:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 13:31:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 13:31:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:32:00 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:32:00 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a380d9d31ef341bd18aaef99422548e3fac2b3b80c7e22c28e4b924c86d17739`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c1bfb8453c28ec3c404a7ab22e52d4f8d44f4961da74d16092eb235185d33b`  
		Last Modified: Wed, 06 Dec 2017 13:38:09 GMT  
		Size: 19.1 MB (19144832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd21855415fc862643bbd237195e225a7aa0cc72ec7ab603f3a13142cc77f58`  
		Last Modified: Wed, 06 Dec 2017 13:38:38 GMT  
		Size: 94.0 MB (94023599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e848bc981e2781e9fc4d9c81b0123eb5f53acf23596334afdb7cee891bf9eff2`  
		Last Modified: Wed, 06 Dec 2017 13:38:06 GMT  
		Size: 16.6 MB (16554289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0715f64358430b7e5322d757b1ec5668d37bd83d30a938d760b2cb0278966980`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; 386

```console
$ docker pull ghost@sha256:e17102378e21b330e6c9cb863c05756cd42fa42fb46598eb0f7b728cd5db97cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ec4d0743f6e8d2a366b5acfa0eca280a5959ae7ac583388bbc8c1d0e717495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:05:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:05:45 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:05:45 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:06:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:07:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:07:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:08:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:08:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:08:57 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:08:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:08:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:08:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:08:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cc0010d2e570b34bae37aaf6fc4918c684eced4bb1ab2eb0977919f5fc37c`  
		Last Modified: Wed, 06 Dec 2017 06:23:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac29e908f4eccfe29044f8dbe1799071435a4845e52159245d372c6c3ba6ee8c`  
		Last Modified: Wed, 06 Dec 2017 06:24:24 GMT  
		Size: 19.1 MB (19133185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65202aea2a7068a8e64a16e1b7c00e1096993504b2c0bba1671811ea76277d2`  
		Last Modified: Wed, 06 Dec 2017 06:24:58 GMT  
		Size: 94.0 MB (94016372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f631f89eb9056b8cff1f3158c291a56c4d88c53668aa5ba749b6a372adb20cb`  
		Last Modified: Wed, 06 Dec 2017 06:24:05 GMT  
		Size: 16.6 MB (16630654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4e56b96773bf6fa4b4712cb238bc0e9d7ad884c231ebe9ca18747a70cb55f`  
		Last Modified: Wed, 06 Dec 2017 06:23:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; ppc64le

```console
$ docker pull ghost@sha256:fd63258fd7f546b06333e8a620c6def6a5a845f2986c3e784507a359215ed16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217274327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8b33f69fb5c8cd050b159b8ad937c820ff87f0a50a1c3bc1cfcf1365a64bad`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:32:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:32:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:32:50 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 05:32:51 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 05:33:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 05:33:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 05:33:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 05:33:24 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 05:35:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 05:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 05:38:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 05:38:52 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 05:38:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 05:38:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 05:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:38:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:39:00 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0a8ce1f146d73c57c7a4a56004737faabe409aa63acc1888b39c7db4ca2137`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431ca3d519882752275340174fc624b28d0114969217eeb1db564b1e01a5fcb`  
		Last Modified: Wed, 06 Dec 2017 05:45:42 GMT  
		Size: 19.1 MB (19133970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc54442d151b2179fe7eee5d34eeef74009c4dc43ea2639f82d717670b9f612`  
		Last Modified: Wed, 06 Dec 2017 05:45:55 GMT  
		Size: 94.0 MB (94016461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15db72076759f775a26f5ce2a73a3a416130ad9de45d150ec0eca8dbf32a4901`  
		Last Modified: Wed, 06 Dec 2017 05:45:35 GMT  
		Size: 17.0 MB (17021460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50190a9b8ba225daf6e686c870d17ea00242b2023d1a4bd581d6d926c177d2`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; s390x

```console
$ docker pull ghost@sha256:db06122010137c04b3517fd570c615b203cc94a208410a3aa38b74aaa708a6c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218962349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb349f7bffeeaf08c993cbbb3bb1be290be56b3662bbf9527f269287c886301`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:24:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:24:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:24:04 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 20:24:04 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 20:24:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 20:25:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 20:25:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 20:26:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 20:26:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 20:26:38 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 20:26:38 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 20:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:26:38 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:26:38 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836fad59f298ffd840e1338e91115d05d2b604447fbcfbb65f19201417f0d507`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c954cfc55b95dd43e32b4f4e144bb1995f19557d3f100bb8b900e2eaef20bafa`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 19.1 MB (19141557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73c4a9311b6ff3643543e8517f6ced8c2930da42f8da63c3c5ae50e45019f2`  
		Last Modified: Wed, 06 Dec 2017 20:29:16 GMT  
		Size: 94.0 MB (94020525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09188d01708977053b1daa23faf1cee068b536154ea456f353da12baaea1eae5`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 17.1 MB (17060426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e60d7f08e50b76da0f8aa3fd201542ae829b2d37a0e8fc273f99ee7f19eda72`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18.3`

**does not exist** (yet?)

## `ghost:1.18.3-alpine`

**does not exist** (yet?)

## `ghost:1.18-alpine`

```console
$ docker pull ghost@sha256:007fbcb575b89d97e1d166220ee007304a28edc9dc0d2a0fb06c6bc4f517e5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.18-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b6b3752167e22af90aed77b6c055856c3dc8752be8fb1182e164e5f956dd20e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138245157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034291df724c25cc96d01956b5a3956f7fc2023034bda225d37827493fa32f32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 05 Dec 2017 23:55:40 GMT
RUN apk add --no-cache 		bash
# Tue, 05 Dec 2017 23:55:40 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:55:40 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:55:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:56:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:56:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:56:38 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:56:38 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:56:39 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 05 Dec 2017 23:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:56:39 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:56:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec14d1c4189f6782521c3969286f2f980fb5a6ad0f18967f8c32b991c1b8b03b`  
		Last Modified: Wed, 06 Dec 2017 00:11:40 GMT  
		Size: 1.1 MB (1112411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca65bf066df4e9edf86fdaeb34285aca83a8fcf1fab99e1ca3a153e297f313`  
		Last Modified: Wed, 06 Dec 2017 00:12:02 GMT  
		Size: 19.1 MB (19132384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f447876e4db101cc71c47ce6812cb9647f19bf32e0409ff00e7e825b9d440951`  
		Last Modified: Wed, 06 Dec 2017 00:12:27 GMT  
		Size: 99.1 MB (99128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d4c8b31689bcb27366fe2f08d3ae3d94b02a1978b874b959c879eee14670a3`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:007fbcb575b89d97e1d166220ee007304a28edc9dc0d2a0fb06c6bc4f517e5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b6b3752167e22af90aed77b6c055856c3dc8752be8fb1182e164e5f956dd20e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138245157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034291df724c25cc96d01956b5a3956f7fc2023034bda225d37827493fa32f32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 05 Dec 2017 23:55:40 GMT
RUN apk add --no-cache 		bash
# Tue, 05 Dec 2017 23:55:40 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:55:40 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:55:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:56:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:56:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:56:38 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:56:38 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:56:39 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 05 Dec 2017 23:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:56:39 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:56:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec14d1c4189f6782521c3969286f2f980fb5a6ad0f18967f8c32b991c1b8b03b`  
		Last Modified: Wed, 06 Dec 2017 00:11:40 GMT  
		Size: 1.1 MB (1112411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca65bf066df4e9edf86fdaeb34285aca83a8fcf1fab99e1ca3a153e297f313`  
		Last Modified: Wed, 06 Dec 2017 00:12:02 GMT  
		Size: 19.1 MB (19132384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f447876e4db101cc71c47ce6812cb9647f19bf32e0409ff00e7e825b9d440951`  
		Last Modified: Wed, 06 Dec 2017 00:12:27 GMT  
		Size: 99.1 MB (99128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d4c8b31689bcb27366fe2f08d3ae3d94b02a1978b874b959c879eee14670a3`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:007fbcb575b89d97e1d166220ee007304a28edc9dc0d2a0fb06c6bc4f517e5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b6b3752167e22af90aed77b6c055856c3dc8752be8fb1182e164e5f956dd20e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138245157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034291df724c25cc96d01956b5a3956f7fc2023034bda225d37827493fa32f32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 05 Dec 2017 23:55:40 GMT
RUN apk add --no-cache 		bash
# Tue, 05 Dec 2017 23:55:40 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:55:40 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:55:59 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:55:59 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:56:37 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:56:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:56:38 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:56:38 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:56:39 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 05 Dec 2017 23:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:56:39 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:56:39 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec14d1c4189f6782521c3969286f2f980fb5a6ad0f18967f8c32b991c1b8b03b`  
		Last Modified: Wed, 06 Dec 2017 00:11:40 GMT  
		Size: 1.1 MB (1112411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ca65bf066df4e9edf86fdaeb34285aca83a8fcf1fab99e1ca3a153e297f313`  
		Last Modified: Wed, 06 Dec 2017 00:12:02 GMT  
		Size: 19.1 MB (19132384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f447876e4db101cc71c47ce6812cb9647f19bf32e0409ff00e7e825b9d440951`  
		Last Modified: Wed, 06 Dec 2017 00:12:27 GMT  
		Size: 99.1 MB (99128530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d4c8b31689bcb27366fe2f08d3ae3d94b02a1978b874b959c879eee14670a3`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:8f583c91f62dec7f033b0dc400d62493d3d7c917b162668270f3807d1fee8f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:824ea923945793301aac2300366bcdd0274ee83acb85d71b03ec6e01560b61cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214289931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3999dab44ee404fb34aaad238b678bd157e4669fa6e7268a511037f80269e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 21:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 04 Nov 2017 21:37:06 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 05 Dec 2017 23:33:13 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:33:27 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 05 Dec 2017 23:33:28 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:33:31 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 05 Dec 2017 23:33:31 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:54:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Dec 2017 23:54:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Dec 2017 23:54:18 GMT
ENV NODE_ENV=production
# Tue, 05 Dec 2017 23:54:18 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Tue, 05 Dec 2017 23:54:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 05 Dec 2017 23:54:38 GMT
ENV GHOST_VERSION=1.18.2
# Tue, 05 Dec 2017 23:55:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Tue, 05 Dec 2017 23:55:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Tue, 05 Dec 2017 23:55:25 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Tue, 05 Dec 2017 23:55:25 GMT
WORKDIR /var/lib/ghost
# Tue, 05 Dec 2017 23:55:25 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 05 Dec 2017 23:55:25 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 05 Dec 2017 23:55:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 23:55:26 GMT
EXPOSE 2368/tcp
# Tue, 05 Dec 2017 23:55:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9968e24de017bde25569ec6d6e953c2d8b6cb092390b127cf03112e88195d1f`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838ee1f471db0f9f3672a9e9e562d2420508c32cb11b7e09391ca205dfd528f6`  
		Last Modified: Sat, 04 Nov 2017 21:50:33 GMT  
		Size: 116.5 KB (116489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c4c69b29ce746003caa19d8d0b5a83d99f836e719e782a4b0ae8b16553f2c`  
		Last Modified: Tue, 05 Dec 2017 23:36:39 GMT  
		Size: 14.7 MB (14729848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf91fcee77a66c47716858c09228263d2de3ffea8a97e8a67c9b9cbfea80231`  
		Last Modified: Tue, 05 Dec 2017 23:36:37 GMT  
		Size: 1.0 MB (1009219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41490621b579612dfae5d58b809c5e7f2edcc09ad8cd5558e48427dbe00160`  
		Last Modified: Wed, 06 Dec 2017 00:10:06 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b32bce94036305e13cd2ad34cb63e6e01b030cc508a5b57ba15dc5a7f5cda8`  
		Last Modified: Wed, 06 Dec 2017 00:10:29 GMT  
		Size: 19.1 MB (19133011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdb97908caf0a9c325f6d128018dded2506d6abfd641faaa22e0cb62686f290`  
		Last Modified: Wed, 06 Dec 2017 00:10:56 GMT  
		Size: 99.1 MB (99124178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0978fd2f765a5db5c3bb6c2f9880f9463b81b375aa37a20e45245526bf241f`  
		Last Modified: Wed, 06 Dec 2017 00:10:08 GMT  
		Size: 7.8 MB (7811737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975cfb24be89aaa81eb97a42abd53f2c8e302d3a312dd3df3feb89719ae9bd83`  
		Last Modified: Wed, 06 Dec 2017 00:10:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:003ac130ba9d4d0890ceb491d5086bb36398b040445a0be95316b14aac02c262
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211811364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e1e3d5cd9acfa0ac1d3844369518768aad2b93c18a4386776dec59e788db2d`
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
# Wed, 06 Dec 2017 05:56:02 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:56:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:56:41 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:56:43 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:56:43 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:16:21 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:16:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:16:24 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:16:24 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:17:04 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:17:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:17:06 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:18:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:18:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:21:16 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:21:16 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:21:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:21:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:21:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:21:18 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:21:18 GMT
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
	-	`sha256:e6e503cb4962d1c47dcb82acb59505894a42e57e3b0705a494d1c8c72aa78648`  
		Last Modified: Wed, 06 Dec 2017 05:59:22 GMT  
		Size: 13.9 MB (13893376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c37b073f82568f276145eddf9eb63a60768b95fe6fe76cbd9ba2b862a61bb2c`  
		Last Modified: Wed, 06 Dec 2017 05:59:18 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09733e6129fcb6987286d77f62333333f5df4baacf560178dba4a94c22e119da`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a334edd70ed2d1f1de542780dc14fed7b9680f64af2e9f176333b6ac6ceea4f6`  
		Last Modified: Wed, 06 Dec 2017 06:25:30 GMT  
		Size: 19.1 MB (19135382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe90067209e49c57eeb77c14f272d26195e748be3b5b030bf9d8ad58936d75de`  
		Last Modified: Wed, 06 Dec 2017 06:25:55 GMT  
		Size: 94.0 MB (94018384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9121875fccd7aefda06bedab062ef4f73b7bb65aefee1a5f33528aca2a0c0da`  
		Last Modified: Wed, 06 Dec 2017 06:25:28 GMT  
		Size: 16.2 MB (16209152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b8f7207619aa9f527e5e712b9bcf036e9c7b3f94840e016fb35a7542c74014`  
		Last Modified: Wed, 06 Dec 2017 06:25:23 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a2d8a8742b5db19ad8bc0615b5a764111ddb94053fa5cfea6c18c2d02f64b53b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214705672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a7789d415ca9788377043b36b6d45df0f16f179b9710223562793786b1c676`
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
# Wed, 06 Dec 2017 13:02:04 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 13:02:33 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 13:02:34 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 13:02:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 13:02:40 GMT
CMD ["node"]
# Wed, 06 Dec 2017 13:24:47 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 13:24:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 13:24:52 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 13:24:52 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 13:25:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 13:25:51 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 13:25:52 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 13:27:38 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 13:27:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 13:31:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 13:31:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 13:31:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 13:31:58 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 13:31:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 13:32:00 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 13:32:00 GMT
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
	-	`sha256:cc946e7cdc83011686d826810e702ebdbb25f75ab62ce30c96ae24db6d4ea4b2`  
		Last Modified: Wed, 06 Dec 2017 13:06:44 GMT  
		Size: 14.7 MB (14716196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afaf810058ae00c6458a9c725205c6b5aa4f3694c81e9b0bcaff9790eab62dec`  
		Last Modified: Wed, 06 Dec 2017 13:06:38 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a380d9d31ef341bd18aaef99422548e3fac2b3b80c7e22c28e4b924c86d17739`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c1bfb8453c28ec3c404a7ab22e52d4f8d44f4961da74d16092eb235185d33b`  
		Last Modified: Wed, 06 Dec 2017 13:38:09 GMT  
		Size: 19.1 MB (19144832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd21855415fc862643bbd237195e225a7aa0cc72ec7ab603f3a13142cc77f58`  
		Last Modified: Wed, 06 Dec 2017 13:38:38 GMT  
		Size: 94.0 MB (94023599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e848bc981e2781e9fc4d9c81b0123eb5f53acf23596334afdb7cee891bf9eff2`  
		Last Modified: Wed, 06 Dec 2017 13:38:06 GMT  
		Size: 16.6 MB (16554289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0715f64358430b7e5322d757b1ec5668d37bd83d30a938d760b2cb0278966980`  
		Last Modified: Wed, 06 Dec 2017 13:38:00 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:e17102378e21b330e6c9cb863c05756cd42fa42fb46598eb0f7b728cd5db97cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ec4d0743f6e8d2a366b5acfa0eca280a5959ae7ac583388bbc8c1d0e717495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 Nov 2017 04:49:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 08 Nov 2017 04:49:51 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 06 Dec 2017 04:52:09 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 04:52:43 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 04:52:43 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 04:52:47 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 04:52:47 GMT
CMD ["node"]
# Wed, 06 Dec 2017 06:05:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 06:05:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 06:05:45 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 06:05:45 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 06:06:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 06:06:10 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 06:07:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 06:07:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 06:08:56 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 06:08:57 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 06:08:57 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 06:08:57 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 06:08:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 06:08:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 06:08:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6154d868e0941f6f46bcc0d9dae7e9328dcdde3242b5c897caf09f905d038f8`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad996fcc773e5f2c950808cad553f7d9dcd4b586182f6a73fcc7b17007f889`  
		Last Modified: Wed, 08 Nov 2017 05:21:37 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9171cb54f284ae168463d58ea85b774c364ce21e50735afdca895fbd77568e6b`  
		Last Modified: Wed, 06 Dec 2017 05:33:38 GMT  
		Size: 14.3 MB (14250011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7325e5e10a979571ee31b292bcddba96387219ba67efe8bd8bbb120594cbca4`  
		Last Modified: Wed, 06 Dec 2017 05:33:33 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260cc0010d2e570b34bae37aaf6fc4918c684eced4bb1ab2eb0977919f5fc37c`  
		Last Modified: Wed, 06 Dec 2017 06:23:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac29e908f4eccfe29044f8dbe1799071435a4845e52159245d372c6c3ba6ee8c`  
		Last Modified: Wed, 06 Dec 2017 06:24:24 GMT  
		Size: 19.1 MB (19133185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65202aea2a7068a8e64a16e1b7c00e1096993504b2c0bba1671811ea76277d2`  
		Last Modified: Wed, 06 Dec 2017 06:24:58 GMT  
		Size: 94.0 MB (94016372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f631f89eb9056b8cff1f3158c291a56c4d88c53668aa5ba749b6a372adb20cb`  
		Last Modified: Wed, 06 Dec 2017 06:24:05 GMT  
		Size: 16.6 MB (16630654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4e56b96773bf6fa4b4712cb238bc0e9d7ad884c231ebe9ca18747a70cb55f`  
		Last Modified: Wed, 06 Dec 2017 06:23:54 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:fd63258fd7f546b06333e8a620c6def6a5a845f2986c3e784507a359215ed16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217274327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8b33f69fb5c8cd050b159b8ad937c820ff87f0a50a1c3bc1cfcf1365a64bad`
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
# Wed, 06 Dec 2017 05:13:39 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 05:14:12 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 05:14:13 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 05:14:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 05:14:19 GMT
CMD ["node"]
# Wed, 06 Dec 2017 05:32:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 05:32:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 05:32:50 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 05:32:51 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 05:33:20 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 05:33:22 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 05:33:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 05:33:24 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 05:35:00 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 05:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 05:38:50 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 05:38:52 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 05:38:53 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 05:38:54 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 05:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 05:38:58 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 05:39:00 GMT
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
	-	`sha256:33c00f43ed3e720f5a4acdf94d3416bfe4c31ad6bce9f058fa83616bfd349636`  
		Last Modified: Wed, 06 Dec 2017 05:16:32 GMT  
		Size: 14.5 MB (14491048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27640b63a4bd17305fb4735593f36a5235308addec922aa8280dd577352f8f3c`  
		Last Modified: Wed, 06 Dec 2017 05:16:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0a8ce1f146d73c57c7a4a56004737faabe409aa63acc1888b39c7db4ca2137`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431ca3d519882752275340174fc624b28d0114969217eeb1db564b1e01a5fcb`  
		Last Modified: Wed, 06 Dec 2017 05:45:42 GMT  
		Size: 19.1 MB (19133970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc54442d151b2179fe7eee5d34eeef74009c4dc43ea2639f82d717670b9f612`  
		Last Modified: Wed, 06 Dec 2017 05:45:55 GMT  
		Size: 94.0 MB (94016461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15db72076759f775a26f5ce2a73a3a416130ad9de45d150ec0eca8dbf32a4901`  
		Last Modified: Wed, 06 Dec 2017 05:45:35 GMT  
		Size: 17.0 MB (17021460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50190a9b8ba225daf6e686c870d17ea00242b2023d1a4bd581d6d926c177d2`  
		Last Modified: Wed, 06 Dec 2017 05:45:31 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:db06122010137c04b3517fd570c615b203cc94a208410a3aa38b74aaa708a6c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218962349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb349f7bffeeaf08c993cbbb3bb1be290be56b3662bbf9527f269287c886301`
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
# Wed, 06 Dec 2017 20:05:24 GMT
ENV NODE_VERSION=6.12.1
# Wed, 06 Dec 2017 20:05:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 06 Dec 2017 20:05:38 GMT
ENV YARN_VERSION=1.3.2
# Wed, 06 Dec 2017 20:06:08 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 06 Dec 2017 20:06:09 GMT
CMD ["node"]
# Wed, 06 Dec 2017 20:24:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Dec 2017 20:24:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Dec 2017 20:24:04 GMT
ENV NODE_ENV=production
# Wed, 06 Dec 2017 20:24:04 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Wed, 06 Dec 2017 20:24:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 06 Dec 2017 20:24:26 GMT
ENV GHOST_VERSION=1.18.2
# Wed, 06 Dec 2017 20:25:02 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 06 Dec 2017 20:25:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 06 Dec 2017 20:26:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 06 Dec 2017 20:26:37 GMT
WORKDIR /var/lib/ghost
# Wed, 06 Dec 2017 20:26:38 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 06 Dec 2017 20:26:38 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 06 Dec 2017 20:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 20:26:38 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 20:26:38 GMT
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
	-	`sha256:46c254d344ee9cd9b68002890604c18122deebb2aa1a3d39c05c9c7efedeb0b7`  
		Last Modified: Wed, 06 Dec 2017 20:07:51 GMT  
		Size: 14.9 MB (14862694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ce6ed02b918cc84a202fd06856d25ac050ded10faf49b072534d0d23ba2ab`  
		Last Modified: Wed, 06 Dec 2017 20:07:47 GMT  
		Size: 1.0 MB (1009218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836fad59f298ffd840e1338e91115d05d2b604447fbcfbb65f19201417f0d507`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c954cfc55b95dd43e32b4f4e144bb1995f19557d3f100bb8b900e2eaef20bafa`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 19.1 MB (19141557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73c4a9311b6ff3643543e8517f6ced8c2930da42f8da63c3c5ae50e45019f2`  
		Last Modified: Wed, 06 Dec 2017 20:29:16 GMT  
		Size: 94.0 MB (94020525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09188d01708977053b1daa23faf1cee068b536154ea456f353da12baaea1eae5`  
		Last Modified: Wed, 06 Dec 2017 20:29:03 GMT  
		Size: 17.1 MB (17060426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e60d7f08e50b76da0f8aa3fd201542ae829b2d37a0e8fc273f99ee7f19eda72`  
		Last Modified: Wed, 06 Dec 2017 20:28:59 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
