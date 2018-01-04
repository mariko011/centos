<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.19`](#ghost119)
-	[`ghost:1.19.1`](#ghost1191)
-	[`ghost:1.19.1-alpine`](#ghost1191-alpine)
-	[`ghost:1.19-alpine`](#ghost119-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:82d5e747029b04ca522c14adb78a524231bf7b1d360da3e80c1480b1f0cb6da8
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
$ docker pull ghost@sha256:fd43d048f9d36384a2138fa7d0533dd957e8f865f5deab25ddf839c671a6162f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113713094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7897985775fc7d27a0eef0bf7fd0d93e5a52dd4014ae0012983df3cb21e53837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:47:34 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 03 Jan 2018 20:47:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:47:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:47:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:48:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:48:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:48:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:48:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:48:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Jan 2018 20:48:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:48:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:48:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f91136a0fb6335b281a77ad57803b0d79d0be0a11c69c166b307d87a90ff98`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fe848032d7d40bdde565365fb3c208f83a892b19a840873e3d1c06c350cf7b`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553063b0a5ff4187036552be7be9a53ebfee5b734ffffbf61f4bee7c8e454d9d`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d2d23c56721558fe357486711d06d07145392e19ad7a6ffe89bbb1b363a240`  
		Last Modified: Wed, 03 Jan 2018 20:55:35 GMT  
		Size: 25.5 MB (25478340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7af67a4ec12066a6cc9eaafc61d2d6da9438cfad0ded1ca0b066859fd7b01`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1520c1b421471b69a56c6128326de54609ed41421d47d4bdd9d63891203be5`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27563fa96bdfb32df0f57a845aadedd2e2dde77134f09aa4f56fb33db33349b`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7127499a8e13710b930b45e161453f3573ee691b8c63638e29dc58139b24ae5a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93be0f4ccccf815b30f8f0eaf1690aac81d39a22720f1a46455a3c9c73227427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 16:56:33 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 16:57:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 16:57:16 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 16:57:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 16:57:27 GMT
