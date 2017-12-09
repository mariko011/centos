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
-	[`ghost:1.18.4`](#ghost1184)
-	[`ghost:1.18.4-alpine`](#ghost1184-alpine)
-	[`ghost:1.18-alpine`](#ghost118-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:417f1a09b070b1cb786e48cabf20b772a584627d9dcb4546c4f30e3bd051f533
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
$ docker pull ghost@sha256:1537090dd1ee8cae877af45e0d7dad3056e7d842b2739cafbdf2387ef64be5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113705007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514f1867a63eb6c27f65ea510372433b76351fb16c5f5436285d23597662d440`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 01:06:32 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 01:06:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 01:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:07:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:07:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:07:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:08:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:08:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:08:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 01:08:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:08:10 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:08:10 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a919f669751520aa7185cbb2c9bc7f17b167b4aeacaf09f01d3de1b8505576`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22f7ef56204fb2b712fb37794fd93a192691f99fe2f23451383d1dd4bcfe7f`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7e2167ed11000c879976a0d16fe6cda74618dbcb0556f09110dabfcd1e6e34`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f89edea28d5cf37340e5735db8cc00351c7ab211a2773860309493b92efd40`  
		Last Modified: Sat, 09 Dec 2017 01:23:04 GMT  
		Size: 25.5 MB (25478937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc09e6f4bfa6dddb1619dd4e2e5f728633b2c429ec565f30e7ff39aada3ca3c`  
		Last Modified: Sat, 09 Dec 2017 01:22:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab805d631781bb60c6c74cae84d865db4bd6451dc46cebf66686d992a9d0653`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c8cc2165c9d5d3001b70a0abe0ba2ac84cc1b201fab39074a202d9cd4b8036`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:ab681beef34467385813b629783340a227b3ffe54902856134c84bd70b16f115
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a4559103f4c0246ec917f44100cb0b724613c0c40b561894f2100efe9136ae`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:17:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 02:17:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:17:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:17:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 02:21:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 02:21:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 02:21:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 02:21:18 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 02:21:19 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 02:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 02:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:21:20 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:21:21 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97048b919d37d136bd3e3e95cfc5daa8a121fcc632ab42f776438adc05f140c9`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed29814f523629b603d27208eaccdb0125aeb74f0ea03d1e21650b7ba3eeb04`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19565a9e7388a9786b7c6e93f8e220573288ada6d4bf3f5a447b9bd4a73d9e1d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731826a5e260591a885a87feeaf1fd2bdfae5123388a8cd9ddce8bc8ef03a0e8`  
		Last Modified: Sat, 09 Dec 2017 02:23:18 GMT  
		Size: 31.8 MB (31828387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8258518f16e0ea53c114b15335c49557e904310583eccc46c880382d97712552`  
		Last Modified: Sat, 09 Dec 2017 02:23:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d94cb81aae2b8c21c22dbc1922e15290d03f15172c97d8b67f7430cb7ee726`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2721da1c5d33803d3cb1f9df709304e9ad43e6ee15f2ea11928977af1b3e6d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a414991fbfa8977b7bfb301408d83a727d2d37875e37dea8071f43f9cb4982af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226f2a06b0bcdf19d455836ed67158f4656f0982df7b8434e5ef32b502c8da1`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:18:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 13:18:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:18:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:18:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 13:18:11 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 13:18:12 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 13:23:09 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 13:23:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 13:23:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 13:23:12 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 13:23:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 13:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 13:23:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:23:17 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:23:17 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94e6ff1b4e75381e9d20def8e1ae4656a3922d429ad23a7f255f750998c1525`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f38401137b2d395ffd21469ad54ea4f4f4d87f3f16d2c9db3b153fdfca1b352`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f7ee2a1bc83ba3c2859bf390eea2dcca1a3aa03c19a1dd876338b990fdee78`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ea56a267be431295e972b254204c718897ddab4e371e69973f1d970069387`  
		Last Modified: Sat, 09 Dec 2017 13:26:10 GMT  
		Size: 32.2 MB (32164964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770fbbf5fe0a6d138805923dc6a975188dd6c2a8c8ce2e12e4cec6410277eeea`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc15ed2539ac3f349f6e3c50ef79152ffa277a7fe12c3cd8e729260f9d06419`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad05179ad97afec8965a336de18dee200e248b42dbbeaab270c6051583d1615a`  
		Last Modified: Sat, 09 Dec 2017 13:25:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:6777a86259c7274cd88a81bbcd1795c00037b333627b00ae69990d74eddf604e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a6e5ae06ddfb2ded1596f45b25ba13ac7b68a81c10da183d1c276db64ff16b`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:57:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 05:57:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:57:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 05:59:40 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 05:59:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:00:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:00:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:00:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:00:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:00:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:00:03 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a8fd40c855ea2242cbfddb00a0853e5737d28b8ebf5d4ea70821798a470d68`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b391513b511e5234c4cff7379d37cf3e5c6f2a6ee7dcaa5cde63f2bc41fa56a2`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f814aa1fd31da4d740f09e532d5c1475e1743d50220b64708dec04bc2959a2c`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db76dde5796231b492538d068438aa2b95f8f6a98da27e014dc30492990858a5`  
		Last Modified: Sat, 09 Dec 2017 06:13:39 GMT  
		Size: 32.2 MB (32237322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe672d6f97d9fdd6ef2378a840946a5d18aec8b13d2b05c37d4770b71357130d`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aafe325f6852c7de4e6e897764ae7a37f95274e9c05181b538f34aae23ccaa`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a305ea9228dfd6b2d3286005877ee9547a19c395278fd64d1e0b61af60bb71`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:8c859898db59eb6b680f241bb14d20a3ea003efeac9e67cb0f28595622c80c5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080f93d2c4dd1ea3cd850ac928217ae11e4439a3aff19e1e9cac79a9cca22fe`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:09:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 06:09:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:09:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:09:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 06:09:16 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 06:09:17 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 06:12:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 06:12:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:12:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:12:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:12:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:13:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:13:05 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8cebc7aabed07349ca9b1fc5d8e4de58b89720dc3494bdcaffaa46b45932f1`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad73d2ac88b4c1959dedb4524387113cb7f0c7b33dc1fddd72d16c0b44558f10`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbae66f0005f3d7bfcae3dbde75bc60fb944cf72d51f3af6e4ae7f3be99dd41`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091a2e76780441b524b9d3426c28ef7715fa256d303f68f1ee262035eb414abf`  
		Last Modified: Sat, 09 Dec 2017 06:14:34 GMT  
		Size: 32.6 MB (32635069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d369dac33aa9c25ca4433f6dbcea13dca47d24d2579031434a8163fe97c6f28`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538d6a3365a618a29b44d1ac91cbf9efbc86136929865321287ec8ae06b1e93`  
		Last Modified: Sat, 09 Dec 2017 06:14:24 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571b645413e39d8f81d3958caf4290f41376a69558fa340debc22f7e202991ef`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
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
$ docker pull ghost@sha256:417f1a09b070b1cb786e48cabf20b772a584627d9dcb4546c4f30e3bd051f533
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
$ docker pull ghost@sha256:1537090dd1ee8cae877af45e0d7dad3056e7d842b2739cafbdf2387ef64be5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113705007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514f1867a63eb6c27f65ea510372433b76351fb16c5f5436285d23597662d440`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 01:06:32 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 01:06:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 01:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:07:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:07:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:07:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:08:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:08:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:08:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 01:08:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:08:10 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:08:10 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a919f669751520aa7185cbb2c9bc7f17b167b4aeacaf09f01d3de1b8505576`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22f7ef56204fb2b712fb37794fd93a192691f99fe2f23451383d1dd4bcfe7f`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7e2167ed11000c879976a0d16fe6cda74618dbcb0556f09110dabfcd1e6e34`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f89edea28d5cf37340e5735db8cc00351c7ab211a2773860309493b92efd40`  
		Last Modified: Sat, 09 Dec 2017 01:23:04 GMT  
		Size: 25.5 MB (25478937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc09e6f4bfa6dddb1619dd4e2e5f728633b2c429ec565f30e7ff39aada3ca3c`  
		Last Modified: Sat, 09 Dec 2017 01:22:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab805d631781bb60c6c74cae84d865db4bd6451dc46cebf66686d992a9d0653`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c8cc2165c9d5d3001b70a0abe0ba2ac84cc1b201fab39074a202d9cd4b8036`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:ab681beef34467385813b629783340a227b3ffe54902856134c84bd70b16f115
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a4559103f4c0246ec917f44100cb0b724613c0c40b561894f2100efe9136ae`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:17:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 02:17:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:17:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:17:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 02:21:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 02:21:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 02:21:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 02:21:18 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 02:21:19 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 02:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 02:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:21:20 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:21:21 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97048b919d37d136bd3e3e95cfc5daa8a121fcc632ab42f776438adc05f140c9`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed29814f523629b603d27208eaccdb0125aeb74f0ea03d1e21650b7ba3eeb04`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19565a9e7388a9786b7c6e93f8e220573288ada6d4bf3f5a447b9bd4a73d9e1d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731826a5e260591a885a87feeaf1fd2bdfae5123388a8cd9ddce8bc8ef03a0e8`  
		Last Modified: Sat, 09 Dec 2017 02:23:18 GMT  
		Size: 31.8 MB (31828387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8258518f16e0ea53c114b15335c49557e904310583eccc46c880382d97712552`  
		Last Modified: Sat, 09 Dec 2017 02:23:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d94cb81aae2b8c21c22dbc1922e15290d03f15172c97d8b67f7430cb7ee726`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2721da1c5d33803d3cb1f9df709304e9ad43e6ee15f2ea11928977af1b3e6d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a414991fbfa8977b7bfb301408d83a727d2d37875e37dea8071f43f9cb4982af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226f2a06b0bcdf19d455836ed67158f4656f0982df7b8434e5ef32b502c8da1`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:18:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 13:18:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:18:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:18:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 13:18:11 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 13:18:12 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 13:23:09 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 13:23:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 13:23:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 13:23:12 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 13:23:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 13:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 13:23:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:23:17 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:23:17 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94e6ff1b4e75381e9d20def8e1ae4656a3922d429ad23a7f255f750998c1525`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f38401137b2d395ffd21469ad54ea4f4f4d87f3f16d2c9db3b153fdfca1b352`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f7ee2a1bc83ba3c2859bf390eea2dcca1a3aa03c19a1dd876338b990fdee78`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ea56a267be431295e972b254204c718897ddab4e371e69973f1d970069387`  
		Last Modified: Sat, 09 Dec 2017 13:26:10 GMT  
		Size: 32.2 MB (32164964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770fbbf5fe0a6d138805923dc6a975188dd6c2a8c8ce2e12e4cec6410277eeea`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc15ed2539ac3f349f6e3c50ef79152ffa277a7fe12c3cd8e729260f9d06419`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad05179ad97afec8965a336de18dee200e248b42dbbeaab270c6051583d1615a`  
		Last Modified: Sat, 09 Dec 2017 13:25:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:6777a86259c7274cd88a81bbcd1795c00037b333627b00ae69990d74eddf604e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a6e5ae06ddfb2ded1596f45b25ba13ac7b68a81c10da183d1c276db64ff16b`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:57:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 05:57:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:57:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 05:59:40 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 05:59:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:00:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:00:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:00:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:00:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:00:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:00:03 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a8fd40c855ea2242cbfddb00a0853e5737d28b8ebf5d4ea70821798a470d68`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b391513b511e5234c4cff7379d37cf3e5c6f2a6ee7dcaa5cde63f2bc41fa56a2`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f814aa1fd31da4d740f09e532d5c1475e1743d50220b64708dec04bc2959a2c`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db76dde5796231b492538d068438aa2b95f8f6a98da27e014dc30492990858a5`  
		Last Modified: Sat, 09 Dec 2017 06:13:39 GMT  
		Size: 32.2 MB (32237322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe672d6f97d9fdd6ef2378a840946a5d18aec8b13d2b05c37d4770b71357130d`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aafe325f6852c7de4e6e897764ae7a37f95274e9c05181b538f34aae23ccaa`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a305ea9228dfd6b2d3286005877ee9547a19c395278fd64d1e0b61af60bb71`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:8c859898db59eb6b680f241bb14d20a3ea003efeac9e67cb0f28595622c80c5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080f93d2c4dd1ea3cd850ac928217ae11e4439a3aff19e1e9cac79a9cca22fe`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:09:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 06:09:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:09:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:09:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 06:09:16 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 06:09:17 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 06:12:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 06:12:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:12:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:12:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:12:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:13:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:13:05 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8cebc7aabed07349ca9b1fc5d8e4de58b89720dc3494bdcaffaa46b45932f1`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad73d2ac88b4c1959dedb4524387113cb7f0c7b33dc1fddd72d16c0b44558f10`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbae66f0005f3d7bfcae3dbde75bc60fb944cf72d51f3af6e4ae7f3be99dd41`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091a2e76780441b524b9d3426c28ef7715fa256d303f68f1ee262035eb414abf`  
		Last Modified: Sat, 09 Dec 2017 06:14:34 GMT  
		Size: 32.6 MB (32635069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d369dac33aa9c25ca4433f6dbcea13dca47d24d2579031434a8163fe97c6f28`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538d6a3365a618a29b44d1ac91cbf9efbc86136929865321287ec8ae06b1e93`  
		Last Modified: Sat, 09 Dec 2017 06:14:24 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571b645413e39d8f81d3958caf4290f41376a69558fa340debc22f7e202991ef`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
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
$ docker pull ghost@sha256:417f1a09b070b1cb786e48cabf20b772a584627d9dcb4546c4f30e3bd051f533
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
$ docker pull ghost@sha256:1537090dd1ee8cae877af45e0d7dad3056e7d842b2739cafbdf2387ef64be5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113705007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514f1867a63eb6c27f65ea510372433b76351fb16c5f5436285d23597662d440`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 01:06:32 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 01:06:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 01:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:06:45 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:07:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:07:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:07:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:08:03 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:08:04 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:08:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 01:08:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:08:10 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:08:10 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a919f669751520aa7185cbb2c9bc7f17b167b4aeacaf09f01d3de1b8505576`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22f7ef56204fb2b712fb37794fd93a192691f99fe2f23451383d1dd4bcfe7f`  
		Last Modified: Sat, 09 Dec 2017 01:22:53 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7e2167ed11000c879976a0d16fe6cda74618dbcb0556f09110dabfcd1e6e34`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f89edea28d5cf37340e5735db8cc00351c7ab211a2773860309493b92efd40`  
		Last Modified: Sat, 09 Dec 2017 01:23:04 GMT  
		Size: 25.5 MB (25478937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc09e6f4bfa6dddb1619dd4e2e5f728633b2c429ec565f30e7ff39aada3ca3c`  
		Last Modified: Sat, 09 Dec 2017 01:22:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab805d631781bb60c6c74cae84d865db4bd6451dc46cebf66686d992a9d0653`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c8cc2165c9d5d3001b70a0abe0ba2ac84cc1b201fab39074a202d9cd4b8036`  
		Last Modified: Sat, 09 Dec 2017 01:22:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:ab681beef34467385813b629783340a227b3ffe54902856134c84bd70b16f115
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114282024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a4559103f4c0246ec917f44100cb0b724613c0c40b561894f2100efe9136ae`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:17:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 02:17:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:17:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:17:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 02:18:00 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 02:21:16 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 02:21:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 02:21:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 02:21:18 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 02:21:19 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 02:21:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 02:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:21:20 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:21:21 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97048b919d37d136bd3e3e95cfc5daa8a121fcc632ab42f776438adc05f140c9`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 4.5 KB (4475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed29814f523629b603d27208eaccdb0125aeb74f0ea03d1e21650b7ba3eeb04`  
		Last Modified: Sat, 09 Dec 2017 02:23:06 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19565a9e7388a9786b7c6e93f8e220573288ada6d4bf3f5a447b9bd4a73d9e1d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731826a5e260591a885a87feeaf1fd2bdfae5123388a8cd9ddce8bc8ef03a0e8`  
		Last Modified: Sat, 09 Dec 2017 02:23:18 GMT  
		Size: 31.8 MB (31828387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8258518f16e0ea53c114b15335c49557e904310583eccc46c880382d97712552`  
		Last Modified: Sat, 09 Dec 2017 02:23:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d94cb81aae2b8c21c22dbc1922e15290d03f15172c97d8b67f7430cb7ee726`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2721da1c5d33803d3cb1f9df709304e9ad43e6ee15f2ea11928977af1b3e6d`  
		Last Modified: Sat, 09 Dec 2017 02:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a414991fbfa8977b7bfb301408d83a727d2d37875e37dea8071f43f9cb4982af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117153081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226f2a06b0bcdf19d455836ed67158f4656f0982df7b8434e5ef32b502c8da1`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:18:05 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 13:18:05 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:18:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:18:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 13:18:11 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 13:18:12 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 13:23:09 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 13:23:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 13:23:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 13:23:12 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 13:23:13 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 13:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 13:23:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:23:17 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:23:17 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94e6ff1b4e75381e9d20def8e1ae4656a3922d429ad23a7f255f750998c1525`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 4.5 KB (4476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f38401137b2d395ffd21469ad54ea4f4f4d87f3f16d2c9db3b153fdfca1b352`  
		Last Modified: Sat, 09 Dec 2017 13:25:56 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f7ee2a1bc83ba3c2859bf390eea2dcca1a3aa03c19a1dd876338b990fdee78`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ea56a267be431295e972b254204c718897ddab4e371e69973f1d970069387`  
		Last Modified: Sat, 09 Dec 2017 13:26:10 GMT  
		Size: 32.2 MB (32164964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770fbbf5fe0a6d138805923dc6a975188dd6c2a8c8ce2e12e4cec6410277eeea`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc15ed2539ac3f349f6e3c50ef79152ffa277a7fe12c3cd8e729260f9d06419`  
		Last Modified: Sat, 09 Dec 2017 13:25:53 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad05179ad97afec8965a336de18dee200e248b42dbbeaab270c6051583d1615a`  
		Last Modified: Sat, 09 Dec 2017 13:25:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; 386

```console
$ docker pull ghost@sha256:6777a86259c7274cd88a81bbcd1795c00037b333627b00ae69990d74eddf604e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122472202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a6e5ae06ddfb2ded1596f45b25ba13ac7b68a81c10da183d1c276db64ff16b`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:57:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 05:57:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:57:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 05:57:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 05:59:40 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 05:59:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:00:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:00:02 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:00:02 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:00:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:00:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:00:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:00:03 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a8fd40c855ea2242cbfddb00a0853e5737d28b8ebf5d4ea70821798a470d68`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 4.4 KB (4445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b391513b511e5234c4cff7379d37cf3e5c6f2a6ee7dcaa5cde63f2bc41fa56a2`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f814aa1fd31da4d740f09e532d5c1475e1743d50220b64708dec04bc2959a2c`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db76dde5796231b492538d068438aa2b95f8f6a98da27e014dc30492990858a5`  
		Last Modified: Sat, 09 Dec 2017 06:13:39 GMT  
		Size: 32.2 MB (32237322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe672d6f97d9fdd6ef2378a840946a5d18aec8b13d2b05c37d4770b71357130d`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aafe325f6852c7de4e6e897764ae7a37f95274e9c05181b538f34aae23ccaa`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a305ea9228dfd6b2d3286005877ee9547a19c395278fd64d1e0b61af60bb71`  
		Last Modified: Sat, 09 Dec 2017 06:13:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:8c859898db59eb6b680f241bb14d20a3ea003efeac9e67cb0f28595622c80c5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119742589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7080f93d2c4dd1ea3cd850ac928217ae11e4439a3aff19e1e9cac79a9cca22fe`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:09:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 06:09:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:09:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:09:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 06:09:16 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 06:09:17 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 06:12:46 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 06:12:47 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 06:12:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 06:12:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 06:12:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 06:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 06:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:13:03 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:13:05 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8cebc7aabed07349ca9b1fc5d8e4de58b89720dc3494bdcaffaa46b45932f1`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad73d2ac88b4c1959dedb4524387113cb7f0c7b33dc1fddd72d16c0b44558f10`  
		Last Modified: Sat, 09 Dec 2017 06:14:26 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbae66f0005f3d7bfcae3dbde75bc60fb944cf72d51f3af6e4ae7f3be99dd41`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091a2e76780441b524b9d3426c28ef7715fa256d303f68f1ee262035eb414abf`  
		Last Modified: Sat, 09 Dec 2017 06:14:34 GMT  
		Size: 32.6 MB (32635069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d369dac33aa9c25ca4433f6dbcea13dca47d24d2579031434a8163fe97c6f28`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538d6a3365a618a29b44d1ac91cbf9efbc86136929865321287ec8ae06b1e93`  
		Last Modified: Sat, 09 Dec 2017 06:14:24 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571b645413e39d8f81d3958caf4290f41376a69558fa340debc22f7e202991ef`  
		Last Modified: Sat, 09 Dec 2017 06:14:23 GMT  
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
$ docker pull ghost@sha256:d2d245ff597c7f7da9e70457582f887ec3a6cd256dab896af61729d17ba9f662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7efd99865d7ff7d9574e80e6b716d112a9c0c431b7216da7fa6902ce62e99759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88e6965c34cfe740143a3dcec42408fc13651cf36cf3624069a6bc782cb090e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 01:08:26 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 09 Dec 2017 01:08:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:09:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:09:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:09:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:09:25 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:09:26 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:09:26 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:09:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca06b30e618ac72d0e25124917eee0f1719833ae7a96ff24f9f7769da758a`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 1.4 MB (1353599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0159189367a8e39988636f2279874b01b0b94691d047378ee6f664ae0e02eb`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945fae2c25092533372e042e946c87c8e743f173c9acf881b5f8a0a39134da2b`  
		Last Modified: Sat, 09 Dec 2017 01:23:53 GMT  
		Size: 25.2 MB (25230787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5af1a8baaa57d167ad6e40a24aabffec62c3981b69d4c3748a954ed367087e`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd473005ff460ad8530271a77f4e21d0b6096af7f88c40e22ab3f017d5e1e84`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:d2d245ff597c7f7da9e70457582f887ec3a6cd256dab896af61729d17ba9f662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7efd99865d7ff7d9574e80e6b716d112a9c0c431b7216da7fa6902ce62e99759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88e6965c34cfe740143a3dcec42408fc13651cf36cf3624069a6bc782cb090e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 01:08:26 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 09 Dec 2017 01:08:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:09:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:09:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:09:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:09:25 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:09:26 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:09:26 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:09:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca06b30e618ac72d0e25124917eee0f1719833ae7a96ff24f9f7769da758a`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 1.4 MB (1353599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0159189367a8e39988636f2279874b01b0b94691d047378ee6f664ae0e02eb`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945fae2c25092533372e042e946c87c8e743f173c9acf881b5f8a0a39134da2b`  
		Last Modified: Sat, 09 Dec 2017 01:23:53 GMT  
		Size: 25.2 MB (25230787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5af1a8baaa57d167ad6e40a24aabffec62c3981b69d4c3748a954ed367087e`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd473005ff460ad8530271a77f4e21d0b6096af7f88c40e22ab3f017d5e1e84`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d2d245ff597c7f7da9e70457582f887ec3a6cd256dab896af61729d17ba9f662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7efd99865d7ff7d9574e80e6b716d112a9c0c431b7216da7fa6902ce62e99759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88e6965c34cfe740143a3dcec42408fc13651cf36cf3624069a6bc782cb090e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 01:08:26 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 09 Dec 2017 01:08:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:09:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:09:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:09:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:09:25 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:09:26 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:09:26 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:09:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca06b30e618ac72d0e25124917eee0f1719833ae7a96ff24f9f7769da758a`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 1.4 MB (1353599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0159189367a8e39988636f2279874b01b0b94691d047378ee6f664ae0e02eb`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945fae2c25092533372e042e946c87c8e743f173c9acf881b5f8a0a39134da2b`  
		Last Modified: Sat, 09 Dec 2017 01:23:53 GMT  
		Size: 25.2 MB (25230787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5af1a8baaa57d167ad6e40a24aabffec62c3981b69d4c3748a954ed367087e`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd473005ff460ad8530271a77f4e21d0b6096af7f88c40e22ab3f017d5e1e84`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:a91b6655b376f2cf7a2a99a229cef3cc38860b7ed611a4275d15776a2704a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:07caf7172ae9e04e15c3739ee8eb214e730c58b198988f5f4c46d6c4e6728c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216013199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922465f5e605c9d76251ed2043d4fbe3df524015a500a5e1b14a6162dc247f45`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:57:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 00:57:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 00:57:46 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:57:47 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:58:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 00:58:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 00:58:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 00:59:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 00:59:00 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 00:59:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 00:59:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 00:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 00:59:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 00:59:01 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58373e0db6dcb4a787632cebd1ace323f59ae45252210c44820f190781700592`  
		Last Modified: Sat, 09 Dec 2017 01:13:52 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28899094744c814f1b2201a8423d9d58f65da66954bca649b896a092f4f379b`  
		Last Modified: Sat, 09 Dec 2017 01:14:23 GMT  
		Size: 19.1 MB (19143458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa1c2eea6b9b818d3d11890bbf317dded4ff11d06c9d77e11d3b93b892ef0f`  
		Last Modified: Sat, 09 Dec 2017 01:14:51 GMT  
		Size: 100.8 MB (100836778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beec23a4f9866281ded94d53baa641049c95235c93262ed7283ba498f1914c7`  
		Last Modified: Sat, 09 Dec 2017 01:13:53 GMT  
		Size: 7.8 MB (7811894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1073c8d07c197facea1f8f4ca9561c5faf22793dd580e22532be510e4968a09`  
		Last Modified: Sat, 09 Dec 2017 01:13:51 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a74dde9361ab48242b81ee84bcbac2c0a047f59e69a02a60bc601665b61048fc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213533041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f23780f835e8357b9bf429fb12eedb81b3a98d09d82ba77058b1e59834fa4`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:12:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:12:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:12:44 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 02:12:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 02:13:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 02:14:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 02:14:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 02:17:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 02:17:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 02:17:38 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 02:17:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 02:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:17:39 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:17:39 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1338162ea9c88caecd03301f007987bd02d3c75eb7b80ce50eb55747895a1cfb`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd447d0a7aaa6b0289758b538eab12491adfa38c0772f10bc64f837b1cb2c5`  
		Last Modified: Sat, 09 Dec 2017 02:21:52 GMT  
		Size: 19.1 MB (19145471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc63b671018bbbaa7655a8c0c7aa052420b6e31e2663118c44754f422afdcb7`  
		Last Modified: Sat, 09 Dec 2017 02:22:19 GMT  
		Size: 95.7 MB (95729742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42f4e8ec1f8823a11d5911e723ed84bf683fdb776520a70a32b58be6d2b06d0`  
		Last Modified: Sat, 09 Dec 2017 02:21:49 GMT  
		Size: 16.2 MB (16209264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515f6f70d73dfa15278d6e2c193dab301b80958e70adfa12cf9199f8ecd88e5`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ae29c3ac74ab4b5d1a679d339cd1aa4300b5d4ec036426631a8973658ce3fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216412022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3752667bb4e66539a897aef8c32f0b481be6786a637ae6b1b06da5a6b3e94bcf`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:10:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:10:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:10:33 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 13:10:33 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 13:11:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 13:11:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 13:13:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 13:13:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 13:17:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 13:17:32 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 13:17:33 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 13:17:34 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 13:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:17:35 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:17:36 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465a11d96d75f794e98423ba254282243da8092b3014b6851fe90b734cb1903`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b95a28bfc23fffe713bb6d9ad0bf5a37ef62f61ce09d5f1be0d2f33ac11cc`  
		Last Modified: Sat, 09 Dec 2017 13:24:06 GMT  
		Size: 19.1 MB (19146589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4595a815e4b553880d346e41630524ff015806da1fd12d47f96453222314fed`  
		Last Modified: Sat, 09 Dec 2017 13:24:36 GMT  
		Size: 95.7 MB (95727863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8449b076738953f822cbe82bf40a5eae9ae8ee29eae4442ad295d2515c41e3a`  
		Last Modified: Sat, 09 Dec 2017 13:24:04 GMT  
		Size: 16.6 MB (16554467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51caa26881b3b946ec11e8214c3577a1b1a83cc8557282f9757d8e399ea9064`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; 386

```console
$ docker pull ghost@sha256:1aaf55846a8cf43dfe11fdf34dfb93f1d3de7927e4f7012d8842ed47c13394a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221736243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcb894812a73f242539e91f556d8480e23eae0b9faea422fb0bec91d65dd44`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:47:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:47:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:47:53 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 05:47:53 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 05:48:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 05:49:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 05:49:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 05:50:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 05:50:59 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 05:50:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 05:51:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 05:51:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 05:51:00 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 05:51:00 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c92a316a5375df25b635f17d5e3bee01baed6578345e7e35f93f25fa7519080`  
		Last Modified: Sat, 09 Dec 2017 06:06:30 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a590e029225faa528f0b9a4954bab8dea8942e75be13f1b8a770748846566320`  
		Last Modified: Sat, 09 Dec 2017 06:06:55 GMT  
		Size: 19.1 MB (19143757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c126fae50e51bf6bfb3a47e8070c1d6b892bdfcd3b3b2ca69f02952f462f7`  
		Last Modified: Sat, 09 Dec 2017 06:07:34 GMT  
		Size: 95.7 MB (95731320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3084f70278d6a543c9253a081d78a6b5bdf05917aac462054c0ae80f602c50`  
		Last Modified: Sat, 09 Dec 2017 06:06:40 GMT  
		Size: 16.6 MB (16631267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de9049ec466da70febe5622413462c4b62f84e13b72bebddc36042f1eb3a0cf`  
		Last Modified: Sat, 09 Dec 2017 06:06:31 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:f7df64b2b518e8a37f8a5f5df849d3d15681af173973733e4aa9e812c173f1f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218998304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18536b48af30d360cf0dddf745ab1dd49ab5b9bba4fc667d928723d1af232a99`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:02:35 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:02:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:02:43 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 06:02:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 06:03:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 06:03:15 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 06:04:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 06:04:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 06:07:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 06:07:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 06:07:40 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 06:07:41 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 06:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:07:44 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:07:45 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac78b267f149d2943a51d11dca28a89d162fc2121d57754e4864d3072dafd9c`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceeaf484d42afb95223ae1374b0b0216d764efe543e97885ea0a870c972d364`  
		Last Modified: Sat, 09 Dec 2017 06:13:38 GMT  
		Size: 19.1 MB (19144579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1eeb7c24c08a7ba72d71729b7a6c4ca0bfc8b675bf9433bad45b755268e4bb`  
		Last Modified: Sat, 09 Dec 2017 06:13:54 GMT  
		Size: 95.7 MB (95730063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385877e9fa96b48c61fa41cc366a7e2d837195b31b36409d16dbecb57afca0c`  
		Last Modified: Sat, 09 Dec 2017 06:13:32 GMT  
		Size: 17.0 MB (17021251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abbefb479a75dec317090e011c075be7f7049c7ccc037b1d8fbe7dd151e9136`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18`

```console
$ docker pull ghost@sha256:a91b6655b376f2cf7a2a99a229cef3cc38860b7ed611a4275d15776a2704a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:1.18` - linux; amd64

```console
$ docker pull ghost@sha256:07caf7172ae9e04e15c3739ee8eb214e730c58b198988f5f4c46d6c4e6728c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216013199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922465f5e605c9d76251ed2043d4fbe3df524015a500a5e1b14a6162dc247f45`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:57:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 00:57:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 00:57:46 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:57:47 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:58:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 00:58:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 00:58:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 00:59:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 00:59:00 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 00:59:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 00:59:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 00:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 00:59:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 00:59:01 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58373e0db6dcb4a787632cebd1ace323f59ae45252210c44820f190781700592`  
		Last Modified: Sat, 09 Dec 2017 01:13:52 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28899094744c814f1b2201a8423d9d58f65da66954bca649b896a092f4f379b`  
		Last Modified: Sat, 09 Dec 2017 01:14:23 GMT  
		Size: 19.1 MB (19143458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa1c2eea6b9b818d3d11890bbf317dded4ff11d06c9d77e11d3b93b892ef0f`  
		Last Modified: Sat, 09 Dec 2017 01:14:51 GMT  
		Size: 100.8 MB (100836778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beec23a4f9866281ded94d53baa641049c95235c93262ed7283ba498f1914c7`  
		Last Modified: Sat, 09 Dec 2017 01:13:53 GMT  
		Size: 7.8 MB (7811894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1073c8d07c197facea1f8f4ca9561c5faf22793dd580e22532be510e4968a09`  
		Last Modified: Sat, 09 Dec 2017 01:13:51 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a74dde9361ab48242b81ee84bcbac2c0a047f59e69a02a60bc601665b61048fc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213533041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f23780f835e8357b9bf429fb12eedb81b3a98d09d82ba77058b1e59834fa4`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:12:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:12:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:12:44 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 02:12:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 02:13:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 02:14:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 02:14:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 02:17:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 02:17:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 02:17:38 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 02:17:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 02:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:17:39 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:17:39 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1338162ea9c88caecd03301f007987bd02d3c75eb7b80ce50eb55747895a1cfb`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd447d0a7aaa6b0289758b538eab12491adfa38c0772f10bc64f837b1cb2c5`  
		Last Modified: Sat, 09 Dec 2017 02:21:52 GMT  
		Size: 19.1 MB (19145471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc63b671018bbbaa7655a8c0c7aa052420b6e31e2663118c44754f422afdcb7`  
		Last Modified: Sat, 09 Dec 2017 02:22:19 GMT  
		Size: 95.7 MB (95729742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42f4e8ec1f8823a11d5911e723ed84bf683fdb776520a70a32b58be6d2b06d0`  
		Last Modified: Sat, 09 Dec 2017 02:21:49 GMT  
		Size: 16.2 MB (16209264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515f6f70d73dfa15278d6e2c193dab301b80958e70adfa12cf9199f8ecd88e5`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ae29c3ac74ab4b5d1a679d339cd1aa4300b5d4ec036426631a8973658ce3fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216412022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3752667bb4e66539a897aef8c32f0b481be6786a637ae6b1b06da5a6b3e94bcf`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:10:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:10:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:10:33 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 13:10:33 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 13:11:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 13:11:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 13:13:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 13:13:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 13:17:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 13:17:32 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 13:17:33 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 13:17:34 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 13:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:17:35 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:17:36 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465a11d96d75f794e98423ba254282243da8092b3014b6851fe90b734cb1903`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b95a28bfc23fffe713bb6d9ad0bf5a37ef62f61ce09d5f1be0d2f33ac11cc`  
		Last Modified: Sat, 09 Dec 2017 13:24:06 GMT  
		Size: 19.1 MB (19146589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4595a815e4b553880d346e41630524ff015806da1fd12d47f96453222314fed`  
		Last Modified: Sat, 09 Dec 2017 13:24:36 GMT  
		Size: 95.7 MB (95727863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8449b076738953f822cbe82bf40a5eae9ae8ee29eae4442ad295d2515c41e3a`  
		Last Modified: Sat, 09 Dec 2017 13:24:04 GMT  
		Size: 16.6 MB (16554467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51caa26881b3b946ec11e8214c3577a1b1a83cc8557282f9757d8e399ea9064`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; 386

```console
$ docker pull ghost@sha256:1aaf55846a8cf43dfe11fdf34dfb93f1d3de7927e4f7012d8842ed47c13394a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221736243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcb894812a73f242539e91f556d8480e23eae0b9faea422fb0bec91d65dd44`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:47:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:47:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:47:53 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 05:47:53 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 05:48:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 05:49:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 05:49:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 05:50:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 05:50:59 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 05:50:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 05:51:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 05:51:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 05:51:00 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 05:51:00 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c92a316a5375df25b635f17d5e3bee01baed6578345e7e35f93f25fa7519080`  
		Last Modified: Sat, 09 Dec 2017 06:06:30 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a590e029225faa528f0b9a4954bab8dea8942e75be13f1b8a770748846566320`  
		Last Modified: Sat, 09 Dec 2017 06:06:55 GMT  
		Size: 19.1 MB (19143757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c126fae50e51bf6bfb3a47e8070c1d6b892bdfcd3b3b2ca69f02952f462f7`  
		Last Modified: Sat, 09 Dec 2017 06:07:34 GMT  
		Size: 95.7 MB (95731320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3084f70278d6a543c9253a081d78a6b5bdf05917aac462054c0ae80f602c50`  
		Last Modified: Sat, 09 Dec 2017 06:06:40 GMT  
		Size: 16.6 MB (16631267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de9049ec466da70febe5622413462c4b62f84e13b72bebddc36042f1eb3a0cf`  
		Last Modified: Sat, 09 Dec 2017 06:06:31 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18` - linux; ppc64le

```console
$ docker pull ghost@sha256:f7df64b2b518e8a37f8a5f5df849d3d15681af173973733e4aa9e812c173f1f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218998304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18536b48af30d360cf0dddf745ab1dd49ab5b9bba4fc667d928723d1af232a99`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:02:35 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:02:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:02:43 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 06:02:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 06:03:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 06:03:15 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 06:04:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 06:04:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 06:07:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 06:07:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 06:07:40 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 06:07:41 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 06:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:07:44 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:07:45 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac78b267f149d2943a51d11dca28a89d162fc2121d57754e4864d3072dafd9c`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceeaf484d42afb95223ae1374b0b0216d764efe543e97885ea0a870c972d364`  
		Last Modified: Sat, 09 Dec 2017 06:13:38 GMT  
		Size: 19.1 MB (19144579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1eeb7c24c08a7ba72d71729b7a6c4ca0bfc8b675bf9433bad45b755268e4bb`  
		Last Modified: Sat, 09 Dec 2017 06:13:54 GMT  
		Size: 95.7 MB (95730063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385877e9fa96b48c61fa41cc366a7e2d837195b31b36409d16dbecb57afca0c`  
		Last Modified: Sat, 09 Dec 2017 06:13:32 GMT  
		Size: 17.0 MB (17021251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abbefb479a75dec317090e011c075be7f7049c7ccc037b1d8fbe7dd151e9136`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18.4`

```console
$ docker pull ghost@sha256:a91b6655b376f2cf7a2a99a229cef3cc38860b7ed611a4275d15776a2704a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:1.18.4` - linux; amd64

```console
$ docker pull ghost@sha256:07caf7172ae9e04e15c3739ee8eb214e730c58b198988f5f4c46d6c4e6728c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216013199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922465f5e605c9d76251ed2043d4fbe3df524015a500a5e1b14a6162dc247f45`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:57:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 00:57:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 00:57:46 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:57:47 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:58:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 00:58:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 00:58:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 00:59:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 00:59:00 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 00:59:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 00:59:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 00:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 00:59:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 00:59:01 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58373e0db6dcb4a787632cebd1ace323f59ae45252210c44820f190781700592`  
		Last Modified: Sat, 09 Dec 2017 01:13:52 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28899094744c814f1b2201a8423d9d58f65da66954bca649b896a092f4f379b`  
		Last Modified: Sat, 09 Dec 2017 01:14:23 GMT  
		Size: 19.1 MB (19143458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa1c2eea6b9b818d3d11890bbf317dded4ff11d06c9d77e11d3b93b892ef0f`  
		Last Modified: Sat, 09 Dec 2017 01:14:51 GMT  
		Size: 100.8 MB (100836778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beec23a4f9866281ded94d53baa641049c95235c93262ed7283ba498f1914c7`  
		Last Modified: Sat, 09 Dec 2017 01:13:53 GMT  
		Size: 7.8 MB (7811894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1073c8d07c197facea1f8f4ca9561c5faf22793dd580e22532be510e4968a09`  
		Last Modified: Sat, 09 Dec 2017 01:13:51 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18.4` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a74dde9361ab48242b81ee84bcbac2c0a047f59e69a02a60bc601665b61048fc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213533041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f23780f835e8357b9bf429fb12eedb81b3a98d09d82ba77058b1e59834fa4`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:12:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:12:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:12:44 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 02:12:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 02:13:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 02:14:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 02:14:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 02:17:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 02:17:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 02:17:38 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 02:17:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 02:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:17:39 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:17:39 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1338162ea9c88caecd03301f007987bd02d3c75eb7b80ce50eb55747895a1cfb`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd447d0a7aaa6b0289758b538eab12491adfa38c0772f10bc64f837b1cb2c5`  
		Last Modified: Sat, 09 Dec 2017 02:21:52 GMT  
		Size: 19.1 MB (19145471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc63b671018bbbaa7655a8c0c7aa052420b6e31e2663118c44754f422afdcb7`  
		Last Modified: Sat, 09 Dec 2017 02:22:19 GMT  
		Size: 95.7 MB (95729742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42f4e8ec1f8823a11d5911e723ed84bf683fdb776520a70a32b58be6d2b06d0`  
		Last Modified: Sat, 09 Dec 2017 02:21:49 GMT  
		Size: 16.2 MB (16209264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515f6f70d73dfa15278d6e2c193dab301b80958e70adfa12cf9199f8ecd88e5`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18.4` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ae29c3ac74ab4b5d1a679d339cd1aa4300b5d4ec036426631a8973658ce3fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216412022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3752667bb4e66539a897aef8c32f0b481be6786a637ae6b1b06da5a6b3e94bcf`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:10:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:10:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:10:33 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 13:10:33 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 13:11:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 13:11:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 13:13:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 13:13:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 13:17:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 13:17:32 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 13:17:33 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 13:17:34 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 13:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:17:35 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:17:36 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465a11d96d75f794e98423ba254282243da8092b3014b6851fe90b734cb1903`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b95a28bfc23fffe713bb6d9ad0bf5a37ef62f61ce09d5f1be0d2f33ac11cc`  
		Last Modified: Sat, 09 Dec 2017 13:24:06 GMT  
		Size: 19.1 MB (19146589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4595a815e4b553880d346e41630524ff015806da1fd12d47f96453222314fed`  
		Last Modified: Sat, 09 Dec 2017 13:24:36 GMT  
		Size: 95.7 MB (95727863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8449b076738953f822cbe82bf40a5eae9ae8ee29eae4442ad295d2515c41e3a`  
		Last Modified: Sat, 09 Dec 2017 13:24:04 GMT  
		Size: 16.6 MB (16554467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51caa26881b3b946ec11e8214c3577a1b1a83cc8557282f9757d8e399ea9064`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18.4` - linux; 386

```console
$ docker pull ghost@sha256:1aaf55846a8cf43dfe11fdf34dfb93f1d3de7927e4f7012d8842ed47c13394a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221736243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcb894812a73f242539e91f556d8480e23eae0b9faea422fb0bec91d65dd44`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:47:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:47:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:47:53 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 05:47:53 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 05:48:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 05:49:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 05:49:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 05:50:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 05:50:59 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 05:50:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 05:51:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 05:51:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 05:51:00 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 05:51:00 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c92a316a5375df25b635f17d5e3bee01baed6578345e7e35f93f25fa7519080`  
		Last Modified: Sat, 09 Dec 2017 06:06:30 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a590e029225faa528f0b9a4954bab8dea8942e75be13f1b8a770748846566320`  
		Last Modified: Sat, 09 Dec 2017 06:06:55 GMT  
		Size: 19.1 MB (19143757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c126fae50e51bf6bfb3a47e8070c1d6b892bdfcd3b3b2ca69f02952f462f7`  
		Last Modified: Sat, 09 Dec 2017 06:07:34 GMT  
		Size: 95.7 MB (95731320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3084f70278d6a543c9253a081d78a6b5bdf05917aac462054c0ae80f602c50`  
		Last Modified: Sat, 09 Dec 2017 06:06:40 GMT  
		Size: 16.6 MB (16631267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de9049ec466da70febe5622413462c4b62f84e13b72bebddc36042f1eb3a0cf`  
		Last Modified: Sat, 09 Dec 2017 06:06:31 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.18.4` - linux; ppc64le

```console
$ docker pull ghost@sha256:f7df64b2b518e8a37f8a5f5df849d3d15681af173973733e4aa9e812c173f1f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218998304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18536b48af30d360cf0dddf745ab1dd49ab5b9bba4fc667d928723d1af232a99`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:02:35 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:02:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:02:43 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 06:02:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 06:03:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 06:03:15 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 06:04:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 06:04:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 06:07:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 06:07:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 06:07:40 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 06:07:41 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 06:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:07:44 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:07:45 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac78b267f149d2943a51d11dca28a89d162fc2121d57754e4864d3072dafd9c`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceeaf484d42afb95223ae1374b0b0216d764efe543e97885ea0a870c972d364`  
		Last Modified: Sat, 09 Dec 2017 06:13:38 GMT  
		Size: 19.1 MB (19144579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1eeb7c24c08a7ba72d71729b7a6c4ca0bfc8b675bf9433bad45b755268e4bb`  
		Last Modified: Sat, 09 Dec 2017 06:13:54 GMT  
		Size: 95.7 MB (95730063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385877e9fa96b48c61fa41cc366a7e2d837195b31b36409d16dbecb57afca0c`  
		Last Modified: Sat, 09 Dec 2017 06:13:32 GMT  
		Size: 17.0 MB (17021251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abbefb479a75dec317090e011c075be7f7049c7ccc037b1d8fbe7dd151e9136`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18.4-alpine`

```console
$ docker pull ghost@sha256:8384d4ffd51bcece8f1e446dd0391d85c17a2f0e148fbf8e342d43d087971471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.18.4-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:41413fb3f05d15d09ce296bb93146c05df8dd7a335b71c2ae92a43c4c1ee4f64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139962202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9619d5ce22f2931e45ae442fd33b18312a372810306b493793c640da7af425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 00:59:14 GMT
RUN apk add --no-cache 		bash
# Sat, 09 Dec 2017 00:59:14 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:59:15 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:59:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:59:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 01:00:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 01:00:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 01:00:15 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 01:00:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 01:00:15 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Dec 2017 01:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:00:16 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:00:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d00667d66eb642c1994445ef415452f5a850d7a4538a5ae8d29755d7b6522`  
		Last Modified: Sat, 09 Dec 2017 01:15:40 GMT  
		Size: 1.1 MB (1112396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62001e2c8a0ce4fb3fa82e1f14a2f6c115b0065960e48dc92376e72708bf72fc`  
		Last Modified: Sat, 09 Dec 2017 01:16:07 GMT  
		Size: 19.1 MB (19142113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5beb9cffa5fff9a8eb1c53abfcae0782a70d680e2d3cc1942dfa4eab5ba52`  
		Last Modified: Sat, 09 Dec 2017 01:16:34 GMT  
		Size: 100.8 MB (100835737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02700d00055a9027e42c6e10ad5d3e526015c7a1fb0039fb6045550cf9d2700`  
		Last Modified: Sat, 09 Dec 2017 01:15:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.18-alpine`

```console
$ docker pull ghost@sha256:8384d4ffd51bcece8f1e446dd0391d85c17a2f0e148fbf8e342d43d087971471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.18-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:41413fb3f05d15d09ce296bb93146c05df8dd7a335b71c2ae92a43c4c1ee4f64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139962202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9619d5ce22f2931e45ae442fd33b18312a372810306b493793c640da7af425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 00:59:14 GMT
RUN apk add --no-cache 		bash
# Sat, 09 Dec 2017 00:59:14 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:59:15 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:59:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:59:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 01:00:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 01:00:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 01:00:15 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 01:00:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 01:00:15 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Dec 2017 01:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:00:16 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:00:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d00667d66eb642c1994445ef415452f5a850d7a4538a5ae8d29755d7b6522`  
		Last Modified: Sat, 09 Dec 2017 01:15:40 GMT  
		Size: 1.1 MB (1112396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62001e2c8a0ce4fb3fa82e1f14a2f6c115b0065960e48dc92376e72708bf72fc`  
		Last Modified: Sat, 09 Dec 2017 01:16:07 GMT  
		Size: 19.1 MB (19142113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5beb9cffa5fff9a8eb1c53abfcae0782a70d680e2d3cc1942dfa4eab5ba52`  
		Last Modified: Sat, 09 Dec 2017 01:16:34 GMT  
		Size: 100.8 MB (100835737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02700d00055a9027e42c6e10ad5d3e526015c7a1fb0039fb6045550cf9d2700`  
		Last Modified: Sat, 09 Dec 2017 01:15:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:8384d4ffd51bcece8f1e446dd0391d85c17a2f0e148fbf8e342d43d087971471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:41413fb3f05d15d09ce296bb93146c05df8dd7a335b71c2ae92a43c4c1ee4f64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139962202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9619d5ce22f2931e45ae442fd33b18312a372810306b493793c640da7af425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 00:59:14 GMT
RUN apk add --no-cache 		bash
# Sat, 09 Dec 2017 00:59:14 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:59:15 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:59:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:59:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 01:00:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 01:00:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 01:00:15 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 01:00:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 01:00:15 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Dec 2017 01:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:00:16 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:00:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d00667d66eb642c1994445ef415452f5a850d7a4538a5ae8d29755d7b6522`  
		Last Modified: Sat, 09 Dec 2017 01:15:40 GMT  
		Size: 1.1 MB (1112396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62001e2c8a0ce4fb3fa82e1f14a2f6c115b0065960e48dc92376e72708bf72fc`  
		Last Modified: Sat, 09 Dec 2017 01:16:07 GMT  
		Size: 19.1 MB (19142113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5beb9cffa5fff9a8eb1c53abfcae0782a70d680e2d3cc1942dfa4eab5ba52`  
		Last Modified: Sat, 09 Dec 2017 01:16:34 GMT  
		Size: 100.8 MB (100835737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02700d00055a9027e42c6e10ad5d3e526015c7a1fb0039fb6045550cf9d2700`  
		Last Modified: Sat, 09 Dec 2017 01:15:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:8384d4ffd51bcece8f1e446dd0391d85c17a2f0e148fbf8e342d43d087971471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:41413fb3f05d15d09ce296bb93146c05df8dd7a335b71c2ae92a43c4c1ee4f64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139962202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9619d5ce22f2931e45ae442fd33b18312a372810306b493793c640da7af425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 00:59:14 GMT
RUN apk add --no-cache 		bash
# Sat, 09 Dec 2017 00:59:14 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:59:15 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:59:37 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:59:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:59:38 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 01:00:13 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 01:00:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 01:00:15 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 01:00:15 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 01:00:15 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 09 Dec 2017 01:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:00:16 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:00:16 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d00667d66eb642c1994445ef415452f5a850d7a4538a5ae8d29755d7b6522`  
		Last Modified: Sat, 09 Dec 2017 01:15:40 GMT  
		Size: 1.1 MB (1112396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62001e2c8a0ce4fb3fa82e1f14a2f6c115b0065960e48dc92376e72708bf72fc`  
		Last Modified: Sat, 09 Dec 2017 01:16:07 GMT  
		Size: 19.1 MB (19142113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5beb9cffa5fff9a8eb1c53abfcae0782a70d680e2d3cc1942dfa4eab5ba52`  
		Last Modified: Sat, 09 Dec 2017 01:16:34 GMT  
		Size: 100.8 MB (100835737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02700d00055a9027e42c6e10ad5d3e526015c7a1fb0039fb6045550cf9d2700`  
		Last Modified: Sat, 09 Dec 2017 01:15:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:a91b6655b376f2cf7a2a99a229cef3cc38860b7ed611a4275d15776a2704a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:07caf7172ae9e04e15c3739ee8eb214e730c58b198988f5f4c46d6c4e6728c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216013199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922465f5e605c9d76251ed2043d4fbe3df524015a500a5e1b14a6162dc247f45`
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
# Sat, 09 Dec 2017 00:11:28 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:11:42 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 00:11:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 00:11:45 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:57:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 00:57:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 00:57:46 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 00:57:47 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 00:58:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 00:58:12 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 00:58:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 00:58:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 00:59:00 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 00:59:00 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 00:59:00 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 00:59:01 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 00:59:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 00:59:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 00:59:01 GMT
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
	-	`sha256:e23c6dbef33eef3e75ad5d9d9b2ea47f79789d17c9942f50ece2893af4f3c883`  
		Last Modified: Sat, 09 Dec 2017 00:36:04 GMT  
		Size: 14.7 MB (14729914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f3f1eeb1cfa39b30a7b0ca01b42e56844390b499d2de490d6265ef3325b7c7`  
		Last Modified: Sat, 09 Dec 2017 00:35:59 GMT  
		Size: 1.0 MB (1009215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58373e0db6dcb4a787632cebd1ace323f59ae45252210c44820f190781700592`  
		Last Modified: Sat, 09 Dec 2017 01:13:52 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28899094744c814f1b2201a8423d9d58f65da66954bca649b896a092f4f379b`  
		Last Modified: Sat, 09 Dec 2017 01:14:23 GMT  
		Size: 19.1 MB (19143458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa1c2eea6b9b818d3d11890bbf317dded4ff11d06c9d77e11d3b93b892ef0f`  
		Last Modified: Sat, 09 Dec 2017 01:14:51 GMT  
		Size: 100.8 MB (100836778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beec23a4f9866281ded94d53baa641049c95235c93262ed7283ba498f1914c7`  
		Last Modified: Sat, 09 Dec 2017 01:13:53 GMT  
		Size: 7.8 MB (7811894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1073c8d07c197facea1f8f4ca9561c5faf22793dd580e22532be510e4968a09`  
		Last Modified: Sat, 09 Dec 2017 01:13:51 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:a74dde9361ab48242b81ee84bcbac2c0a047f59e69a02a60bc601665b61048fc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213533041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f23780f835e8357b9bf429fb12eedb81b3a98d09d82ba77058b1e59834fa4`
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
# Sat, 09 Dec 2017 01:40:29 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 01:41:08 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 01:41:09 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 01:41:11 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 01:41:11 GMT
CMD ["node"]
# Sat, 09 Dec 2017 02:12:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 02:12:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 02:12:44 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 02:12:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 02:13:24 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 02:13:25 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 02:14:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 02:14:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 02:17:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 02:17:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 02:17:38 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 02:17:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 02:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 02:17:39 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 02:17:39 GMT
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
	-	`sha256:981b7f1ed5a4558ddb92860a8eed05a0da2a4abce72698ca7ee4b60c0aa93661`  
		Last Modified: Sat, 09 Dec 2017 01:52:09 GMT  
		Size: 13.9 MB (13893490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39350eaea32816516693e0b72dcfb268c266132cf21e9c131a3e23c448504d8`  
		Last Modified: Sat, 09 Dec 2017 01:52:02 GMT  
		Size: 1.0 MB (1009246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1338162ea9c88caecd03301f007987bd02d3c75eb7b80ce50eb55747895a1cfb`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd447d0a7aaa6b0289758b538eab12491adfa38c0772f10bc64f837b1cb2c5`  
		Last Modified: Sat, 09 Dec 2017 02:21:52 GMT  
		Size: 19.1 MB (19145471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc63b671018bbbaa7655a8c0c7aa052420b6e31e2663118c44754f422afdcb7`  
		Last Modified: Sat, 09 Dec 2017 02:22:19 GMT  
		Size: 95.7 MB (95729742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42f4e8ec1f8823a11d5911e723ed84bf683fdb776520a70a32b58be6d2b06d0`  
		Last Modified: Sat, 09 Dec 2017 02:21:49 GMT  
		Size: 16.2 MB (16209264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515f6f70d73dfa15278d6e2c193dab301b80958e70adfa12cf9199f8ecd88e5`  
		Last Modified: Sat, 09 Dec 2017 02:21:45 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ae29c3ac74ab4b5d1a679d339cd1aa4300b5d4ec036426631a8973658ce3fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216412022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3752667bb4e66539a897aef8c32f0b481be6786a637ae6b1b06da5a6b3e94bcf`
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
# Sat, 09 Dec 2017 12:26:52 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 12:27:18 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 12:27:19 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 12:27:23 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 12:27:24 GMT
CMD ["node"]
# Sat, 09 Dec 2017 13:10:27 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 13:10:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 13:10:33 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 13:10:33 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 13:11:30 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 13:11:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 13:11:32 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 13:13:18 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 13:13:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 13:17:32 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 13:17:32 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 13:17:33 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 13:17:34 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 13:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 13:17:35 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 13:17:36 GMT
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
	-	`sha256:19da45c5cac294ba75e4afed8c37d79d35874921128099b51219e0b2bf8e9fea`  
		Last Modified: Sat, 09 Dec 2017 12:47:05 GMT  
		Size: 14.7 MB (14716347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4267090aa179d074cc00eb4466b079490409087ff20fca62ea9c570f53f46`  
		Last Modified: Sat, 09 Dec 2017 12:46:59 GMT  
		Size: 1.0 MB (1009220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465a11d96d75f794e98423ba254282243da8092b3014b6851fe90b734cb1903`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b95a28bfc23fffe713bb6d9ad0bf5a37ef62f61ce09d5f1be0d2f33ac11cc`  
		Last Modified: Sat, 09 Dec 2017 13:24:06 GMT  
		Size: 19.1 MB (19146589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4595a815e4b553880d346e41630524ff015806da1fd12d47f96453222314fed`  
		Last Modified: Sat, 09 Dec 2017 13:24:36 GMT  
		Size: 95.7 MB (95727863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8449b076738953f822cbe82bf40a5eae9ae8ee29eae4442ad295d2515c41e3a`  
		Last Modified: Sat, 09 Dec 2017 13:24:04 GMT  
		Size: 16.6 MB (16554467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51caa26881b3b946ec11e8214c3577a1b1a83cc8557282f9757d8e399ea9064`  
		Last Modified: Sat, 09 Dec 2017 13:23:58 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; 386

```console
$ docker pull ghost@sha256:1aaf55846a8cf43dfe11fdf34dfb93f1d3de7927e4f7012d8842ed47c13394a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221736243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcb894812a73f242539e91f556d8480e23eae0b9faea422fb0bec91d65dd44`
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
# Sat, 09 Dec 2017 05:13:36 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:14:03 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:14:03 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:14:07 GMT
CMD ["node"]
# Sat, 09 Dec 2017 05:47:38 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 05:47:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 05:47:53 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 05:47:53 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 05:48:17 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 05:48:18 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 05:49:05 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 05:49:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 05:50:59 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 05:50:59 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 05:50:59 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 05:51:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 05:51:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 05:51:00 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 05:51:00 GMT
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
	-	`sha256:b20e128156161a604ecd9ad49b2146ba9e5842525a12d0c0c585171b1e7dd6d8`  
		Last Modified: Sat, 09 Dec 2017 05:27:09 GMT  
		Size: 14.2 MB (14249943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209d700fc8f490e6d9149e79b93cf1d4a80c0ea712abaf3bd8424faee596892b`  
		Last Modified: Sat, 09 Dec 2017 05:27:04 GMT  
		Size: 1.0 MB (1009221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c92a316a5375df25b635f17d5e3bee01baed6578345e7e35f93f25fa7519080`  
		Last Modified: Sat, 09 Dec 2017 06:06:30 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a590e029225faa528f0b9a4954bab8dea8942e75be13f1b8a770748846566320`  
		Last Modified: Sat, 09 Dec 2017 06:06:55 GMT  
		Size: 19.1 MB (19143757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c126fae50e51bf6bfb3a47e8070c1d6b892bdfcd3b3b2ca69f02952f462f7`  
		Last Modified: Sat, 09 Dec 2017 06:07:34 GMT  
		Size: 95.7 MB (95731320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3084f70278d6a543c9253a081d78a6b5bdf05917aac462054c0ae80f602c50`  
		Last Modified: Sat, 09 Dec 2017 06:06:40 GMT  
		Size: 16.6 MB (16631267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de9049ec466da70febe5622413462c4b62f84e13b72bebddc36042f1eb3a0cf`  
		Last Modified: Sat, 09 Dec 2017 06:06:31 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:f7df64b2b518e8a37f8a5f5df849d3d15681af173973733e4aa9e812c173f1f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218998304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18536b48af30d360cf0dddf745ab1dd49ab5b9bba4fc667d928723d1af232a99`
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
# Sat, 09 Dec 2017 05:35:03 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 05:35:30 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 05:35:33 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 05:35:38 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 05:35:39 GMT
CMD ["node"]
# Sat, 09 Dec 2017 06:02:35 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 06:02:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 06:02:43 GMT
ENV NODE_ENV=production
# Sat, 09 Dec 2017 06:02:44 GMT
ENV GHOST_CLI_VERSION=1.4.0
# Sat, 09 Dec 2017 06:03:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 09 Dec 2017 06:03:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 09 Dec 2017 06:03:15 GMT
ENV GHOST_VERSION=1.18.4
# Sat, 09 Dec 2017 06:04:20 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Sat, 09 Dec 2017 06:04:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Sat, 09 Dec 2017 06:07:37 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Sat, 09 Dec 2017 06:07:38 GMT
WORKDIR /var/lib/ghost
# Sat, 09 Dec 2017 06:07:40 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 09 Dec 2017 06:07:41 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Sat, 09 Dec 2017 06:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 06:07:44 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 06:07:45 GMT
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
	-	`sha256:46f39b540d516baed5fe677b16b6040cdf632a6ce64ba2110979eb5e21fb9d5f`  
		Last Modified: Sat, 09 Dec 2017 05:44:32 GMT  
		Size: 14.5 MB (14491033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e9b105396401ecf76c3c8cb4e6ec67de197ca96fde1830c137718a2073c00f`  
		Last Modified: Sat, 09 Dec 2017 05:44:29 GMT  
		Size: 1.0 MB (1009249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac78b267f149d2943a51d11dca28a89d162fc2121d57754e4864d3072dafd9c`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceeaf484d42afb95223ae1374b0b0216d764efe543e97885ea0a870c972d364`  
		Last Modified: Sat, 09 Dec 2017 06:13:38 GMT  
		Size: 19.1 MB (19144579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1eeb7c24c08a7ba72d71729b7a6c4ca0bfc8b675bf9433bad45b755268e4bb`  
		Last Modified: Sat, 09 Dec 2017 06:13:54 GMT  
		Size: 95.7 MB (95730063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385877e9fa96b48c61fa41cc366a7e2d837195b31b36409d16dbecb57afca0c`  
		Last Modified: Sat, 09 Dec 2017 06:13:32 GMT  
		Size: 17.0 MB (17021251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abbefb479a75dec317090e011c075be7f7049c7ccc037b1d8fbe7dd151e9136`  
		Last Modified: Sat, 09 Dec 2017 06:13:28 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
