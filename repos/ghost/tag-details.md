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
-	[`ghost:1.16.1`](#ghost1161)
-	[`ghost:1.16.1-alpine`](#ghost1161-alpine)
-	[`ghost:1.16-alpine`](#ghost116-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:5324f34543ad8bdfb33e97093d46f6a04c326b74cfe16d66c902372e2b400bc0
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
$ docker pull ghost@sha256:b5946f6d81ee035ff9d249769f02b1936d19fc034c8ef42547c5ba70c25b8c98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113690970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a576b4a2eebdf67163e645d1630371763eba1f29e6507c55e34977cac32161e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:45:15 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Nov 2017 21:45:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:45:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:45:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:45:20 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:45:21 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:46:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:46:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:46:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:46:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:46:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:46:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 Nov 2017 21:47:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:47:05 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:47:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420a6f8bc26d27444b07bc7b30565b8af7060426e71a967c14233dab62665a71`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e82c50cf8701142c09016e180238144ea5714536d0ed2ed732ab52eb34a0c9`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a563a5e799a34e22745ef43881f9ba5d329e5743f14a5d406dc8ee5ee148e47`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb2805109b849450a82995bbb046a8774b137349732e909d374897655d7d0`  
		Last Modified: Wed, 01 Nov 2017 21:56:39 GMT  
		Size: 25.5 MB (25478529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651bc9ef2f9093ed7b23413aef5a38a3a872ea93582bd814f3ab44af8ada1fc1`  
		Last Modified: Wed, 01 Nov 2017 21:56:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b49049d2c38225526c031d8334fdb1ee028b8ffe4cf83de7bfeff3d842e0b7`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f2ae47842ace8e59e89d43b2be5276063f5e39333088acd57b2fd4647e51b`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
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
$ docker pull ghost@sha256:3e5f324abf3c00646f60653e1fadc3dc865d673137ea6987b86286123a8cbbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12de0eeaf2f36746f0fc0966e759d93ecdf05f1849ec25886d4ce723c265b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 01:02:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 01:02:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 01:03:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 01:03:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 01:03:10 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 01:03:11 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 01:08:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 01:08:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 01:08:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 01:08:20 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 01:08:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 01:08:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 01:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:08:23 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:08:24 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c81dcbd267ce303dffdc8a687e597c5a4cbc6e7d3418f2b18de14a4d9e975`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 4.5 KB (4462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37cdc3c6e25287b00b30efe07dadef01a515353fb88920b4b44a66a26a5c7d0`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6716ef003fcedd8c3dba67df8e50aa144dd7ba81fa3ec11482a373ce6bad28`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799f680fb6191f9a6c62838ad43aa197f4276277969f76e02727e66dcd6157a1`  
		Last Modified: Thu, 02 Nov 2017 01:10:43 GMT  
		Size: 32.2 MB (32164886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e7205a932deedfb128a0fff4db5bcbb132bf063b1faf3e3c968a74d89bdb4`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88cc8822bc39f20ab5bcaa0c1ba70a6a0f9dfedcd13d9c8d2b8a26be44e5c88`  
		Last Modified: Thu, 02 Nov 2017 01:10:27 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5ef772ea0e0b5083e05648b21640bbd7c06be578d7c5d12327de1b331eff14`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 120.0 B  
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
$ docker pull ghost@sha256:5324f34543ad8bdfb33e97093d46f6a04c326b74cfe16d66c902372e2b400bc0
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
$ docker pull ghost@sha256:b5946f6d81ee035ff9d249769f02b1936d19fc034c8ef42547c5ba70c25b8c98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113690970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a576b4a2eebdf67163e645d1630371763eba1f29e6507c55e34977cac32161e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:45:15 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Nov 2017 21:45:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:45:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:45:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:45:20 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:45:21 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:46:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:46:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:46:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:46:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:46:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:46:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 Nov 2017 21:47:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:47:05 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:47:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420a6f8bc26d27444b07bc7b30565b8af7060426e71a967c14233dab62665a71`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e82c50cf8701142c09016e180238144ea5714536d0ed2ed732ab52eb34a0c9`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a563a5e799a34e22745ef43881f9ba5d329e5743f14a5d406dc8ee5ee148e47`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb2805109b849450a82995bbb046a8774b137349732e909d374897655d7d0`  
		Last Modified: Wed, 01 Nov 2017 21:56:39 GMT  
		Size: 25.5 MB (25478529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651bc9ef2f9093ed7b23413aef5a38a3a872ea93582bd814f3ab44af8ada1fc1`  
		Last Modified: Wed, 01 Nov 2017 21:56:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b49049d2c38225526c031d8334fdb1ee028b8ffe4cf83de7bfeff3d842e0b7`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f2ae47842ace8e59e89d43b2be5276063f5e39333088acd57b2fd4647e51b`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
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
$ docker pull ghost@sha256:3e5f324abf3c00646f60653e1fadc3dc865d673137ea6987b86286123a8cbbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12de0eeaf2f36746f0fc0966e759d93ecdf05f1849ec25886d4ce723c265b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 01:02:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 01:02:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 01:03:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 01:03:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 01:03:10 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 01:03:11 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 01:08:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 01:08:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 01:08:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 01:08:20 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 01:08:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 01:08:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 01:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:08:23 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:08:24 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c81dcbd267ce303dffdc8a687e597c5a4cbc6e7d3418f2b18de14a4d9e975`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 4.5 KB (4462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37cdc3c6e25287b00b30efe07dadef01a515353fb88920b4b44a66a26a5c7d0`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6716ef003fcedd8c3dba67df8e50aa144dd7ba81fa3ec11482a373ce6bad28`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799f680fb6191f9a6c62838ad43aa197f4276277969f76e02727e66dcd6157a1`  
		Last Modified: Thu, 02 Nov 2017 01:10:43 GMT  
		Size: 32.2 MB (32164886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e7205a932deedfb128a0fff4db5bcbb132bf063b1faf3e3c968a74d89bdb4`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88cc8822bc39f20ab5bcaa0c1ba70a6a0f9dfedcd13d9c8d2b8a26be44e5c88`  
		Last Modified: Thu, 02 Nov 2017 01:10:27 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5ef772ea0e0b5083e05648b21640bbd7c06be578d7c5d12327de1b331eff14`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 120.0 B  
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
$ docker pull ghost@sha256:5324f34543ad8bdfb33e97093d46f6a04c326b74cfe16d66c902372e2b400bc0
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
$ docker pull ghost@sha256:b5946f6d81ee035ff9d249769f02b1936d19fc034c8ef42547c5ba70c25b8c98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113690970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a576b4a2eebdf67163e645d1630371763eba1f29e6507c55e34977cac32161e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:45:15 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Nov 2017 21:45:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:45:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:45:20 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:45:20 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:45:21 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:46:47 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:46:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:46:49 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:46:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:46:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:46:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 Nov 2017 21:47:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:47:05 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:47:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420a6f8bc26d27444b07bc7b30565b8af7060426e71a967c14233dab62665a71`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e82c50cf8701142c09016e180238144ea5714536d0ed2ed732ab52eb34a0c9`  
		Last Modified: Wed, 01 Nov 2017 21:56:25 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a563a5e799a34e22745ef43881f9ba5d329e5743f14a5d406dc8ee5ee148e47`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050cb2805109b849450a82995bbb046a8774b137349732e909d374897655d7d0`  
		Last Modified: Wed, 01 Nov 2017 21:56:39 GMT  
		Size: 25.5 MB (25478529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651bc9ef2f9093ed7b23413aef5a38a3a872ea93582bd814f3ab44af8ada1fc1`  
		Last Modified: Wed, 01 Nov 2017 21:56:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b49049d2c38225526c031d8334fdb1ee028b8ffe4cf83de7bfeff3d842e0b7`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f2ae47842ace8e59e89d43b2be5276063f5e39333088acd57b2fd4647e51b`  
		Last Modified: Wed, 01 Nov 2017 21:56:22 GMT  
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
$ docker pull ghost@sha256:3e5f324abf3c00646f60653e1fadc3dc865d673137ea6987b86286123a8cbbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117141638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12de0eeaf2f36746f0fc0966e759d93ecdf05f1849ec25886d4ce723c265b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 01:02:57 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 02 Nov 2017 01:02:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 01:03:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 01:03:10 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 02 Nov 2017 01:03:10 GMT
WORKDIR /usr/src/ghost
# Thu, 02 Nov 2017 01:03:11 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 02 Nov 2017 01:08:15 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 02 Nov 2017 01:08:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 02 Nov 2017 01:08:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 02 Nov 2017 01:08:20 GMT
VOLUME [/var/lib/ghost]
# Thu, 02 Nov 2017 01:08:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 02 Nov 2017 01:08:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 02 Nov 2017 01:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:08:23 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:08:24 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c81dcbd267ce303dffdc8a687e597c5a4cbc6e7d3418f2b18de14a4d9e975`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 4.5 KB (4462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37cdc3c6e25287b00b30efe07dadef01a515353fb88920b4b44a66a26a5c7d0`  
		Last Modified: Thu, 02 Nov 2017 01:10:29 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6716ef003fcedd8c3dba67df8e50aa144dd7ba81fa3ec11482a373ce6bad28`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799f680fb6191f9a6c62838ad43aa197f4276277969f76e02727e66dcd6157a1`  
		Last Modified: Thu, 02 Nov 2017 01:10:43 GMT  
		Size: 32.2 MB (32164886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e7205a932deedfb128a0fff4db5bcbb132bf063b1faf3e3c968a74d89bdb4`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88cc8822bc39f20ab5bcaa0c1ba70a6a0f9dfedcd13d9c8d2b8a26be44e5c88`  
		Last Modified: Thu, 02 Nov 2017 01:10:27 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5ef772ea0e0b5083e05648b21640bbd7c06be578d7c5d12327de1b331eff14`  
		Last Modified: Thu, 02 Nov 2017 01:10:26 GMT  
		Size: 120.0 B  
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
$ docker pull ghost@sha256:1ac92e0d29bebdea1d49e8da427002e2265dc3cae06eb3994c6db2ed92d3ecf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:0370036b3f5282a3f5f1c5c7f480bdc265f3834c3e894e209014419712b79b56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45432371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3ec85691b89a116672ab1f494569c02259bf594c8f89a4e0de22c8d80c5a40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:47:32 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 01 Nov 2017 21:47:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:48:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:48:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:48:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:48:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:48:30 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:48:30 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:48:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad729ef359733e80b260b67e9b5ff040e512ab0672cf343cd05d97a3525fdcab`  
		Last Modified: Wed, 01 Nov 2017 21:57:19 GMT  
		Size: 1.4 MB (1353575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721672ff0569454b617e6dd9d1df0547e91cf9467836c538e5f592aa42589721`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2bb11fb8102c0d0ae18b0d72e92f74f893c9c5781169a69578a07df93d4b`  
		Last Modified: Wed, 01 Nov 2017 21:57:33 GMT  
		Size: 25.2 MB (25230597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4d2e5dd06d50c6e934c047f3eaa06120a37ced8d3770e6848be4e6d08f352`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c94a5f1457a43b8854e8926c189b9c4ada5c2f24ce5bc21c8c16b929c1faee`  
		Last Modified: Wed, 01 Nov 2017 21:57:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:1ac92e0d29bebdea1d49e8da427002e2265dc3cae06eb3994c6db2ed92d3ecf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:0370036b3f5282a3f5f1c5c7f480bdc265f3834c3e894e209014419712b79b56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45432371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3ec85691b89a116672ab1f494569c02259bf594c8f89a4e0de22c8d80c5a40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:47:32 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 01 Nov 2017 21:47:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:48:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:48:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:48:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:48:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:48:30 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:48:30 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:48:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad729ef359733e80b260b67e9b5ff040e512ab0672cf343cd05d97a3525fdcab`  
		Last Modified: Wed, 01 Nov 2017 21:57:19 GMT  
		Size: 1.4 MB (1353575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721672ff0569454b617e6dd9d1df0547e91cf9467836c538e5f592aa42589721`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2bb11fb8102c0d0ae18b0d72e92f74f893c9c5781169a69578a07df93d4b`  
		Last Modified: Wed, 01 Nov 2017 21:57:33 GMT  
		Size: 25.2 MB (25230597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4d2e5dd06d50c6e934c047f3eaa06120a37ced8d3770e6848be4e6d08f352`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c94a5f1457a43b8854e8926c189b9c4ada5c2f24ce5bc21c8c16b929c1faee`  
		Last Modified: Wed, 01 Nov 2017 21:57:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:1ac92e0d29bebdea1d49e8da427002e2265dc3cae06eb3994c6db2ed92d3ecf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:0370036b3f5282a3f5f1c5c7f480bdc265f3834c3e894e209014419712b79b56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45432371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3ec85691b89a116672ab1f494569c02259bf594c8f89a4e0de22c8d80c5a40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:47:32 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 01 Nov 2017 21:47:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Nov 2017 21:47:37 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 01 Nov 2017 21:48:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 01 Nov 2017 21:48:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Nov 2017 21:48:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Nov 2017 21:48:30 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Nov 2017 21:48:30 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 01 Nov 2017 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:48:30 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:48:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad729ef359733e80b260b67e9b5ff040e512ab0672cf343cd05d97a3525fdcab`  
		Last Modified: Wed, 01 Nov 2017 21:57:19 GMT  
		Size: 1.4 MB (1353575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721672ff0569454b617e6dd9d1df0547e91cf9467836c538e5f592aa42589721`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caf2bb11fb8102c0d0ae18b0d72e92f74f893c9c5781169a69578a07df93d4b`  
		Last Modified: Wed, 01 Nov 2017 21:57:33 GMT  
		Size: 25.2 MB (25230597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4d2e5dd06d50c6e934c047f3eaa06120a37ced8d3770e6848be4e6d08f352`  
		Last Modified: Wed, 01 Nov 2017 21:57:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c94a5f1457a43b8854e8926c189b9c4ada5c2f24ce5bc21c8c16b929c1faee`  
		Last Modified: Wed, 01 Nov 2017 21:57:17 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:6928eb1a8e022702377b181d96c0717c6c80876f617a4cd49d0acdb63c464801
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
$ docker pull ghost@sha256:58deac3224e7f79d2f5fb3e0a4e2b9cf7324ca976b436e4e8252f39b26bfdd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227315056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9b137d778e93510eb00f57f702e41ba3f97795fd1f261cd7d0111b46966104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:33:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:33:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:33:42 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:33:43 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:34:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:35:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:35:16 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:35:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:35:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 01 Nov 2017 21:35:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:35:17 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:35:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa9d3bc21d3be2fb7ca01a9f6c8e930468292994b09fdb4c8aac5133706318`  
		Last Modified: Wed, 01 Nov 2017 21:48:57 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711990f6910154bf669771148ccf0c0cbe0c31c4ccb0f98633bd9a7fd51e3fcb`  
		Last Modified: Wed, 01 Nov 2017 21:49:33 GMT  
		Size: 39.6 MB (39576603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162ef96752c3b451d9d3898687647046c32ebe0e499220ed3675e37c2478f637`  
		Last Modified: Wed, 01 Nov 2017 21:49:59 GMT  
		Size: 99.5 MB (99531006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2d607944201092a736c88c5d605416311bcf05d508de239780a85cb0a75e`  
		Last Modified: Wed, 01 Nov 2017 21:48:59 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:da3ae100f97e0dda90709bf7c81ac9cb13afa5e59b8cffdd8c48a1c0f57684c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206452015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e2394f49dbbf2c8f7631bc85743253ec6ee68fcdf96ef9e032f509476ed76`
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
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 02:11:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 02:12:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 02:12:52 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 02:12:52 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 02:12:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 02:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:12:53 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:12:53 GMT
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
	-	`sha256:c004c82a3f89e435fc232e48a31daef70c3ab96a8e7e94417dde4d93422e80f7`  
		Last Modified: Fri, 03 Nov 2017 02:17:38 GMT  
		Size: 29.3 MB (29257228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4465989f3b2ea191f3074ca6ed166cc2b11561df0dfa3224c8ada288f5eb2df5`  
		Last Modified: Fri, 03 Nov 2017 02:18:14 GMT  
		Size: 94.8 MB (94762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1741ac3c5457ec7b0c0d8d4a7a0d8598d3abd6847826314ad2e3c984d43f3f4`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:c7dfe0739ed2d92c021a8d9bca24620a46050df94bd62549c491735c06723e7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208911446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d885dfa5dda4490614f47d787c9c60d4610d22aa954600cc23d590475857de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 00:58:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 00:58:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 01:00:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 01:00:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 01:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 01:02:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 01:02:29 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 01:02:30 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 01:02:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 01:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:02:32 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:02:33 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d492bebb0c32fb7383793b714f363650d26842cf6da7a40d2aaddb660b0fa`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d923bece686824639efdafec82533e083a05b6f636cc18f48e55d9d4f8d6919`  
		Last Modified: Thu, 02 Nov 2017 01:08:58 GMT  
		Size: 29.2 MB (29175914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511459638d5475ffff87cf0a7241a31c684251202f92b713c32757780dbd360a`  
		Last Modified: Thu, 02 Nov 2017 01:09:25 GMT  
		Size: 94.8 MB (94763774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c191c3d86fd699509d1b67d96b269a77a9b1b70ba27f4e8e8a6cc29c0b4abc5a`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:2e97b149cf8229b1fba7e81a80c19ef4289316a59e0d12c66f5a08121a2ea6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211023022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42025d733856f7c353ecfbfcafea40e88e06fb2dd9532c7cca379c46ec9481fd`
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
# Thu, 02 Nov 2017 21:45:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 21:45:08 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 21:45:11 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 21:45:13 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 21:46:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 21:46:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 21:46:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 21:47:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 21:47:37 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 21:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 21:47:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 21:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:47:46 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:47:48 GMT
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
	-	`sha256:8aeb9aaf942e97028c332aaba178804386b3f62e7ab169ec27e3d40140e72769`  
		Last Modified: Thu, 02 Nov 2017 21:54:40 GMT  
		Size: 29.2 MB (29172753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f577bb31d8cd29b8096817cbc19d0cc8166e00b473324e004a54ce7ff65ea7c2`  
		Last Modified: Thu, 02 Nov 2017 21:56:36 GMT  
		Size: 94.8 MB (94762786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df719cb0fdd0bbc0f311160da147b26f2b6ba7fa07eabdcc17f61e409e8b6843`  
		Last Modified: Thu, 02 Nov 2017 21:54:27 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:dbb2610198097d8b8edff1c664ab9010e261672f462ece13b4f3767585f590cf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212746719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef71d9b27b98021d7b1043a7816320e33b343b749824421bbae16edaf9f862`
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
# Fri, 03 Nov 2017 00:20:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 00:20:04 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 00:22:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 00:24:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 00:24:21 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 00:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 00:24:22 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 00:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:24:23 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:24:23 GMT
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
	-	`sha256:c9910c690a82434d2ae01031bc592d99bce803f991f4a2b4cdd5d88099847ccd`  
		Last Modified: Fri, 03 Nov 2017 00:29:05 GMT  
		Size: 29.3 MB (29256762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d727dae06daaade5f120bcd66b24b2c0fc7d6d1aaf655abbb4dbc7c355d1ac`  
		Last Modified: Fri, 03 Nov 2017 00:29:31 GMT  
		Size: 94.8 MB (94763860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b102179270e7c0219f72d1a97c55de9bfff9daa2e98f052be749668821965b1`  
		Last Modified: Fri, 03 Nov 2017 00:28:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16`

```console
$ docker pull ghost@sha256:6928eb1a8e022702377b181d96c0717c6c80876f617a4cd49d0acdb63c464801
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
$ docker pull ghost@sha256:58deac3224e7f79d2f5fb3e0a4e2b9cf7324ca976b436e4e8252f39b26bfdd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227315056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9b137d778e93510eb00f57f702e41ba3f97795fd1f261cd7d0111b46966104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:33:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:33:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:33:42 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:33:43 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:34:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:35:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:35:16 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:35:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:35:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 01 Nov 2017 21:35:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:35:17 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:35:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa9d3bc21d3be2fb7ca01a9f6c8e930468292994b09fdb4c8aac5133706318`  
		Last Modified: Wed, 01 Nov 2017 21:48:57 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711990f6910154bf669771148ccf0c0cbe0c31c4ccb0f98633bd9a7fd51e3fcb`  
		Last Modified: Wed, 01 Nov 2017 21:49:33 GMT  
		Size: 39.6 MB (39576603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162ef96752c3b451d9d3898687647046c32ebe0e499220ed3675e37c2478f637`  
		Last Modified: Wed, 01 Nov 2017 21:49:59 GMT  
		Size: 99.5 MB (99531006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2d607944201092a736c88c5d605416311bcf05d508de239780a85cb0a75e`  
		Last Modified: Wed, 01 Nov 2017 21:48:59 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; arm variant v7

```console
$ docker pull ghost@sha256:da3ae100f97e0dda90709bf7c81ac9cb13afa5e59b8cffdd8c48a1c0f57684c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206452015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e2394f49dbbf2c8f7631bc85743253ec6ee68fcdf96ef9e032f509476ed76`
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
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 02:11:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 02:12:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 02:12:52 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 02:12:52 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 02:12:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 02:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:12:53 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:12:53 GMT
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
	-	`sha256:c004c82a3f89e435fc232e48a31daef70c3ab96a8e7e94417dde4d93422e80f7`  
		Last Modified: Fri, 03 Nov 2017 02:17:38 GMT  
		Size: 29.3 MB (29257228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4465989f3b2ea191f3074ca6ed166cc2b11561df0dfa3224c8ada288f5eb2df5`  
		Last Modified: Fri, 03 Nov 2017 02:18:14 GMT  
		Size: 94.8 MB (94762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1741ac3c5457ec7b0c0d8d4a7a0d8598d3abd6847826314ad2e3c984d43f3f4`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:c7dfe0739ed2d92c021a8d9bca24620a46050df94bd62549c491735c06723e7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208911446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d885dfa5dda4490614f47d787c9c60d4610d22aa954600cc23d590475857de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 00:58:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 00:58:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 01:00:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 01:00:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 01:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 01:02:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 01:02:29 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 01:02:30 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 01:02:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 01:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:02:32 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:02:33 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d492bebb0c32fb7383793b714f363650d26842cf6da7a40d2aaddb660b0fa`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d923bece686824639efdafec82533e083a05b6f636cc18f48e55d9d4f8d6919`  
		Last Modified: Thu, 02 Nov 2017 01:08:58 GMT  
		Size: 29.2 MB (29175914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511459638d5475ffff87cf0a7241a31c684251202f92b713c32757780dbd360a`  
		Last Modified: Thu, 02 Nov 2017 01:09:25 GMT  
		Size: 94.8 MB (94763774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c191c3d86fd699509d1b67d96b269a77a9b1b70ba27f4e8e8a6cc29c0b4abc5a`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; ppc64le

```console
$ docker pull ghost@sha256:2e97b149cf8229b1fba7e81a80c19ef4289316a59e0d12c66f5a08121a2ea6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211023022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42025d733856f7c353ecfbfcafea40e88e06fb2dd9532c7cca379c46ec9481fd`
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
# Thu, 02 Nov 2017 21:45:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 21:45:08 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 21:45:11 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 21:45:13 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 21:46:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 21:46:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 21:46:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 21:47:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 21:47:37 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 21:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 21:47:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 21:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:47:46 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:47:48 GMT
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
	-	`sha256:8aeb9aaf942e97028c332aaba178804386b3f62e7ab169ec27e3d40140e72769`  
		Last Modified: Thu, 02 Nov 2017 21:54:40 GMT  
		Size: 29.2 MB (29172753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f577bb31d8cd29b8096817cbc19d0cc8166e00b473324e004a54ce7ff65ea7c2`  
		Last Modified: Thu, 02 Nov 2017 21:56:36 GMT  
		Size: 94.8 MB (94762786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df719cb0fdd0bbc0f311160da147b26f2b6ba7fa07eabdcc17f61e409e8b6843`  
		Last Modified: Thu, 02 Nov 2017 21:54:27 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; s390x

```console
$ docker pull ghost@sha256:dbb2610198097d8b8edff1c664ab9010e261672f462ece13b4f3767585f590cf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212746719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef71d9b27b98021d7b1043a7816320e33b343b749824421bbae16edaf9f862`
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
# Fri, 03 Nov 2017 00:20:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 00:20:04 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 00:22:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 00:24:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 00:24:21 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 00:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 00:24:22 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 00:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:24:23 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:24:23 GMT
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
	-	`sha256:c9910c690a82434d2ae01031bc592d99bce803f991f4a2b4cdd5d88099847ccd`  
		Last Modified: Fri, 03 Nov 2017 00:29:05 GMT  
		Size: 29.3 MB (29256762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d727dae06daaade5f120bcd66b24b2c0fc7d6d1aaf655abbb4dbc7c355d1ac`  
		Last Modified: Fri, 03 Nov 2017 00:29:31 GMT  
		Size: 94.8 MB (94763860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b102179270e7c0219f72d1a97c55de9bfff9daa2e98f052be749668821965b1`  
		Last Modified: Fri, 03 Nov 2017 00:28:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.1`

```console
$ docker pull ghost@sha256:6928eb1a8e022702377b181d96c0717c6c80876f617a4cd49d0acdb63c464801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `ghost:1.16.1` - linux; amd64

```console
$ docker pull ghost@sha256:58deac3224e7f79d2f5fb3e0a4e2b9cf7324ca976b436e4e8252f39b26bfdd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227315056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9b137d778e93510eb00f57f702e41ba3f97795fd1f261cd7d0111b46966104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:33:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:33:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:33:42 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:33:43 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:34:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:35:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:35:16 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:35:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:35:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 01 Nov 2017 21:35:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:35:17 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:35:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa9d3bc21d3be2fb7ca01a9f6c8e930468292994b09fdb4c8aac5133706318`  
		Last Modified: Wed, 01 Nov 2017 21:48:57 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711990f6910154bf669771148ccf0c0cbe0c31c4ccb0f98633bd9a7fd51e3fcb`  
		Last Modified: Wed, 01 Nov 2017 21:49:33 GMT  
		Size: 39.6 MB (39576603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162ef96752c3b451d9d3898687647046c32ebe0e499220ed3675e37c2478f637`  
		Last Modified: Wed, 01 Nov 2017 21:49:59 GMT  
		Size: 99.5 MB (99531006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2d607944201092a736c88c5d605416311bcf05d508de239780a85cb0a75e`  
		Last Modified: Wed, 01 Nov 2017 21:48:59 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:da3ae100f97e0dda90709bf7c81ac9cb13afa5e59b8cffdd8c48a1c0f57684c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206452015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e2394f49dbbf2c8f7631bc85743253ec6ee68fcdf96ef9e032f509476ed76`
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
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 02:11:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 02:12:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 02:12:52 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 02:12:52 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 02:12:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 02:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:12:53 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:12:53 GMT
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
	-	`sha256:c004c82a3f89e435fc232e48a31daef70c3ab96a8e7e94417dde4d93422e80f7`  
		Last Modified: Fri, 03 Nov 2017 02:17:38 GMT  
		Size: 29.3 MB (29257228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4465989f3b2ea191f3074ca6ed166cc2b11561df0dfa3224c8ada288f5eb2df5`  
		Last Modified: Fri, 03 Nov 2017 02:18:14 GMT  
		Size: 94.8 MB (94762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1741ac3c5457ec7b0c0d8d4a7a0d8598d3abd6847826314ad2e3c984d43f3f4`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:c7dfe0739ed2d92c021a8d9bca24620a46050df94bd62549c491735c06723e7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208911446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d885dfa5dda4490614f47d787c9c60d4610d22aa954600cc23d590475857de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 00:58:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 00:58:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 01:00:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 01:00:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 01:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 01:02:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 01:02:29 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 01:02:30 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 01:02:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 01:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:02:32 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:02:33 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d492bebb0c32fb7383793b714f363650d26842cf6da7a40d2aaddb660b0fa`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d923bece686824639efdafec82533e083a05b6f636cc18f48e55d9d4f8d6919`  
		Last Modified: Thu, 02 Nov 2017 01:08:58 GMT  
		Size: 29.2 MB (29175914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511459638d5475ffff87cf0a7241a31c684251202f92b713c32757780dbd360a`  
		Last Modified: Thu, 02 Nov 2017 01:09:25 GMT  
		Size: 94.8 MB (94763774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c191c3d86fd699509d1b67d96b269a77a9b1b70ba27f4e8e8a6cc29c0b4abc5a`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:2e97b149cf8229b1fba7e81a80c19ef4289316a59e0d12c66f5a08121a2ea6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211023022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42025d733856f7c353ecfbfcafea40e88e06fb2dd9532c7cca379c46ec9481fd`
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
# Thu, 02 Nov 2017 21:45:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 21:45:08 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 21:45:11 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 21:45:13 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 21:46:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 21:46:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 21:46:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 21:47:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 21:47:37 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 21:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 21:47:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 21:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:47:46 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:47:48 GMT
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
	-	`sha256:8aeb9aaf942e97028c332aaba178804386b3f62e7ab169ec27e3d40140e72769`  
		Last Modified: Thu, 02 Nov 2017 21:54:40 GMT  
		Size: 29.2 MB (29172753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f577bb31d8cd29b8096817cbc19d0cc8166e00b473324e004a54ce7ff65ea7c2`  
		Last Modified: Thu, 02 Nov 2017 21:56:36 GMT  
		Size: 94.8 MB (94762786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df719cb0fdd0bbc0f311160da147b26f2b6ba7fa07eabdcc17f61e409e8b6843`  
		Last Modified: Thu, 02 Nov 2017 21:54:27 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.1` - linux; s390x

```console
$ docker pull ghost@sha256:dbb2610198097d8b8edff1c664ab9010e261672f462ece13b4f3767585f590cf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212746719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef71d9b27b98021d7b1043a7816320e33b343b749824421bbae16edaf9f862`
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
# Fri, 03 Nov 2017 00:20:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 00:20:04 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 00:22:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 00:24:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 00:24:21 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 00:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 00:24:22 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 00:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:24:23 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:24:23 GMT
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
	-	`sha256:c9910c690a82434d2ae01031bc592d99bce803f991f4a2b4cdd5d88099847ccd`  
		Last Modified: Fri, 03 Nov 2017 00:29:05 GMT  
		Size: 29.3 MB (29256762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d727dae06daaade5f120bcd66b24b2c0fc7d6d1aaf655abbb4dbc7c355d1ac`  
		Last Modified: Fri, 03 Nov 2017 00:29:31 GMT  
		Size: 94.8 MB (94763860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b102179270e7c0219f72d1a97c55de9bfff9daa2e98f052be749668821965b1`  
		Last Modified: Fri, 03 Nov 2017 00:28:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.1-alpine`

```console
$ docker pull ghost@sha256:306c19e4a114103f1f487eaf505f29f3ee9fa282760015dea434d446dc698393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3c0b05831449cef26f97803cd6093d4f71b3972688c2dad8fc8da188b08f053b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159061890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f8f227f6aef9661ad1b22902f4e5c983221937ad38ba93cca2273b756b1036`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:35:44 GMT
RUN apk add --no-cache 		bash
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:35:44 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:35:45 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:36:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:37:10 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:37:10 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 01 Nov 2017 21:37:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:37:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:37:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc772a20e78ad8357348c544dbac7e5f74dd534ece28e27a06a1bf0216830c33`  
		Last Modified: Wed, 01 Nov 2017 21:54:20 GMT  
		Size: 1.1 MB (1112368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94632622aef239766f081a6cccb9cf7bb5e1429b68f0fde3eb06f7c4b0fdb3`  
		Last Modified: Wed, 01 Nov 2017 21:55:00 GMT  
		Size: 39.6 MB (39575237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813d6d10546383ea784e2dec0336647f6e1ec12c5b940a4cfe01c9bbc56ed41b`  
		Last Modified: Wed, 01 Nov 2017 21:55:37 GMT  
		Size: 99.5 MB (99526489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af883813707faa3a2072f959ee97cf6470cc1ba8be9ba54e1135c441947da75`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16-alpine`

```console
$ docker pull ghost@sha256:306c19e4a114103f1f487eaf505f29f3ee9fa282760015dea434d446dc698393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3c0b05831449cef26f97803cd6093d4f71b3972688c2dad8fc8da188b08f053b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159061890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f8f227f6aef9661ad1b22902f4e5c983221937ad38ba93cca2273b756b1036`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:35:44 GMT
RUN apk add --no-cache 		bash
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:35:44 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:35:45 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:36:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:37:10 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:37:10 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 01 Nov 2017 21:37:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:37:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:37:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc772a20e78ad8357348c544dbac7e5f74dd534ece28e27a06a1bf0216830c33`  
		Last Modified: Wed, 01 Nov 2017 21:54:20 GMT  
		Size: 1.1 MB (1112368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94632622aef239766f081a6cccb9cf7bb5e1429b68f0fde3eb06f7c4b0fdb3`  
		Last Modified: Wed, 01 Nov 2017 21:55:00 GMT  
		Size: 39.6 MB (39575237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813d6d10546383ea784e2dec0336647f6e1ec12c5b940a4cfe01c9bbc56ed41b`  
		Last Modified: Wed, 01 Nov 2017 21:55:37 GMT  
		Size: 99.5 MB (99526489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af883813707faa3a2072f959ee97cf6470cc1ba8be9ba54e1135c441947da75`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:306c19e4a114103f1f487eaf505f29f3ee9fa282760015dea434d446dc698393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3c0b05831449cef26f97803cd6093d4f71b3972688c2dad8fc8da188b08f053b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159061890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f8f227f6aef9661ad1b22902f4e5c983221937ad38ba93cca2273b756b1036`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:35:44 GMT
RUN apk add --no-cache 		bash
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:35:44 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:35:45 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:36:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:37:10 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:37:10 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 01 Nov 2017 21:37:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:37:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:37:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc772a20e78ad8357348c544dbac7e5f74dd534ece28e27a06a1bf0216830c33`  
		Last Modified: Wed, 01 Nov 2017 21:54:20 GMT  
		Size: 1.1 MB (1112368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94632622aef239766f081a6cccb9cf7bb5e1429b68f0fde3eb06f7c4b0fdb3`  
		Last Modified: Wed, 01 Nov 2017 21:55:00 GMT  
		Size: 39.6 MB (39575237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813d6d10546383ea784e2dec0336647f6e1ec12c5b940a4cfe01c9bbc56ed41b`  
		Last Modified: Wed, 01 Nov 2017 21:55:37 GMT  
		Size: 99.5 MB (99526489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af883813707faa3a2072f959ee97cf6470cc1ba8be9ba54e1135c441947da75`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:306c19e4a114103f1f487eaf505f29f3ee9fa282760015dea434d446dc698393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:3c0b05831449cef26f97803cd6093d4f71b3972688c2dad8fc8da188b08f053b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159061890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f8f227f6aef9661ad1b22902f4e5c983221937ad38ba93cca2273b756b1036`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:35:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 01 Nov 2017 21:35:44 GMT
RUN apk add --no-cache 		bash
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:35:44 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:35:44 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:35:45 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:36:25 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:36:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:37:10 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:37:10 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 01 Nov 2017 21:37:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:37:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:37:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf433e5161fe7f0509fdf81f559ff20246db532ae6ae240207ddf9a88f7c0be`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 8.4 KB (8369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc772a20e78ad8357348c544dbac7e5f74dd534ece28e27a06a1bf0216830c33`  
		Last Modified: Wed, 01 Nov 2017 21:54:20 GMT  
		Size: 1.1 MB (1112368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94632622aef239766f081a6cccb9cf7bb5e1429b68f0fde3eb06f7c4b0fdb3`  
		Last Modified: Wed, 01 Nov 2017 21:55:00 GMT  
		Size: 39.6 MB (39575237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813d6d10546383ea784e2dec0336647f6e1ec12c5b940a4cfe01c9bbc56ed41b`  
		Last Modified: Wed, 01 Nov 2017 21:55:37 GMT  
		Size: 99.5 MB (99526489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af883813707faa3a2072f959ee97cf6470cc1ba8be9ba54e1135c441947da75`  
		Last Modified: Wed, 01 Nov 2017 21:54:12 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:6928eb1a8e022702377b181d96c0717c6c80876f617a4cd49d0acdb63c464801
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
$ docker pull ghost@sha256:58deac3224e7f79d2f5fb3e0a4e2b9cf7324ca976b436e4e8252f39b26bfdd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227315056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9b137d778e93510eb00f57f702e41ba3f97795fd1f261cd7d0111b46966104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 19:32:29 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 01 Nov 2017 20:25:14 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:25:38 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Nov 2017 20:25:38 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:25:42 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 01 Nov 2017 20:25:42 GMT
CMD ["node"]
# Wed, 01 Nov 2017 21:33:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Nov 2017 21:33:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 01 Nov 2017 21:33:42 GMT
ENV NODE_ENV=production
# Wed, 01 Nov 2017 21:33:42 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Wed, 01 Nov 2017 21:33:43 GMT
ENV GHOST_VERSION=1.16.1
# Wed, 01 Nov 2017 21:34:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 01 Nov 2017 21:34:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 01 Nov 2017 21:35:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 01 Nov 2017 21:35:16 GMT
WORKDIR /var/lib/ghost
# Wed, 01 Nov 2017 21:35:16 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 01 Nov 2017 21:35:17 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 01 Nov 2017 21:35:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Nov 2017 21:35:17 GMT
EXPOSE 2368/tcp
# Wed, 01 Nov 2017 21:35:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6a2f106851fea30d92d5911cc4ef8c64166e746a52a81e357b408828eb922`  
		Last Modified: Wed, 01 Nov 2017 21:09:05 GMT  
		Size: 116.5 KB (116485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0681cbb79796a5b882f0eb38a1227be8c0a0c00780babb6f0f656da38a5fe2d`  
		Last Modified: Wed, 01 Nov 2017 21:19:14 GMT  
		Size: 14.7 MB (14717826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f92d22996dd47ced506f34b9f685e79e7dcebe945e2f5a8675bc4a677c013`  
		Last Modified: Wed, 01 Nov 2017 21:19:10 GMT  
		Size: 1.0 MB (1008444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa9d3bc21d3be2fb7ca01a9f6c8e930468292994b09fdb4c8aac5133706318`  
		Last Modified: Wed, 01 Nov 2017 21:48:57 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711990f6910154bf669771148ccf0c0cbe0c31c4ccb0f98633bd9a7fd51e3fcb`  
		Last Modified: Wed, 01 Nov 2017 21:49:33 GMT  
		Size: 39.6 MB (39576603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162ef96752c3b451d9d3898687647046c32ebe0e499220ed3675e37c2478f637`  
		Last Modified: Wed, 01 Nov 2017 21:49:59 GMT  
		Size: 99.5 MB (99531006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2d607944201092a736c88c5d605416311bcf05d508de239780a85cb0a75e`  
		Last Modified: Wed, 01 Nov 2017 21:48:59 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:da3ae100f97e0dda90709bf7c81ac9cb13afa5e59b8cffdd8c48a1c0f57684c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206452015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4e2394f49dbbf2c8f7631bc85743253ec6ee68fcdf96ef9e032f509476ed76`
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
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 02:10:09 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 02:10:09 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 02:11:23 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 02:11:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 02:12:49 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 02:12:52 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 02:12:52 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 02:12:53 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 02:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 02:12:53 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 02:12:53 GMT
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
	-	`sha256:c004c82a3f89e435fc232e48a31daef70c3ab96a8e7e94417dde4d93422e80f7`  
		Last Modified: Fri, 03 Nov 2017 02:17:38 GMT  
		Size: 29.3 MB (29257228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4465989f3b2ea191f3074ca6ed166cc2b11561df0dfa3224c8ada288f5eb2df5`  
		Last Modified: Fri, 03 Nov 2017 02:18:14 GMT  
		Size: 94.8 MB (94762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1741ac3c5457ec7b0c0d8d4a7a0d8598d3abd6847826314ad2e3c984d43f3f4`  
		Last Modified: Fri, 03 Nov 2017 02:17:20 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:c7dfe0739ed2d92c021a8d9bca24620a46050df94bd62549c491735c06723e7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208911446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d885dfa5dda4490614f47d787c9c60d4610d22aa954600cc23d590475857de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 09:09:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 01 Nov 2017 23:43:22 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 02 Nov 2017 00:17:57 GMT
ENV NODE_VERSION=6.11.5
# Thu, 02 Nov 2017 00:18:23 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 02 Nov 2017 00:18:24 GMT
ENV YARN_VERSION=1.2.1
# Thu, 02 Nov 2017 00:18:28 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 02 Nov 2017 00:18:29 GMT
CMD ["node"]
# Thu, 02 Nov 2017 00:58:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 00:58:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 00:58:40 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 00:58:41 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 01:00:26 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 01:00:27 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 01:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 01:02:26 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 01:02:29 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 01:02:30 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 01:02:31 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 01:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:02:32 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 01:02:33 GMT
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
	-	`sha256:e79ca0053c69a4d8b3a7f18a49bec9b9594c21252f7efe7af490a72cdd325d7e`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5446afda637c84f3791ccb0db5e123ffde24130b37d5cbb7f606fa12a19b7be`  
		Last Modified: Thu, 02 Nov 2017 00:25:25 GMT  
		Size: 116.5 KB (116487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a476d6cf6f1e7fa489e59b424177d587190253fcef09195d85178bc94eb9645`  
		Last Modified: Thu, 02 Nov 2017 00:35:58 GMT  
		Size: 14.7 MB (14705786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e38876d55b7b198c78e8e5cc8ca862a4654ebf71c2a10b220615589e7e004f`  
		Last Modified: Thu, 02 Nov 2017 00:35:53 GMT  
		Size: 1.0 MB (1008445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d492bebb0c32fb7383793b714f363650d26842cf6da7a40d2aaddb660b0fa`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d923bece686824639efdafec82533e083a05b6f636cc18f48e55d9d4f8d6919`  
		Last Modified: Thu, 02 Nov 2017 01:08:58 GMT  
		Size: 29.2 MB (29175914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511459638d5475ffff87cf0a7241a31c684251202f92b713c32757780dbd360a`  
		Last Modified: Thu, 02 Nov 2017 01:09:25 GMT  
		Size: 94.8 MB (94763774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c191c3d86fd699509d1b67d96b269a77a9b1b70ba27f4e8e8a6cc29c0b4abc5a`  
		Last Modified: Thu, 02 Nov 2017 01:08:46 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:2e97b149cf8229b1fba7e81a80c19ef4289316a59e0d12c66f5a08121a2ea6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211023022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42025d733856f7c353ecfbfcafea40e88e06fb2dd9532c7cca379c46ec9481fd`
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
# Thu, 02 Nov 2017 21:45:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 02 Nov 2017 21:45:08 GMT
ENV NODE_ENV=production
# Thu, 02 Nov 2017 21:45:11 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Thu, 02 Nov 2017 21:45:13 GMT
ENV GHOST_VERSION=1.16.1
# Thu, 02 Nov 2017 21:46:06 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 02 Nov 2017 21:46:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 02 Nov 2017 21:46:15 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 02 Nov 2017 21:47:29 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 02 Nov 2017 21:47:37 GMT
WORKDIR /var/lib/ghost
# Thu, 02 Nov 2017 21:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 02 Nov 2017 21:47:42 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 02 Nov 2017 21:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Nov 2017 21:47:46 GMT
EXPOSE 2368/tcp
# Thu, 02 Nov 2017 21:47:48 GMT
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
	-	`sha256:8aeb9aaf942e97028c332aaba178804386b3f62e7ab169ec27e3d40140e72769`  
		Last Modified: Thu, 02 Nov 2017 21:54:40 GMT  
		Size: 29.2 MB (29172753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f577bb31d8cd29b8096817cbc19d0cc8166e00b473324e004a54ce7ff65ea7c2`  
		Last Modified: Thu, 02 Nov 2017 21:56:36 GMT  
		Size: 94.8 MB (94762786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df719cb0fdd0bbc0f311160da147b26f2b6ba7fa07eabdcc17f61e409e8b6843`  
		Last Modified: Thu, 02 Nov 2017 21:54:27 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:dbb2610198097d8b8edff1c664ab9010e261672f462ece13b4f3767585f590cf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212746719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ef71d9b27b98021d7b1043a7816320e33b343b749824421bbae16edaf9f862`
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
# Fri, 03 Nov 2017 00:20:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 03 Nov 2017 00:20:04 GMT
ENV NODE_ENV=production
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Fri, 03 Nov 2017 00:20:05 GMT
ENV GHOST_VERSION=1.16.1
# Fri, 03 Nov 2017 00:22:16 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 03 Nov 2017 00:22:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 03 Nov 2017 00:24:15 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Fri, 03 Nov 2017 00:24:21 GMT
WORKDIR /var/lib/ghost
# Fri, 03 Nov 2017 00:24:21 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 03 Nov 2017 00:24:22 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Fri, 03 Nov 2017 00:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 00:24:23 GMT
EXPOSE 2368/tcp
# Fri, 03 Nov 2017 00:24:23 GMT
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
	-	`sha256:c9910c690a82434d2ae01031bc592d99bce803f991f4a2b4cdd5d88099847ccd`  
		Last Modified: Fri, 03 Nov 2017 00:29:05 GMT  
		Size: 29.3 MB (29256762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d727dae06daaade5f120bcd66b24b2c0fc7d6d1aaf655abbb4dbc7c355d1ac`  
		Last Modified: Fri, 03 Nov 2017 00:29:31 GMT  
		Size: 94.8 MB (94763860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b102179270e7c0219f72d1a97c55de9bfff9daa2e98f052be749668821965b1`  
		Last Modified: Fri, 03 Nov 2017 00:28:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