CMD ["node"]
# Tue, 12 Dec 2017 18:43:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 12 Dec 2017 18:43:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:43:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:43:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 12 Dec 2017 18:43:27 GMT
WORKDIR /usr/src/ghost
# Tue, 12 Dec 2017 18:43:28 GMT
ENV GHOST_VERSION=0.11.12
# Tue, 12 Dec 2017 18:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 12 Dec 2017 18:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 12 Dec 2017 18:47:01 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 12 Dec 2017 18:47:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 12 Dec 2017 18:47:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 12 Dec 2017 18:47:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 18:47:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:47:07 GMT
EXPOSE 2368/tcp
# Tue, 12 Dec 2017 18:47:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2edc7d6c7b513de808418c60d9715d93d7fb68aba5b4a8c65b2e448615db6`  
		Last Modified: Tue, 12 Dec 2017 17:18:36 GMT  
		Size: 13.9 MB (13893493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f909968166940d289288d95475b3d06e91c0899e3b767999c8b1cb16ddbaeb1d`  
		Last Modified: Tue, 12 Dec 2017 17:18:31 GMT  
		Size: 1.0 MB (1010378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d410d95178b9112b85e038f744182c479edc22c7808a84b69a5c5821778e7e13`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365cc8d21d4cd7a1b00acf6d2bd46dd2c63851d16c6ffb3287759ae5d97165d7`  
		Last Modified: Tue, 12 Dec 2017 18:47:31 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77f0a7795e7804015c49522e19944b4270e66b0d3cda0f0559410da3a47331`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a4ae625ee928397972db58edc95ba44002c9c462bd02a2094d7518a111e64`  
		Last Modified: Tue, 12 Dec 2017 18:47:49 GMT  
		Size: 31.8 MB (31828369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02bb691e805f12efea50639d7b347ca3331ec8da9f0a8880e799a67e7b710a`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a544499f51b7792c45bf1e52da6e1a0ae3caa09c32e38a1e1b4d4d9c5c7b48`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b27ec518edc44e8b072dbe3fc1405d6091055f1ef9a6e6fbd6c44f94de14555`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:065b8ccd97f91268408814cbba6d53e2295ca2ccffb9b63312e866da66878775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117154282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69d1e249fe3f189d565a348d69d0c3d450eb2691fe4f3ade283bce6904b5eb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 16 Dec 2017 06:29:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 16 Dec 2017 06:33:15 GMT
ENV NODE_VERSION=6.12.2
# Sat, 16 Dec 2017 06:33:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 16 Dec 2017 06:33:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 16 Dec 2017 06:33:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 16 Dec 2017 06:33:47 GMT
CMD ["node"]
# Sat, 16 Dec 2017 09:19:19 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 16 Dec 2017 09:19:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:19:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:19:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
WORKDIR /usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 16 Dec 2017 09:24:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 16 Dec 2017 09:24:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 16 Dec 2017 09:24:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 16 Dec 2017 09:24:30 GMT
VOLUME [/var/lib/ghost]
# Sat, 16 Dec 2017 09:24:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 16 Dec 2017 09:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 16 Dec 2017 09:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Dec 2017 09:24:34 GMT
EXPOSE 2368/tcp
# Sat, 16 Dec 2017 09:24:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b184af3d449ee5297645aab95e4e9b6b1e16968d4210823b09c466cc28ed82`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46a242ceb3e16a60d08f620225fc24619a340681eb3f6505fe73748551d826`  
		Last Modified: Sat, 16 Dec 2017 06:41:06 GMT  
		Size: 14.7 MB (14716248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8d9b8323fa2ddf6c71fe2153e083c9f316186b8c20158d567cd38ce74c4225`  
		Last Modified: Sat, 16 Dec 2017 06:41:00 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a60aaa54677b87fce70c2cefe750119c4011899d390914a7c067028c33800`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab29b032e1e610cade9456350168873bfc88250bbad7141dd3e9f7f75509adf8`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81af5ebdfb49db6900d7f9ce9e31e4ba8b7498797b523751926228ec6b145b2d`  
		Last Modified: Sat, 16 Dec 2017 09:26:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278275bc80437a950ddecd1752a4dd590b69cb1c0543d3dfa9539f189eee5c`  
		Last Modified: Sat, 16 Dec 2017 09:26:18 GMT  
		Size: 32.2 MB (32164931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60601aa4b43917c914a6a2457d7575423b8ec910586f7b5abe437ebf3d834a12`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3a2ac82907557f7fc861190afbe5f2c636829a07d3be5ba37671f4f060e46e`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeef0f9ff94538dcc6aaa43134fdbd50014bf8acef35862afbe5dedd8fefb5d`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; 386

```console
$ docker pull ghost@sha256:2a5151bb089ccf3db51e535173a5b1d588fdebe55cd780e84e112d4aae72da9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122478867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95a1053618f8a7e58ff8051e65ee6d65797945e2e14169df441200b43d78f22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 18:51:44 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 19:03:15 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 19:03:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 19:03:44 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 19:04:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 19:04:03 GMT
CMD ["node"]
# Wed, 13 Dec 2017 01:00:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Dec 2017 01:00:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 01:00:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 13 Dec 2017 01:03:51 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Dec 2017 01:03:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Dec 2017 01:03:53 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Dec 2017 01:03:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Dec 2017 01:03:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Dec 2017 01:03:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Dec 2017 01:03:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 01:03:56 GMT
EXPOSE 2368/tcp
# Wed, 13 Dec 2017 01:03:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05380781e8de6a2cb45b021d1327f747b90e21131672566ea23218b292eb38eb`  
		Last Modified: Tue, 12 Dec 2017 19:21:30 GMT  
		Size: 117.6 KB (117623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a537e2f5ecfd8f392bc32175811c576118446f9e679a289cc6b7f52a1fd475`  
		Last Modified: Tue, 12 Dec 2017 19:38:40 GMT  
		Size: 14.2 MB (14249907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642e7d9ee2c9d8b0dcad0b01ecdd93b7895195c9775fbcdc6f830ddd91ebf704`  
		Last Modified: Tue, 12 Dec 2017 19:38:33 GMT  
		Size: 1.0 MB (1010346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f89c5e9f2d54cc692a901162eb7f5fb1f34f7977abce688084668f28a9d661`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d466f0b9f9f6d4d538afff78492209b246117fe03ef68f93bb7e0a94ac9e6`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 480.6 KB (480565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0343a68549a49da9eecd5cc438ad85866b4fd724ca665e7281fcceeb3bce3cb`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a282965835fcb57f347139399e06ee5d9b2b1a0f33ab46c0c8875a1265c01fd`  
		Last Modified: Wed, 13 Dec 2017 01:14:37 GMT  
		Size: 32.2 MB (32236747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88367f40b1b315b7ead74e36b04a6776a9818f5fbbd9f208e26ddd1f8ce79152`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8912f4269f1473e1e8938de23efdb0dea108c8606a7baa501df19425f895f`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27446ad5e4bba8e1c07df30d69e2a18ce758fcf5a6bfcaced3c086e280879916`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:b507f898ee1bd1c2ee9b2ae78fed1de8a6283bd88ef9753572c143bf12c41de3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119745547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f461e9b6086962c5fce4b850247e7cafe8b4897aad7d8e10f0c707b67233879b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 15 Dec 2017 06:12:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 15 Dec 2017 06:14:26 GMT
ENV NODE_VERSION=6.12.2
# Fri, 15 Dec 2017 06:15:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 15 Dec 2017 06:15:02 GMT
ENV YARN_VERSION=1.3.2
# Fri, 15 Dec 2017 06:15:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 15 Dec 2017 06:15:14 GMT
CMD ["node"]
# Fri, 15 Dec 2017 06:43:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Dec 2017 06:43:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Dec 2017 06:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Dec 2017 06:43:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Dec 2017 06:43:49 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Dec 2017 06:43:51 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 15 Dec 2017 06:48:21 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Dec 2017 06:48:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Dec 2017 06:48:27 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Dec 2017 06:48:29 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Dec 2017 06:48:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:48:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Dec 2017 06:48:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:48:36 GMT
EXPOSE 2368/tcp
# Fri, 15 Dec 2017 06:48:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4ac86a5d38f2586154f759a4ea71ea2bda675dcdea007bdb259b549ba507c5`  
		Last Modified: Fri, 15 Dec 2017 06:17:39 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871374cf0ab9f5009b4d4d8f735201c54b1ea1ab36e26b8f1e2b7584c9a7ba26`  
		Last Modified: Fri, 15 Dec 2017 06:18:40 GMT  
		Size: 14.5 MB (14490976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f994fac74cbab737dc6ee9f87facf2f650f420ccec7f0f53a1dde4c83141f64e`  
		Last Modified: Fri, 15 Dec 2017 06:18:36 GMT  
		Size: 1.0 MB (1010377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba15bdc891995928889c87f0b261b4820051abf57280030d96eebf231c46d497`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56343bfa7c6a1faeb72176f76a8a7afe29dfb2ec36cad7ac0d11bb14d1b0a006`  
		Last Modified: Fri, 15 Dec 2017 06:50:00 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e54f3644022f7f66ca725757dc7092b325af25c161190c47467acf91f2c13a`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd6834a8f20be48df833693bc0b9a7a7507675fea1be04a598182592d742a14`  
		Last Modified: Fri, 15 Dec 2017 06:50:08 GMT  
		Size: 32.6 MB (32634974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7bede5ad1b42e72e11da9eeeee6a5871d67c767e4babda4db53b9b0c84f937`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad48c1f17e5b74949bd8b239cb307a5081c5c95428b9f8b5af49d9bd95b52770`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2057e5de543bd0198fe749f67db45d7f78c1331eb0b9f65c6a5304319b210326`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:45efbdd03624ecdc5fdaa86ddbae31d145a0f7764dc102a887942524bedb4c3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbca0e611888ecb04f497807e7294ac7680bbc31483ecafb6b9745ebebfe1f6`
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
# Sat, 09 Dec 2017 18:55:47 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 18:56:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 18:56:00 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 18:56:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 18:56:02 GMT
CMD ["node"]
# Sat, 09 Dec 2017 19:19:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 19:19:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 19:19:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 19:19:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 19:19:32 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 19:19:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 19:20:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 19:20:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 19:20:59 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 19:20:59 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 19:21:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 19:21:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 19:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 19:21:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 19:21:01 GMT
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
	-	`sha256:20d46ec72d862ebf2e91db7033a988c1f8dc3837a945e3725ccf0b2b3fc8ea43`  
		Last Modified: Sat, 09 Dec 2017 19:00:44 GMT  
		Size: 14.9 MB (14862564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94787aed24894ac3e3ed6980f8b8dc99a02d8cb8d905db84fc9d55345a365caf`  
		Last Modified: Sat, 09 Dec 2017 19:00:43 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fbd181483d3fbed8626a16b9716f7a10d59698f0d113bdbac76fb806bf543f`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29aa8f05c4b23e21c394601b788bbf044b5d4d88e8dbf62c30f550c39dfaf82`  
		Last Modified: Sat, 09 Dec 2017 19:22:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dbea7dfa7a1b5001d6020676da3d6cec4c4a1fbbfbc46e3402f1fc1b86e2b`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f308eefcaae48fd04bcb302b1271f11189be6366649dd8eb60beee221e1c7fd7`  
		Last Modified: Sat, 09 Dec 2017 19:22:24 GMT  
		Size: 32.7 MB (32671628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbfe33ac685847903a22d54ebadde43bec4311eed98a053b2f3a47043a993eb`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fba25abb2d5633f3df9f69d3f224453e7059d6159acfed13622c3b2aa60ad7`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dcc4d0661cdeda0feca8ee49fc31b7543ea2006426aaf1ebc79d768b3e47e9`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:82d5e747029b04ca522c14adb78a524231bf7b1d360da3e80c1480b1f0cb6da8
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
$ docker pull ghost@sha256:fd43d048f9d36384a2138fa7d0533dd957e8f865f5deab25ddf839c671a6162f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113713094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7897985775fc7d27a0eef0bf7fd0d93e5a52dd4014ae0012983df3cb21e53837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:47:34 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 03 Jan 2018 20:47:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:47:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:47:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:48:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:48:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:48:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:48:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:48:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Jan 2018 20:48:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:48:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:48:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f91136a0fb6335b281a77ad57803b0d79d0be0a11c69c166b307d87a90ff98`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fe848032d7d40bdde565365fb3c208f83a892b19a840873e3d1c06c350cf7b`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553063b0a5ff4187036552be7be9a53ebfee5b734ffffbf61f4bee7c8e454d9d`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d2d23c56721558fe357486711d06d07145392e19ad7a6ffe89bbb1b363a240`  
		Last Modified: Wed, 03 Jan 2018 20:55:35 GMT  
		Size: 25.5 MB (25478340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7af67a4ec12066a6cc9eaafc61d2d6da9438cfad0ded1ca0b066859fd7b01`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1520c1b421471b69a56c6128326de54609ed41421d47d4bdd9d63891203be5`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27563fa96bdfb32df0f57a845aadedd2e2dde77134f09aa4f56fb33db33349b`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7127499a8e13710b930b45e161453f3573ee691b8c63638e29dc58139b24ae5a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93be0f4ccccf815b30f8f0eaf1690aac81d39a22720f1a46455a3c9c73227427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 16:56:33 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 16:57:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 16:57:16 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 16:57:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 16:57:27 GMT
CMD ["node"]
# Tue, 12 Dec 2017 18:43:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 12 Dec 2017 18:43:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:43:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:43:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 12 Dec 2017 18:43:27 GMT
WORKDIR /usr/src/ghost
# Tue, 12 Dec 2017 18:43:28 GMT
ENV GHOST_VERSION=0.11.12
# Tue, 12 Dec 2017 18:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 12 Dec 2017 18:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 12 Dec 2017 18:47:01 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 12 Dec 2017 18:47:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 12 Dec 2017 18:47:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 12 Dec 2017 18:47:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 18:47:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:47:07 GMT
EXPOSE 2368/tcp
# Tue, 12 Dec 2017 18:47:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2edc7d6c7b513de808418c60d9715d93d7fb68aba5b4a8c65b2e448615db6`  
		Last Modified: Tue, 12 Dec 2017 17:18:36 GMT  
		Size: 13.9 MB (13893493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f909968166940d289288d95475b3d06e91c0899e3b767999c8b1cb16ddbaeb1d`  
		Last Modified: Tue, 12 Dec 2017 17:18:31 GMT  
		Size: 1.0 MB (1010378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d410d95178b9112b85e038f744182c479edc22c7808a84b69a5c5821778e7e13`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365cc8d21d4cd7a1b00acf6d2bd46dd2c63851d16c6ffb3287759ae5d97165d7`  
		Last Modified: Tue, 12 Dec 2017 18:47:31 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77f0a7795e7804015c49522e19944b4270e66b0d3cda0f0559410da3a47331`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a4ae625ee928397972db58edc95ba44002c9c462bd02a2094d7518a111e64`  
		Last Modified: Tue, 12 Dec 2017 18:47:49 GMT  
		Size: 31.8 MB (31828369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02bb691e805f12efea50639d7b347ca3331ec8da9f0a8880e799a67e7b710a`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a544499f51b7792c45bf1e52da6e1a0ae3caa09c32e38a1e1b4d4d9c5c7b48`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b27ec518edc44e8b072dbe3fc1405d6091055f1ef9a6e6fbd6c44f94de14555`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:065b8ccd97f91268408814cbba6d53e2295ca2ccffb9b63312e866da66878775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117154282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69d1e249fe3f189d565a348d69d0c3d450eb2691fe4f3ade283bce6904b5eb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 16 Dec 2017 06:29:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 16 Dec 2017 06:33:15 GMT
ENV NODE_VERSION=6.12.2
# Sat, 16 Dec 2017 06:33:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 16 Dec 2017 06:33:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 16 Dec 2017 06:33:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 16 Dec 2017 06:33:47 GMT
CMD ["node"]
# Sat, 16 Dec 2017 09:19:19 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 16 Dec 2017 09:19:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:19:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:19:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
WORKDIR /usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 16 Dec 2017 09:24:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 16 Dec 2017 09:24:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 16 Dec 2017 09:24:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 16 Dec 2017 09:24:30 GMT
VOLUME [/var/lib/ghost]
# Sat, 16 Dec 2017 09:24:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 16 Dec 2017 09:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 16 Dec 2017 09:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Dec 2017 09:24:34 GMT
EXPOSE 2368/tcp
# Sat, 16 Dec 2017 09:24:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b184af3d449ee5297645aab95e4e9b6b1e16968d4210823b09c466cc28ed82`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46a242ceb3e16a60d08f620225fc24619a340681eb3f6505fe73748551d826`  
		Last Modified: Sat, 16 Dec 2017 06:41:06 GMT  
		Size: 14.7 MB (14716248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8d9b8323fa2ddf6c71fe2153e083c9f316186b8c20158d567cd38ce74c4225`  
		Last Modified: Sat, 16 Dec 2017 06:41:00 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a60aaa54677b87fce70c2cefe750119c4011899d390914a7c067028c33800`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab29b032e1e610cade9456350168873bfc88250bbad7141dd3e9f7f75509adf8`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81af5ebdfb49db6900d7f9ce9e31e4ba8b7498797b523751926228ec6b145b2d`  
		Last Modified: Sat, 16 Dec 2017 09:26:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278275bc80437a950ddecd1752a4dd590b69cb1c0543d3dfa9539f189eee5c`  
		Last Modified: Sat, 16 Dec 2017 09:26:18 GMT  
		Size: 32.2 MB (32164931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60601aa4b43917c914a6a2457d7575423b8ec910586f7b5abe437ebf3d834a12`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3a2ac82907557f7fc861190afbe5f2c636829a07d3be5ba37671f4f060e46e`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeef0f9ff94538dcc6aaa43134fdbd50014bf8acef35862afbe5dedd8fefb5d`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; 386

```console
$ docker pull ghost@sha256:2a5151bb089ccf3db51e535173a5b1d588fdebe55cd780e84e112d4aae72da9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122478867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95a1053618f8a7e58ff8051e65ee6d65797945e2e14169df441200b43d78f22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 18:51:44 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 19:03:15 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 19:03:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 19:03:44 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 19:04:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 19:04:03 GMT
CMD ["node"]
# Wed, 13 Dec 2017 01:00:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Dec 2017 01:00:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 01:00:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 13 Dec 2017 01:03:51 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Dec 2017 01:03:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Dec 2017 01:03:53 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Dec 2017 01:03:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Dec 2017 01:03:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Dec 2017 01:03:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Dec 2017 01:03:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 01:03:56 GMT
EXPOSE 2368/tcp
# Wed, 13 Dec 2017 01:03:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05380781e8de6a2cb45b021d1327f747b90e21131672566ea23218b292eb38eb`  
		Last Modified: Tue, 12 Dec 2017 19:21:30 GMT  
		Size: 117.6 KB (117623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a537e2f5ecfd8f392bc32175811c576118446f9e679a289cc6b7f52a1fd475`  
		Last Modified: Tue, 12 Dec 2017 19:38:40 GMT  
		Size: 14.2 MB (14249907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642e7d9ee2c9d8b0dcad0b01ecdd93b7895195c9775fbcdc6f830ddd91ebf704`  
		Last Modified: Tue, 12 Dec 2017 19:38:33 GMT  
		Size: 1.0 MB (1010346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f89c5e9f2d54cc692a901162eb7f5fb1f34f7977abce688084668f28a9d661`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d466f0b9f9f6d4d538afff78492209b246117fe03ef68f93bb7e0a94ac9e6`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 480.6 KB (480565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0343a68549a49da9eecd5cc438ad85866b4fd724ca665e7281fcceeb3bce3cb`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a282965835fcb57f347139399e06ee5d9b2b1a0f33ab46c0c8875a1265c01fd`  
		Last Modified: Wed, 13 Dec 2017 01:14:37 GMT  
		Size: 32.2 MB (32236747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88367f40b1b315b7ead74e36b04a6776a9818f5fbbd9f208e26ddd1f8ce79152`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8912f4269f1473e1e8938de23efdb0dea108c8606a7baa501df19425f895f`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27446ad5e4bba8e1c07df30d69e2a18ce758fcf5a6bfcaced3c086e280879916`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:b507f898ee1bd1c2ee9b2ae78fed1de8a6283bd88ef9753572c143bf12c41de3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119745547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f461e9b6086962c5fce4b850247e7cafe8b4897aad7d8e10f0c707b67233879b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 15 Dec 2017 06:12:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 15 Dec 2017 06:14:26 GMT
ENV NODE_VERSION=6.12.2
# Fri, 15 Dec 2017 06:15:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 15 Dec 2017 06:15:02 GMT
ENV YARN_VERSION=1.3.2
# Fri, 15 Dec 2017 06:15:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 15 Dec 2017 06:15:14 GMT
CMD ["node"]
# Fri, 15 Dec 2017 06:43:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Dec 2017 06:43:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Dec 2017 06:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Dec 2017 06:43:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Dec 2017 06:43:49 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Dec 2017 06:43:51 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 15 Dec 2017 06:48:21 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Dec 2017 06:48:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Dec 2017 06:48:27 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Dec 2017 06:48:29 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Dec 2017 06:48:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:48:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Dec 2017 06:48:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:48:36 GMT
EXPOSE 2368/tcp
# Fri, 15 Dec 2017 06:48:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4ac86a5d38f2586154f759a4ea71ea2bda675dcdea007bdb259b549ba507c5`  
		Last Modified: Fri, 15 Dec 2017 06:17:39 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871374cf0ab9f5009b4d4d8f735201c54b1ea1ab36e26b8f1e2b7584c9a7ba26`  
		Last Modified: Fri, 15 Dec 2017 06:18:40 GMT  
		Size: 14.5 MB (14490976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f994fac74cbab737dc6ee9f87facf2f650f420ccec7f0f53a1dde4c83141f64e`  
		Last Modified: Fri, 15 Dec 2017 06:18:36 GMT  
		Size: 1.0 MB (1010377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba15bdc891995928889c87f0b261b4820051abf57280030d96eebf231c46d497`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56343bfa7c6a1faeb72176f76a8a7afe29dfb2ec36cad7ac0d11bb14d1b0a006`  
		Last Modified: Fri, 15 Dec 2017 06:50:00 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e54f3644022f7f66ca725757dc7092b325af25c161190c47467acf91f2c13a`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd6834a8f20be48df833693bc0b9a7a7507675fea1be04a598182592d742a14`  
		Last Modified: Fri, 15 Dec 2017 06:50:08 GMT  
		Size: 32.6 MB (32634974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7bede5ad1b42e72e11da9eeeee6a5871d67c767e4babda4db53b9b0c84f937`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad48c1f17e5b74949bd8b239cb307a5081c5c95428b9f8b5af49d9bd95b52770`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2057e5de543bd0198fe749f67db45d7f78c1331eb0b9f65c6a5304319b210326`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:45efbdd03624ecdc5fdaa86ddbae31d145a0f7764dc102a887942524bedb4c3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbca0e611888ecb04f497807e7294ac7680bbc31483ecafb6b9745ebebfe1f6`
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
# Sat, 09 Dec 2017 18:55:47 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 18:56:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 18:56:00 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 18:56:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 18:56:02 GMT
CMD ["node"]
# Sat, 09 Dec 2017 19:19:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 19:19:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 19:19:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 19:19:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 19:19:32 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 19:19:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 19:20:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 19:20:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 19:20:59 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 19:20:59 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 19:21:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 19:21:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 19:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 19:21:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 19:21:01 GMT
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
	-	`sha256:20d46ec72d862ebf2e91db7033a988c1f8dc3837a945e3725ccf0b2b3fc8ea43`  
		Last Modified: Sat, 09 Dec 2017 19:00:44 GMT  
		Size: 14.9 MB (14862564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94787aed24894ac3e3ed6980f8b8dc99a02d8cb8d905db84fc9d55345a365caf`  
		Last Modified: Sat, 09 Dec 2017 19:00:43 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fbd181483d3fbed8626a16b9716f7a10d59698f0d113bdbac76fb806bf543f`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29aa8f05c4b23e21c394601b788bbf044b5d4d88e8dbf62c30f550c39dfaf82`  
		Last Modified: Sat, 09 Dec 2017 19:22:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dbea7dfa7a1b5001d6020676da3d6cec4c4a1fbbfbc46e3402f1fc1b86e2b`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f308eefcaae48fd04bcb302b1271f11189be6366649dd8eb60beee221e1c7fd7`  
		Last Modified: Sat, 09 Dec 2017 19:22:24 GMT  
		Size: 32.7 MB (32671628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbfe33ac685847903a22d54ebadde43bec4311eed98a053b2f3a47043a993eb`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fba25abb2d5633f3df9f69d3f224453e7059d6159acfed13622c3b2aa60ad7`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dcc4d0661cdeda0feca8ee49fc31b7543ea2006426aaf1ebc79d768b3e47e9`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:82d5e747029b04ca522c14adb78a524231bf7b1d360da3e80c1480b1f0cb6da8
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
$ docker pull ghost@sha256:fd43d048f9d36384a2138fa7d0533dd957e8f865f5deab25ddf839c671a6162f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113713094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7897985775fc7d27a0eef0bf7fd0d93e5a52dd4014ae0012983df3cb21e53837`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:47:34 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 03 Jan 2018 20:47:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:47:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:47:43 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:47:44 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:48:52 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:48:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:48:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:48:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:48:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 03 Jan 2018 20:48:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:48:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:48:55 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f91136a0fb6335b281a77ad57803b0d79d0be0a11c69c166b307d87a90ff98`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fe848032d7d40bdde565365fb3c208f83a892b19a840873e3d1c06c350cf7b`  
		Last Modified: Wed, 03 Jan 2018 20:55:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553063b0a5ff4187036552be7be9a53ebfee5b734ffffbf61f4bee7c8e454d9d`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d2d23c56721558fe357486711d06d07145392e19ad7a6ffe89bbb1b363a240`  
		Last Modified: Wed, 03 Jan 2018 20:55:35 GMT  
		Size: 25.5 MB (25478340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7af67a4ec12066a6cc9eaafc61d2d6da9438cfad0ded1ca0b066859fd7b01`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1520c1b421471b69a56c6128326de54609ed41421d47d4bdd9d63891203be5`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27563fa96bdfb32df0f57a845aadedd2e2dde77134f09aa4f56fb33db33349b`  
		Last Modified: Wed, 03 Jan 2018 20:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:7127499a8e13710b930b45e161453f3573ee691b8c63638e29dc58139b24ae5a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114292008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93be0f4ccccf815b30f8f0eaf1690aac81d39a22720f1a46455a3c9c73227427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:51:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 16:51:03 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 16:56:33 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 16:57:09 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 16:57:16 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 16:57:18 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 16:57:27 GMT
CMD ["node"]
# Tue, 12 Dec 2017 18:43:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 12 Dec 2017 18:43:24 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:43:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:43:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 12 Dec 2017 18:43:27 GMT
WORKDIR /usr/src/ghost
# Tue, 12 Dec 2017 18:43:28 GMT
ENV GHOST_VERSION=0.11.12
# Tue, 12 Dec 2017 18:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 12 Dec 2017 18:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 12 Dec 2017 18:47:01 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 12 Dec 2017 18:47:02 GMT
VOLUME [/var/lib/ghost]
# Tue, 12 Dec 2017 18:47:03 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Tue, 12 Dec 2017 18:47:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 18:47:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:47:07 GMT
EXPOSE 2368/tcp
# Tue, 12 Dec 2017 18:47:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408ea57a3c623d05d98e0e2a8d1a36968f3cfb919f8eb77dd0f3c8b0c43e2f6`  
		Last Modified: Tue, 12 Dec 2017 17:08:14 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0215d0d14824f8aa396ea7e1c57ce35f615a7ec5940d7b062e0910fb762b`  
		Last Modified: Tue, 12 Dec 2017 17:08:15 GMT  
		Size: 117.7 KB (117653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2edc7d6c7b513de808418c60d9715d93d7fb68aba5b4a8c65b2e448615db6`  
		Last Modified: Tue, 12 Dec 2017 17:18:36 GMT  
		Size: 13.9 MB (13893493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f909968166940d289288d95475b3d06e91c0899e3b767999c8b1cb16ddbaeb1d`  
		Last Modified: Tue, 12 Dec 2017 17:18:31 GMT  
		Size: 1.0 MB (1010378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d410d95178b9112b85e038f744182c479edc22c7808a84b69a5c5821778e7e13`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365cc8d21d4cd7a1b00acf6d2bd46dd2c63851d16c6ffb3287759ae5d97165d7`  
		Last Modified: Tue, 12 Dec 2017 18:47:31 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77f0a7795e7804015c49522e19944b4270e66b0d3cda0f0559410da3a47331`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a4ae625ee928397972db58edc95ba44002c9c462bd02a2094d7518a111e64`  
		Last Modified: Tue, 12 Dec 2017 18:47:49 GMT  
		Size: 31.8 MB (31828369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02bb691e805f12efea50639d7b347ca3331ec8da9f0a8880e799a67e7b710a`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a544499f51b7792c45bf1e52da6e1a0ae3caa09c32e38a1e1b4d4d9c5c7b48`  
		Last Modified: Tue, 12 Dec 2017 18:47:28 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b27ec518edc44e8b072dbe3fc1405d6091055f1ef9a6e6fbd6c44f94de14555`  
		Last Modified: Tue, 12 Dec 2017 18:47:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:065b8ccd97f91268408814cbba6d53e2295ca2ccffb9b63312e866da66878775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117154282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69d1e249fe3f189d565a348d69d0c3d450eb2691fe4f3ade283bce6904b5eb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 06:29:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 16 Dec 2017 06:29:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 16 Dec 2017 06:33:15 GMT
ENV NODE_VERSION=6.12.2
# Sat, 16 Dec 2017 06:33:41 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 16 Dec 2017 06:33:42 GMT
ENV YARN_VERSION=1.3.2
# Sat, 16 Dec 2017 06:33:46 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 16 Dec 2017 06:33:47 GMT
CMD ["node"]
# Sat, 16 Dec 2017 09:19:19 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 16 Dec 2017 09:19:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Dec 2017 09:19:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 16 Dec 2017 09:19:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
WORKDIR /usr/src/ghost
# Sat, 16 Dec 2017 09:19:26 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 16 Dec 2017 09:24:26 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 16 Dec 2017 09:24:27 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 16 Dec 2017 09:24:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 16 Dec 2017 09:24:30 GMT
VOLUME [/var/lib/ghost]
# Sat, 16 Dec 2017 09:24:31 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 16 Dec 2017 09:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 16 Dec 2017 09:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Dec 2017 09:24:34 GMT
EXPOSE 2368/tcp
# Sat, 16 Dec 2017 09:24:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9246f833963aa2ce4f131418473bc7e6e17640b47a659b95d414bd27c414a`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b184af3d449ee5297645aab95e4e9b6b1e16968d4210823b09c466cc28ed82`  
		Last Modified: Sat, 16 Dec 2017 06:37:05 GMT  
		Size: 117.6 KB (117625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46a242ceb3e16a60d08f620225fc24619a340681eb3f6505fe73748551d826`  
		Last Modified: Sat, 16 Dec 2017 06:41:06 GMT  
		Size: 14.7 MB (14716248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8d9b8323fa2ddf6c71fe2153e083c9f316186b8c20158d567cd38ce74c4225`  
		Last Modified: Sat, 16 Dec 2017 06:41:00 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a60aaa54677b87fce70c2cefe750119c4011899d390914a7c067028c33800`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab29b032e1e610cade9456350168873bfc88250bbad7141dd3e9f7f75509adf8`  
		Last Modified: Sat, 16 Dec 2017 09:26:04 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81af5ebdfb49db6900d7f9ce9e31e4ba8b7498797b523751926228ec6b145b2d`  
		Last Modified: Sat, 16 Dec 2017 09:26:05 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278275bc80437a950ddecd1752a4dd590b69cb1c0543d3dfa9539f189eee5c`  
		Last Modified: Sat, 16 Dec 2017 09:26:18 GMT  
		Size: 32.2 MB (32164931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60601aa4b43917c914a6a2457d7575423b8ec910586f7b5abe437ebf3d834a12`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3a2ac82907557f7fc861190afbe5f2c636829a07d3be5ba37671f4f060e46e`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeef0f9ff94538dcc6aaa43134fdbd50014bf8acef35862afbe5dedd8fefb5d`  
		Last Modified: Sat, 16 Dec 2017 09:26:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; 386

```console
$ docker pull ghost@sha256:2a5151bb089ccf3db51e535173a5b1d588fdebe55cd780e84e112d4aae72da9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122478867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95a1053618f8a7e58ff8051e65ee6d65797945e2e14169df441200b43d78f22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:51:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 18:51:44 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 12 Dec 2017 19:03:15 GMT
ENV NODE_VERSION=6.12.2
# Tue, 12 Dec 2017 19:03:44 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 12 Dec 2017 19:03:44 GMT
ENV YARN_VERSION=1.3.2
# Tue, 12 Dec 2017 19:04:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 12 Dec 2017 19:04:03 GMT
CMD ["node"]
# Wed, 13 Dec 2017 01:00:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 13 Dec 2017 01:00:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 01:00:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Dec 2017 01:00:18 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 13 Dec 2017 01:03:51 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Dec 2017 01:03:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Dec 2017 01:03:53 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Dec 2017 01:03:54 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Dec 2017 01:03:54 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 13 Dec 2017 01:03:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Dec 2017 01:03:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 01:03:56 GMT
EXPOSE 2368/tcp
# Wed, 13 Dec 2017 01:03:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080d3b5e7c0e87584e0bc0c3c7fb0a6abad953ee94752ff71f7cd32934e6831`  
		Last Modified: Tue, 12 Dec 2017 19:21:31 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05380781e8de6a2cb45b021d1327f747b90e21131672566ea23218b292eb38eb`  
		Last Modified: Tue, 12 Dec 2017 19:21:30 GMT  
		Size: 117.6 KB (117623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a537e2f5ecfd8f392bc32175811c576118446f9e679a289cc6b7f52a1fd475`  
		Last Modified: Tue, 12 Dec 2017 19:38:40 GMT  
		Size: 14.2 MB (14249907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642e7d9ee2c9d8b0dcad0b01ecdd93b7895195c9775fbcdc6f830ddd91ebf704`  
		Last Modified: Tue, 12 Dec 2017 19:38:33 GMT  
		Size: 1.0 MB (1010346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f89c5e9f2d54cc692a901162eb7f5fb1f34f7977abce688084668f28a9d661`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d466f0b9f9f6d4d538afff78492209b246117fe03ef68f93bb7e0a94ac9e6`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 480.6 KB (480565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0343a68549a49da9eecd5cc438ad85866b4fd724ca665e7281fcceeb3bce3cb`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a282965835fcb57f347139399e06ee5d9b2b1a0f33ab46c0c8875a1265c01fd`  
		Last Modified: Wed, 13 Dec 2017 01:14:37 GMT  
		Size: 32.2 MB (32236747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88367f40b1b315b7ead74e36b04a6776a9818f5fbbd9f208e26ddd1f8ce79152`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8912f4269f1473e1e8938de23efdb0dea108c8606a7baa501df19425f895f`  
		Last Modified: Wed, 13 Dec 2017 01:14:27 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27446ad5e4bba8e1c07df30d69e2a18ce758fcf5a6bfcaced3c086e280879916`  
		Last Modified: Wed, 13 Dec 2017 01:14:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:b507f898ee1bd1c2ee9b2ae78fed1de8a6283bd88ef9753572c143bf12c41de3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119745547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f461e9b6086962c5fce4b850247e7cafe8b4897aad7d8e10f0c707b67233879b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:11:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 15 Dec 2017 06:12:01 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 15 Dec 2017 06:14:26 GMT
ENV NODE_VERSION=6.12.2
# Fri, 15 Dec 2017 06:15:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 15 Dec 2017 06:15:02 GMT
ENV YARN_VERSION=1.3.2
# Fri, 15 Dec 2017 06:15:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 15 Dec 2017 06:15:14 GMT
CMD ["node"]
# Fri, 15 Dec 2017 06:43:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 15 Dec 2017 06:43:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Dec 2017 06:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Dec 2017 06:43:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 15 Dec 2017 06:43:49 GMT
WORKDIR /usr/src/ghost
# Fri, 15 Dec 2017 06:43:51 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 15 Dec 2017 06:48:21 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 15 Dec 2017 06:48:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 15 Dec 2017 06:48:27 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 15 Dec 2017 06:48:29 GMT
VOLUME [/var/lib/ghost]
# Fri, 15 Dec 2017 06:48:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:48:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 15 Dec 2017 06:48:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:48:36 GMT
EXPOSE 2368/tcp
# Fri, 15 Dec 2017 06:48:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf85c5e59d6cff0e6275da09c076b0d44a8ee93fbcd23bbf44b20d54b4df33`  
		Last Modified: Fri, 15 Dec 2017 06:17:38 GMT  
		Size: 4.4 KB (4442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4ac86a5d38f2586154f759a4ea71ea2bda675dcdea007bdb259b549ba507c5`  
		Last Modified: Fri, 15 Dec 2017 06:17:39 GMT  
		Size: 117.7 KB (117651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871374cf0ab9f5009b4d4d8f735201c54b1ea1ab36e26b8f1e2b7584c9a7ba26`  
		Last Modified: Fri, 15 Dec 2017 06:18:40 GMT  
		Size: 14.5 MB (14490976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f994fac74cbab737dc6ee9f87facf2f650f420ccec7f0f53a1dde4c83141f64e`  
		Last Modified: Fri, 15 Dec 2017 06:18:36 GMT  
		Size: 1.0 MB (1010377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba15bdc891995928889c87f0b261b4820051abf57280030d96eebf231c46d497`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56343bfa7c6a1faeb72176f76a8a7afe29dfb2ec36cad7ac0d11bb14d1b0a006`  
		Last Modified: Fri, 15 Dec 2017 06:50:00 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e54f3644022f7f66ca725757dc7092b325af25c161190c47467acf91f2c13a`  
		Last Modified: Fri, 15 Dec 2017 06:49:59 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd6834a8f20be48df833693bc0b9a7a7507675fea1be04a598182592d742a14`  
		Last Modified: Fri, 15 Dec 2017 06:50:08 GMT  
		Size: 32.6 MB (32634974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7bede5ad1b42e72e11da9eeeee6a5871d67c767e4babda4db53b9b0c84f937`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad48c1f17e5b74949bd8b239cb307a5081c5c95428b9f8b5af49d9bd95b52770`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2057e5de543bd0198fe749f67db45d7f78c1331eb0b9f65c6a5304319b210326`  
		Last Modified: Fri, 15 Dec 2017 06:49:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; s390x

```console
$ docker pull ghost@sha256:45efbdd03624ecdc5fdaa86ddbae31d145a0f7764dc102a887942524bedb4c3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121416333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbca0e611888ecb04f497807e7294ac7680bbc31483ecafb6b9745ebebfe1f6`
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
# Sat, 09 Dec 2017 18:55:47 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 18:56:00 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Sat, 09 Dec 2017 18:56:00 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 18:56:02 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Sat, 09 Dec 2017 18:56:02 GMT
CMD ["node"]
# Sat, 09 Dec 2017 19:19:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 09 Dec 2017 19:19:30 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Dec 2017 19:19:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 09 Dec 2017 19:19:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 19:19:32 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 19:19:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 19:20:58 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 19:20:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 19:20:59 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 19:20:59 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 19:21:00 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 09 Dec 2017 19:21:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 09 Dec 2017 19:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 19:21:01 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 19:21:01 GMT
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
	-	`sha256:20d46ec72d862ebf2e91db7033a988c1f8dc3837a945e3725ccf0b2b3fc8ea43`  
		Last Modified: Sat, 09 Dec 2017 19:00:44 GMT  
		Size: 14.9 MB (14862564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94787aed24894ac3e3ed6980f8b8dc99a02d8cb8d905db84fc9d55345a365caf`  
		Last Modified: Sat, 09 Dec 2017 19:00:43 GMT  
		Size: 1.0 MB (1009216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fbd181483d3fbed8626a16b9716f7a10d59698f0d113bdbac76fb806bf543f`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29aa8f05c4b23e21c394601b788bbf044b5d4d88e8dbf62c30f550c39dfaf82`  
		Last Modified: Sat, 09 Dec 2017 19:22:05 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dbea7dfa7a1b5001d6020676da3d6cec4c4a1fbbfbc46e3402f1fc1b86e2b`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f308eefcaae48fd04bcb302b1271f11189be6366649dd8eb60beee221e1c7fd7`  
		Last Modified: Sat, 09 Dec 2017 19:22:24 GMT  
		Size: 32.7 MB (32671628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbfe33ac685847903a22d54ebadde43bec4311eed98a053b2f3a47043a993eb`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fba25abb2d5633f3df9f69d3f224453e7059d6159acfed13622c3b2aa60ad7`  
		Last Modified: Sat, 09 Dec 2017 19:22:03 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dcc4d0661cdeda0feca8ee49fc31b7543ea2006426aaf1ebc79d768b3e47e9`  
		Last Modified: Sat, 09 Dec 2017 19:22:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:05b3a9c77d9c6a1806aed15b2367439906bfb7f6cbfaccdd506a2274479a76c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b660dfd333af75aa5f82f7f906cd7a15b2dab25ff305a7092666534c842bfb43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2257a5b10763cc91f9bf10ae38d2c3357a0604c687f53d1991d70410cec4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:49:12 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 03 Jan 2018 20:49:12 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:49:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:49:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:49:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:49:58 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:49:59 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:49:59 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:49:59 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a15c5a77fad2c828135860c70dad615470e4f952f5d3cf8d819c58e114cb854`  
		Last Modified: Wed, 03 Jan 2018 20:56:12 GMT  
		Size: 1.4 MB (1353596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4aad5acfd333c13888265de3f0d52f0c6fecf34076695b288970ea29ac38c`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fa24c85f8801752f68e4bfb374c22c36559c68612d7af1922405b52e3f69ad`  
		Last Modified: Wed, 03 Jan 2018 20:56:26 GMT  
		Size: 25.2 MB (25230216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b592bcd99398fb49bf34a88f388a35862f2f9138c4f6cb9212182179f865e43`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd412dfcbf77831d88d91f9b2af3cfb9a0ccff209c53f60d26e91f6efabefe9`  
		Last Modified: Wed, 03 Jan 2018 20:56:10 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:05b3a9c77d9c6a1806aed15b2367439906bfb7f6cbfaccdd506a2274479a76c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b660dfd333af75aa5f82f7f906cd7a15b2dab25ff305a7092666534c842bfb43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2257a5b10763cc91f9bf10ae38d2c3357a0604c687f53d1991d70410cec4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:49:12 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 03 Jan 2018 20:49:12 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:49:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:49:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:49:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:49:58 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:49:59 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:49:59 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:49:59 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a15c5a77fad2c828135860c70dad615470e4f952f5d3cf8d819c58e114cb854`  
		Last Modified: Wed, 03 Jan 2018 20:56:12 GMT  
		Size: 1.4 MB (1353596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4aad5acfd333c13888265de3f0d52f0c6fecf34076695b288970ea29ac38c`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fa24c85f8801752f68e4bfb374c22c36559c68612d7af1922405b52e3f69ad`  
		Last Modified: Wed, 03 Jan 2018 20:56:26 GMT  
		Size: 25.2 MB (25230216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b592bcd99398fb49bf34a88f388a35862f2f9138c4f6cb9212182179f865e43`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd412dfcbf77831d88d91f9b2af3cfb9a0ccff209c53f60d26e91f6efabefe9`  
		Last Modified: Wed, 03 Jan 2018 20:56:10 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:05b3a9c77d9c6a1806aed15b2367439906bfb7f6cbfaccdd506a2274479a76c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b660dfd333af75aa5f82f7f906cd7a15b2dab25ff305a7092666534c842bfb43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2257a5b10763cc91f9bf10ae38d2c3357a0604c687f53d1991d70410cec4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:49:12 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 03 Jan 2018 20:49:12 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
WORKDIR /usr/src/ghost
# Wed, 03 Jan 2018 20:49:13 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 03 Jan 2018 20:49:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 03 Jan 2018 20:49:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 03 Jan 2018 20:49:58 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 03 Jan 2018 20:49:58 GMT
VOLUME [/var/lib/ghost]
# Wed, 03 Jan 2018 20:49:59 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 03 Jan 2018 20:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 20:49:59 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 20:49:59 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a15c5a77fad2c828135860c70dad615470e4f952f5d3cf8d819c58e114cb854`  
		Last Modified: Wed, 03 Jan 2018 20:56:12 GMT  
		Size: 1.4 MB (1353596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4aad5acfd333c13888265de3f0d52f0c6fecf34076695b288970ea29ac38c`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fa24c85f8801752f68e4bfb374c22c36559c68612d7af1922405b52e3f69ad`  
		Last Modified: Wed, 03 Jan 2018 20:56:26 GMT  
		Size: 25.2 MB (25230216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b592bcd99398fb49bf34a88f388a35862f2f9138c4f6cb9212182179f865e43`  
		Last Modified: Wed, 03 Jan 2018 20:56:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd412dfcbf77831d88d91f9b2af3cfb9a0ccff209c53f60d26e91f6efabefe9`  
		Last Modified: Wed, 03 Jan 2018 20:56:10 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:6438a9624f54a675197c6d9a52d6b38e585d7aac683b425b1623ffd592047cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:62ba1afa7a140e393db86fe5aa47dab799913f3b59fdfb195d7d22017460bf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217165910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8890e84b8cc551033311716a4ad44114ab14742fc19c3bd3697bd5f8436f1d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:25:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:25:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:25:58 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:25:58 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:26:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:26:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:37:51 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:38:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:39:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 03 Jan 2018 23:46:25 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:46:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:46:26 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 03 Jan 2018 23:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:46:26 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:46:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934cff2733c2350da22d138a8bed79833100aade7f8a97c845c76ae5f3180817`  
		Last Modified: Wed, 03 Jan 2018 20:50:21 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34e28ce5633a51f8e6b5652af72650d9a98e53132b853664aa51ecb37923b4`  
		Last Modified: Wed, 03 Jan 2018 20:50:42 GMT  
		Size: 19.1 MB (19123564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17a15156223f066cff3e75de3258fde1a838241bb38a0b90ffe400c8365a6cd`  
		Last Modified: Wed, 03 Jan 2018 23:55:57 GMT  
		Size: 102.0 MB (102000141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68577c2115b20d35b0051c866b23d9497fcddc127b2ea201d6d55a3cfb98089`  
		Last Modified: Wed, 03 Jan 2018 23:55:21 GMT  
		Size: 7.8 MB (7812449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08919f0e22dbd617f21185bc273f5c6f45cb552642890e7c7d11aaf3f427d4`  
		Last Modified: Wed, 03 Jan 2018 23:55:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.19`

```console
$ docker pull ghost@sha256:6438a9624f54a675197c6d9a52d6b38e585d7aac683b425b1623ffd592047cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.19` - linux; amd64

```console
$ docker pull ghost@sha256:62ba1afa7a140e393db86fe5aa47dab799913f3b59fdfb195d7d22017460bf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217165910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8890e84b8cc551033311716a4ad44114ab14742fc19c3bd3697bd5f8436f1d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:25:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:25:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:25:58 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:25:58 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:26:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:26:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:37:51 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:38:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:39:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 03 Jan 2018 23:46:25 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:46:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:46:26 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 03 Jan 2018 23:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:46:26 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:46:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934cff2733c2350da22d138a8bed79833100aade7f8a97c845c76ae5f3180817`  
		Last Modified: Wed, 03 Jan 2018 20:50:21 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34e28ce5633a51f8e6b5652af72650d9a98e53132b853664aa51ecb37923b4`  
		Last Modified: Wed, 03 Jan 2018 20:50:42 GMT  
		Size: 19.1 MB (19123564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17a15156223f066cff3e75de3258fde1a838241bb38a0b90ffe400c8365a6cd`  
		Last Modified: Wed, 03 Jan 2018 23:55:57 GMT  
		Size: 102.0 MB (102000141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68577c2115b20d35b0051c866b23d9497fcddc127b2ea201d6d55a3cfb98089`  
		Last Modified: Wed, 03 Jan 2018 23:55:21 GMT  
		Size: 7.8 MB (7812449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08919f0e22dbd617f21185bc273f5c6f45cb552642890e7c7d11aaf3f427d4`  
		Last Modified: Wed, 03 Jan 2018 23:55:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.19.1`

```console
$ docker pull ghost@sha256:6438a9624f54a675197c6d9a52d6b38e585d7aac683b425b1623ffd592047cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.19.1` - linux; amd64

```console
$ docker pull ghost@sha256:62ba1afa7a140e393db86fe5aa47dab799913f3b59fdfb195d7d22017460bf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217165910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8890e84b8cc551033311716a4ad44114ab14742fc19c3bd3697bd5f8436f1d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:25:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:25:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:25:58 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:25:58 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:26:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:26:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:37:51 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:38:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:39:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 03 Jan 2018 23:46:25 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:46:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:46:26 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 03 Jan 2018 23:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:46:26 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:46:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934cff2733c2350da22d138a8bed79833100aade7f8a97c845c76ae5f3180817`  
		Last Modified: Wed, 03 Jan 2018 20:50:21 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34e28ce5633a51f8e6b5652af72650d9a98e53132b853664aa51ecb37923b4`  
		Last Modified: Wed, 03 Jan 2018 20:50:42 GMT  
		Size: 19.1 MB (19123564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17a15156223f066cff3e75de3258fde1a838241bb38a0b90ffe400c8365a6cd`  
		Last Modified: Wed, 03 Jan 2018 23:55:57 GMT  
		Size: 102.0 MB (102000141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68577c2115b20d35b0051c866b23d9497fcddc127b2ea201d6d55a3cfb98089`  
		Last Modified: Wed, 03 Jan 2018 23:55:21 GMT  
		Size: 7.8 MB (7812449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08919f0e22dbd617f21185bc273f5c6f45cb552642890e7c7d11aaf3f427d4`  
		Last Modified: Wed, 03 Jan 2018 23:55:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.19.1-alpine`

```console
$ docker pull ghost@sha256:9c9741ce3545c4c443fec4cde1b76153dace571466eb436aaa7ee68685ad7ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.19.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:935c376835ebbba7dfbf8d59fd201a4d73b16cccb839c80904316e0d2f0ad692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141111474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b540ff6be2c65868ce9d0cd2dddf9582fa37d549995036ffa07758b5d88650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:36:55 GMT
RUN apk add --no-cache 		bash
# Wed, 03 Jan 2018 20:36:56 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:36:56 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:37:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:46:41 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:47:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:54:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:54:54 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:54:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:54:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 03 Jan 2018 23:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:54:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:54:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f5abc017d23e317904675eb8773b14bc82897f1b08e61ac235dc2c8e8af014`  
		Last Modified: Wed, 03 Jan 2018 20:52:06 GMT  
		Size: 1.1 MB (1112416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1361013706d003433939eaf8bb83a479283d1aa3d99af180143f7a193c247c95`  
		Last Modified: Wed, 03 Jan 2018 20:52:21 GMT  
		Size: 19.1 MB (19123562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebaa545376312a80a32c90d72576267acd4e95579af343ef48dd8b74469b9c`  
		Last Modified: Wed, 03 Jan 2018 23:57:36 GMT  
		Size: 102.0 MB (102003624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51320b88b6e89d716296795409fa19798ddfe5377c2cc6a94678ce820cfe6e`  
		Last Modified: Wed, 03 Jan 2018 23:57:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.19-alpine`

```console
$ docker pull ghost@sha256:9c9741ce3545c4c443fec4cde1b76153dace571466eb436aaa7ee68685ad7ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.19-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:935c376835ebbba7dfbf8d59fd201a4d73b16cccb839c80904316e0d2f0ad692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141111474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b540ff6be2c65868ce9d0cd2dddf9582fa37d549995036ffa07758b5d88650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:36:55 GMT
RUN apk add --no-cache 		bash
# Wed, 03 Jan 2018 20:36:56 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:36:56 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:37:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:46:41 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:47:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:54:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:54:54 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:54:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:54:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 03 Jan 2018 23:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:54:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:54:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f5abc017d23e317904675eb8773b14bc82897f1b08e61ac235dc2c8e8af014`  
		Last Modified: Wed, 03 Jan 2018 20:52:06 GMT  
		Size: 1.1 MB (1112416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1361013706d003433939eaf8bb83a479283d1aa3d99af180143f7a193c247c95`  
		Last Modified: Wed, 03 Jan 2018 20:52:21 GMT  
		Size: 19.1 MB (19123562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebaa545376312a80a32c90d72576267acd4e95579af343ef48dd8b74469b9c`  
		Last Modified: Wed, 03 Jan 2018 23:57:36 GMT  
		Size: 102.0 MB (102003624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51320b88b6e89d716296795409fa19798ddfe5377c2cc6a94678ce820cfe6e`  
		Last Modified: Wed, 03 Jan 2018 23:57:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:9c9741ce3545c4c443fec4cde1b76153dace571466eb436aaa7ee68685ad7ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:935c376835ebbba7dfbf8d59fd201a4d73b16cccb839c80904316e0d2f0ad692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141111474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b540ff6be2c65868ce9d0cd2dddf9582fa37d549995036ffa07758b5d88650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:36:55 GMT
RUN apk add --no-cache 		bash
# Wed, 03 Jan 2018 20:36:56 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:36:56 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:37:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:46:41 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:47:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:54:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:54:54 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:54:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:54:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 03 Jan 2018 23:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:54:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:54:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f5abc017d23e317904675eb8773b14bc82897f1b08e61ac235dc2c8e8af014`  
		Last Modified: Wed, 03 Jan 2018 20:52:06 GMT  
		Size: 1.1 MB (1112416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1361013706d003433939eaf8bb83a479283d1aa3d99af180143f7a193c247c95`  
		Last Modified: Wed, 03 Jan 2018 20:52:21 GMT  
		Size: 19.1 MB (19123562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebaa545376312a80a32c90d72576267acd4e95579af343ef48dd8b74469b9c`  
		Last Modified: Wed, 03 Jan 2018 23:57:36 GMT  
		Size: 102.0 MB (102003624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51320b88b6e89d716296795409fa19798ddfe5377c2cc6a94678ce820cfe6e`  
		Last Modified: Wed, 03 Jan 2018 23:57:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:9c9741ce3545c4c443fec4cde1b76153dace571466eb436aaa7ee68685ad7ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:935c376835ebbba7dfbf8d59fd201a4d73b16cccb839c80904316e0d2f0ad692
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141111474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b540ff6be2c65868ce9d0cd2dddf9582fa37d549995036ffa07758b5d88650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Wed, 03 Jan 2018 19:36:58 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:48:47 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 03 Jan 2018 19:48:47 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:48:56 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 03 Jan 2018 19:48:56 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:36:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 03 Jan 2018 20:36:55 GMT
RUN apk add --no-cache 		bash
# Wed, 03 Jan 2018 20:36:56 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:36:56 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:37:18 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:37:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:46:41 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:47:31 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:54:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:54:54 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:54:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:54:55 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 03 Jan 2018 23:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:54:55 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:54:55 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c27b0dcc9bf200d7d01f5d74069b46a6d0b7140cb9efaa2790fb0596d2ea27`  
		Last Modified: Wed, 03 Jan 2018 20:06:01 GMT  
		Size: 15.5 MB (15457842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c169b3f90fea8e468a46b07f614e31971903339625f68eb740c24eefa7058`  
		Last Modified: Wed, 03 Jan 2018 20:05:56 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87133e6fc11b0ea089ef9677f3de32bd4661deb115763523dfc12770f23ad704`  
		Last Modified: Wed, 03 Jan 2018 20:52:02 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f5abc017d23e317904675eb8773b14bc82897f1b08e61ac235dc2c8e8af014`  
		Last Modified: Wed, 03 Jan 2018 20:52:06 GMT  
		Size: 1.1 MB (1112416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1361013706d003433939eaf8bb83a479283d1aa3d99af180143f7a193c247c95`  
		Last Modified: Wed, 03 Jan 2018 20:52:21 GMT  
		Size: 19.1 MB (19123562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebaa545376312a80a32c90d72576267acd4e95579af343ef48dd8b74469b9c`  
		Last Modified: Wed, 03 Jan 2018 23:57:36 GMT  
		Size: 102.0 MB (102003624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51320b88b6e89d716296795409fa19798ddfe5377c2cc6a94678ce820cfe6e`  
		Last Modified: Wed, 03 Jan 2018 23:57:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:6438a9624f54a675197c6d9a52d6b38e585d7aac683b425b1623ffd592047cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:62ba1afa7a140e393db86fe5aa47dab799913f3b59fdfb195d7d22017460bf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217165910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8890e84b8cc551033311716a4ad44114ab14742fc19c3bd3697bd5f8436f1d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 13:13:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 12 Dec 2017 13:20:42 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 03 Jan 2018 19:58:22 GMT
ENV NODE_VERSION=6.12.3
# Wed, 03 Jan 2018 19:58:37 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       i386) ARCH='x86';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 Jan 2018 19:58:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 03 Jan 2018 19:58:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 03 Jan 2018 19:58:41 GMT
CMD ["node"]
# Wed, 03 Jan 2018 20:25:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 03 Jan 2018 20:25:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 03 Jan 2018 20:25:58 GMT
ENV NODE_ENV=production
# Wed, 03 Jan 2018 20:25:58 GMT
ENV GHOST_CLI_VERSION=1.4.1
# Wed, 03 Jan 2018 20:26:22 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Wed, 03 Jan 2018 20:26:23 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 03 Jan 2018 20:26:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 03 Jan 2018 23:37:51 GMT
ENV GHOST_VERSION=1.19.1
# Wed, 03 Jan 2018 23:38:48 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		"$GHOST_INSTALL/current/node_modules/knex-migrator/bin/knex-migrator" --version
# Wed, 03 Jan 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/ghost/current/node_modules/knex-migrator/bin
# Wed, 03 Jan 2018 23:39:02 GMT
RUN set -eux; 	cd "$GHOST_INSTALL/current"; 	sqlite3Version="$(npm view . optionalDependencies.sqlite3)"; 	if ! gosu node npm install "sqlite3@$sqlite3Version"; then 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 		apt-get install -y --no-install-recommends python make gcc g++ libc-dev; 		rm -rf /var/lib/apt/lists/*; 				gosu node npm install "sqlite3@$sqlite3Version" --build-from-source; 				apt-mark showmanual | xargs apt-mark auto > /dev/null; 		[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 		apt-get purge -y --auto-remove; 	fi
# Wed, 03 Jan 2018 23:46:25 GMT
WORKDIR /var/lib/ghost
# Wed, 03 Jan 2018 23:46:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 03 Jan 2018 23:46:26 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 03 Jan 2018 23:46:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Jan 2018 23:46:26 GMT
EXPOSE 2368/tcp
# Wed, 03 Jan 2018 23:46:27 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1158f3983ca33dc1c4dbe34b00e765d0ea636226aab430e807c2bbc930d125e`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7679b490d1f1251765d3da2aa73ac1d8d0c7e7bce42e201e7c8034e6711638`  
		Last Modified: Tue, 12 Dec 2017 14:15:00 GMT  
		Size: 117.6 KB (117626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de090a75129ba0f2a73eb02ab218655f20f2bb4d000f7441e92c2c4c12d8efde`  
		Last Modified: Wed, 03 Jan 2018 20:07:36 GMT  
		Size: 14.7 MB (14730228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2aa31575b8a891e215bf534eddc9a93bb7e480b654dd4d3ca0c60ff5496dba`  
		Last Modified: Wed, 03 Jan 2018 20:07:33 GMT  
		Size: 1.0 MB (1010356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934cff2733c2350da22d138a8bed79833100aade7f8a97c845c76ae5f3180817`  
		Last Modified: Wed, 03 Jan 2018 20:50:21 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d34e28ce5633a51f8e6b5652af72650d9a98e53132b853664aa51ecb37923b4`  
		Last Modified: Wed, 03 Jan 2018 20:50:42 GMT  
		Size: 19.1 MB (19123564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17a15156223f066cff3e75de3258fde1a838241bb38a0b90ffe400c8365a6cd`  
		Last Modified: Wed, 03 Jan 2018 23:55:57 GMT  
		Size: 102.0 MB (102000141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68577c2115b20d35b0051c866b23d9497fcddc127b2ea201d6d55a3cfb98089`  
		Last Modified: Wed, 03 Jan 2018 23:55:21 GMT  
		Size: 7.8 MB (7812449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08919f0e22dbd617f21185bc273f5c6f45cb552642890e7c7d11aaf3f427d4`  
		Last Modified: Wed, 03 Jan 2018 23:55:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
