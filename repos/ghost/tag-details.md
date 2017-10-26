<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.15`](#ghost115)
-	[`ghost:1.15.1`](#ghost1151)
-	[`ghost:1.15.1-alpine`](#ghost1151-alpine)
-	[`ghost:1.15-alpine`](#ghost115-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:1123a4f3294a499626923e38bf32183a1170771a908f60be0c77ddbe952eba67
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
$ docker pull ghost@sha256:25d6f4e4af9a77ee37a61497b32df6426585cbee8ebcc1de08dbb398cd9c0111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113684283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95352853ae2403df8d6a46d1dd2ea0f3ba09a2583e288be6aeca4b581c467a05`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:55:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 15:55:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:55:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:55:27 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:55:28 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:56:45 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:56:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:56:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:56:46 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:56:47 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:56:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 15:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:56:48 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:56:48 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf821bdda113d8fff25c8377f5f88238f6b67929d1223d9744216a5874c6532f`  
		Last Modified: Wed, 25 Oct 2017 16:01:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3a1264fc75230bbda2bd2515b479f0d0f96525507b589ff8023cabc41c30cc`  
		Last Modified: Wed, 25 Oct 2017 16:01:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c39c9dc3fb87da9e00bdb5998f16a43cac9da1047b55625c4d848d1f375b05`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece572158ca20298f9e658557f878a1b88971a437db1682c67d857caad4e9c0`  
		Last Modified: Wed, 25 Oct 2017 16:01:21 GMT  
		Size: 25.5 MB (25478309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c136de7c3eb134507dff0b52bf24bc99fbebd086158b4ffa40d4a17d20c8da`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358a84cd2a7151d2b16e0e421f3dd581c5ef75c3251c0797ffc6e0ee02129ea3`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e52e82559a46652fa7d154180207b00b0078132299dd6e1c3c082bd0b86e8`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:641c8cf7f7e3d8777f01e81a04c6452b9ee56b09a34f90f9b2f4dbcc2a2684fa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e53568356952eff98e36ae4e714a47acb8c74db31f8b928aa49abad1ad32e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:04:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 01:04:40 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 01:04:41 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 01:07:00 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 01:07:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 01:07:46 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 01:07:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 01:07:52 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:15:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:15:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:15:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:15:55 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 11:55:30 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 11:58:49 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 11:58:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 11:58:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 11:58:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 11:58:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 11:58:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 11:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 11:58:53 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 11:58:53 GMT
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
	-	`sha256:6528d9413e295b4cbdfdef52d97a31ecc6f27162e16adb041a3396164aafe8cf`  
		Last Modified: Tue, 10 Oct 2017 01:11:23 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ebf1b2cde937401a0354e042a68692f55b75c293e2fdcb0eab8b7e75f470c7`  
		Last Modified: Tue, 10 Oct 2017 01:11:24 GMT  
		Size: 119.2 KB (119186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab22fa2d73dada96d8343da87b4a1e47dcc9dc22bfefcf33035d76bf3509743a`  
		Last Modified: Tue, 10 Oct 2017 01:13:16 GMT  
		Size: 13.9 MB (13878729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922c18112af7846914127018809be04155925e81bf20b94da29e593e2b6cc2c7`  
		Last Modified: Tue, 10 Oct 2017 01:13:11 GMT  
		Size: 997.0 KB (996970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26da0de5bef1706bde7d63fc21ee6f77895aed47ee611266a2336f3f556b54`  
		Last Modified: Tue, 10 Oct 2017 02:21:06 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b4f797ce27f755ef3e527982b719bae4f7cdee2f5cff3badf01f0a6e2d5412`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26453d9e90e233a5c904628a2a7618ec207e072bb8c6777bd64251db7e2ad955`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e98e71b7f858d1f1872baefda740fdae518e55d9ad67336d5d75784d4958ed`  
		Last Modified: Sat, 14 Oct 2017 11:59:27 GMT  
		Size: 31.8 MB (31828116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1678fe970923337cc7532b64a06c523fba9b066fc263d9f207ae32486d586afe`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97753a447225839f1991ffb27dc8b0864a64c16fc3cb90a855f11cd5923a68f`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e952a66b77adf4bd59eae85e4320b29201762e192b5ace75164c1ca25d3cb`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ffd76e35c07c617da073b1d5ea4d12213d080994785c0d984ee692809ebe445b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa734b70f9880734fd7e95d5839e5b49d58d1a66e95969ee8090b89fa3d376f`
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
# Tue, 10 Oct 2017 09:09:25 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 09:09:26 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 09:13:21 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 09:14:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 09:14:07 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 09:14:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 09:14:13 GMT
CMD ["node"]
# Tue, 10 Oct 2017 14:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 14:19:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:20:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:20:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 14:20:02 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 10:41:48 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 10:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 10:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 10:47:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 10:47:01 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 10:47:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 10:47:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 10:47:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 10:47:04 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 10:47:04 GMT
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
	-	`sha256:90fd9a72b4f3e9abaa7b746c6e7931c6fa698b81818c60b9e9513bb7d6b3b931`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 119.1 KB (119149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bf76f14b8af1461d226277ed2f1e69609a46163e8aaa462c2631ba2df2c1d9`  
		Last Modified: Tue, 10 Oct 2017 09:24:46 GMT  
		Size: 14.7 MB (14708120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cebe276352f7d60ee46b9ecdea9d770520ac047d4483984203663dd7ffa6699`  
		Last Modified: Tue, 10 Oct 2017 09:24:36 GMT  
		Size: 996.9 KB (996937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f023cad73d8356ab66b20e01b7a7917285fbd37eb2628c2dfd278f75dbd7b1`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f48acb03ca8020a754f355a6e2b4e7d21a17f90d4d41ad6fae953e4ac852d47`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b49af0472d44e11cf77bfb2b7bfea12a865001619b6984c73cf0d937c86c8a`  
		Last Modified: Tue, 10 Oct 2017 14:27:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957c190510c3de1ffed862a9e6835539e263ae8f98159e18e28a83c5ad9ff25`  
		Last Modified: Sat, 14 Oct 2017 10:47:39 GMT  
		Size: 32.2 MB (32165021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2af666b93c21c825da4c9f38e1f36d04f791d8e81b2684bf3d973be1113e0f`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71887bc2c3c138d4a95c4c798d5824b5ea59071c0e6a42ae5d83696d45297804`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c6fa88ebb33a07f989d8e6e286ff7c0c7e6c46aae49633103fafebdd196ce`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:51d0f0de3bd3db1ce8bdfce752ea02284fd85fc8bb95480a87661a5b7c0ee15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119719502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6e16f9d212c09ebede633717595a8e6b20b0aa8f26e88133c79c4162b1cfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:08:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 09:08:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:08:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:08:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 09:08:37 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 01:26:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 01:35:04 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 01:35:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 01:35:17 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 01:35:20 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 01:35:23 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 01:35:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 01:35:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 01:35:35 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 01:35:38 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aa47cceb7c8845a1f6487e6bc8095cbf5f895d61313bb97d34ecb469ed64d7`  
		Last Modified: Tue, 10 Oct 2017 09:23:41 GMT  
		Size: 4.5 KB (4508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e24faa21e50317fb91ccbcf908e9393c07086481f6e783074259c6b5de922b4`  
		Last Modified: Tue, 10 Oct 2017 09:23:40 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b4176a5fe38cb59815719b37978c104214a7dda24634c0f8f0ff50c4656386`  
		Last Modified: Tue, 10 Oct 2017 09:23:37 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab82870271443c2e15970f558b19a32b6c7e39f8161f2d2d4fa0a7941c2c58d4`  
		Last Modified: Sat, 14 Oct 2017 01:36:04 GMT  
		Size: 32.6 MB (32635589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698473f4256715cb26baf029887dffc66a9cea8b9404cf81a93a996a04a4277`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da199a852e47e7de3c477a87e93ac6765c441907718aca1d19a7fbdc3f1b87`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d592a0a2020d594975714738ece593c9e3f52f06687a204e15215dc79f71b33`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; s390x

```console
$ docker pull ghost@sha256:c0a5c0a339d20ffe7c63aa3afbab3b67d0cf46fb2560086bede95329fe621133
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121396295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd389db48905a6e6a53744bdb8d38668691cd0ed1f5aa61b4557a78f5fd948e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:12:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 25 Oct 2017 17:52:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 17:54:01 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 17:54:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 17:54:15 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 17:54:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 17:54:17 GMT
CMD ["node"]
# Wed, 25 Oct 2017 18:14:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 18:14:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:14:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 18:15:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 18:15:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 18:15:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 18:15:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 18:15:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:15:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 18:15:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:15:59 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:16:00 GMT
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
	-	`sha256:0800fa61aeb70af6b0fa6c814dbe19950a21a56e5d78ee73f92e9075e5dd5294`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b94be7023ddad69c5ecdc515bdc593a94c0563819836f232f5077005119846`  
		Last Modified: Wed, 25 Oct 2017 17:55:18 GMT  
		Size: 114.3 KB (114289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889de87ae88129a8b519b8733125b84e30df6d9c7eecdf6c8be710fb0e7ac853`  
		Last Modified: Wed, 25 Oct 2017 17:56:41 GMT  
		Size: 14.8 MB (14849719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df1bf282de1dab4d8a2047a66e80251943e714943e0797c06836832a20bb5e`  
		Last Modified: Wed, 25 Oct 2017 17:56:38 GMT  
		Size: 1.0 MB (1004167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f437245b35d94d61e8f2faf910dd2f8ec8b3b8714edf446e5cc97e59619a4e`  
		Last Modified: Wed, 25 Oct 2017 18:16:57 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0d8adf8a1f700e3ab5cf7b2144845ece904e9114dfb574f0918bc4a63b6ba`  
		Last Modified: Wed, 25 Oct 2017 18:16:58 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927030397f88d7fcb517ca40a8cdd67e782d865a4e29b97b31b07ab4ffdfc0cd`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4dd1d22c62e21e54111464e8c5e873e72ccab2874b73506204d45563f3858`  
		Last Modified: Wed, 25 Oct 2017 18:17:05 GMT  
		Size: 32.7 MB (32671667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fafdfe5df06075953df9146ad25def5e952a04196f3bdbf6bbb88399e62ef`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ac5a977b0314f8bf08e02b8cc430eab405e468113b02a3a8e0be136d4e77e`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4da2882951ec7fe15ca0ca3ee98b99b18f5879ffb4004536a05284f02502f6c`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:1123a4f3294a499626923e38bf32183a1170771a908f60be0c77ddbe952eba67
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
$ docker pull ghost@sha256:25d6f4e4af9a77ee37a61497b32df6426585cbee8ebcc1de08dbb398cd9c0111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113684283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95352853ae2403df8d6a46d1dd2ea0f3ba09a2583e288be6aeca4b581c467a05`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:55:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 15:55:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:55:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:55:27 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:55:28 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:56:45 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:56:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:56:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:56:46 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:56:47 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:56:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 15:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:56:48 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:56:48 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf821bdda113d8fff25c8377f5f88238f6b67929d1223d9744216a5874c6532f`  
		Last Modified: Wed, 25 Oct 2017 16:01:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3a1264fc75230bbda2bd2515b479f0d0f96525507b589ff8023cabc41c30cc`  
		Last Modified: Wed, 25 Oct 2017 16:01:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c39c9dc3fb87da9e00bdb5998f16a43cac9da1047b55625c4d848d1f375b05`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece572158ca20298f9e658557f878a1b88971a437db1682c67d857caad4e9c0`  
		Last Modified: Wed, 25 Oct 2017 16:01:21 GMT  
		Size: 25.5 MB (25478309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c136de7c3eb134507dff0b52bf24bc99fbebd086158b4ffa40d4a17d20c8da`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358a84cd2a7151d2b16e0e421f3dd581c5ef75c3251c0797ffc6e0ee02129ea3`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e52e82559a46652fa7d154180207b00b0078132299dd6e1c3c082bd0b86e8`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm variant v7

```console
$ docker pull ghost@sha256:641c8cf7f7e3d8777f01e81a04c6452b9ee56b09a34f90f9b2f4dbcc2a2684fa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e53568356952eff98e36ae4e714a47acb8c74db31f8b928aa49abad1ad32e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:04:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 01:04:40 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 01:04:41 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 01:07:00 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 01:07:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 01:07:46 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 01:07:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 01:07:52 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:15:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:15:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:15:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:15:55 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 11:55:30 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 11:58:49 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 11:58:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 11:58:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 11:58:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 11:58:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 11:58:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 11:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 11:58:53 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 11:58:53 GMT
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
	-	`sha256:6528d9413e295b4cbdfdef52d97a31ecc6f27162e16adb041a3396164aafe8cf`  
		Last Modified: Tue, 10 Oct 2017 01:11:23 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ebf1b2cde937401a0354e042a68692f55b75c293e2fdcb0eab8b7e75f470c7`  
		Last Modified: Tue, 10 Oct 2017 01:11:24 GMT  
		Size: 119.2 KB (119186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab22fa2d73dada96d8343da87b4a1e47dcc9dc22bfefcf33035d76bf3509743a`  
		Last Modified: Tue, 10 Oct 2017 01:13:16 GMT  
		Size: 13.9 MB (13878729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922c18112af7846914127018809be04155925e81bf20b94da29e593e2b6cc2c7`  
		Last Modified: Tue, 10 Oct 2017 01:13:11 GMT  
		Size: 997.0 KB (996970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26da0de5bef1706bde7d63fc21ee6f77895aed47ee611266a2336f3f556b54`  
		Last Modified: Tue, 10 Oct 2017 02:21:06 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b4f797ce27f755ef3e527982b719bae4f7cdee2f5cff3badf01f0a6e2d5412`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26453d9e90e233a5c904628a2a7618ec207e072bb8c6777bd64251db7e2ad955`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e98e71b7f858d1f1872baefda740fdae518e55d9ad67336d5d75784d4958ed`  
		Last Modified: Sat, 14 Oct 2017 11:59:27 GMT  
		Size: 31.8 MB (31828116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1678fe970923337cc7532b64a06c523fba9b066fc263d9f207ae32486d586afe`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97753a447225839f1991ffb27dc8b0864a64c16fc3cb90a855f11cd5923a68f`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e952a66b77adf4bd59eae85e4320b29201762e192b5ace75164c1ca25d3cb`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ffd76e35c07c617da073b1d5ea4d12213d080994785c0d984ee692809ebe445b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa734b70f9880734fd7e95d5839e5b49d58d1a66e95969ee8090b89fa3d376f`
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
# Tue, 10 Oct 2017 09:09:25 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 09:09:26 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 09:13:21 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 09:14:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 09:14:07 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 09:14:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 09:14:13 GMT
CMD ["node"]
# Tue, 10 Oct 2017 14:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 14:19:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:20:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:20:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 14:20:02 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 10:41:48 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 10:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 10:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 10:47:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 10:47:01 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 10:47:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 10:47:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 10:47:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 10:47:04 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 10:47:04 GMT
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
	-	`sha256:90fd9a72b4f3e9abaa7b746c6e7931c6fa698b81818c60b9e9513bb7d6b3b931`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 119.1 KB (119149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bf76f14b8af1461d226277ed2f1e69609a46163e8aaa462c2631ba2df2c1d9`  
		Last Modified: Tue, 10 Oct 2017 09:24:46 GMT  
		Size: 14.7 MB (14708120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cebe276352f7d60ee46b9ecdea9d770520ac047d4483984203663dd7ffa6699`  
		Last Modified: Tue, 10 Oct 2017 09:24:36 GMT  
		Size: 996.9 KB (996937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f023cad73d8356ab66b20e01b7a7917285fbd37eb2628c2dfd278f75dbd7b1`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f48acb03ca8020a754f355a6e2b4e7d21a17f90d4d41ad6fae953e4ac852d47`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b49af0472d44e11cf77bfb2b7bfea12a865001619b6984c73cf0d937c86c8a`  
		Last Modified: Tue, 10 Oct 2017 14:27:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957c190510c3de1ffed862a9e6835539e263ae8f98159e18e28a83c5ad9ff25`  
		Last Modified: Sat, 14 Oct 2017 10:47:39 GMT  
		Size: 32.2 MB (32165021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2af666b93c21c825da4c9f38e1f36d04f791d8e81b2684bf3d973be1113e0f`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71887bc2c3c138d4a95c4c798d5824b5ea59071c0e6a42ae5d83696d45297804`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c6fa88ebb33a07f989d8e6e286ff7c0c7e6c46aae49633103fafebdd196ce`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:51d0f0de3bd3db1ce8bdfce752ea02284fd85fc8bb95480a87661a5b7c0ee15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119719502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6e16f9d212c09ebede633717595a8e6b20b0aa8f26e88133c79c4162b1cfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:08:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 09:08:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:08:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:08:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 09:08:37 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 01:26:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 01:35:04 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 01:35:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 01:35:17 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 01:35:20 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 01:35:23 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 01:35:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 01:35:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 01:35:35 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 01:35:38 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aa47cceb7c8845a1f6487e6bc8095cbf5f895d61313bb97d34ecb469ed64d7`  
		Last Modified: Tue, 10 Oct 2017 09:23:41 GMT  
		Size: 4.5 KB (4508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e24faa21e50317fb91ccbcf908e9393c07086481f6e783074259c6b5de922b4`  
		Last Modified: Tue, 10 Oct 2017 09:23:40 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b4176a5fe38cb59815719b37978c104214a7dda24634c0f8f0ff50c4656386`  
		Last Modified: Tue, 10 Oct 2017 09:23:37 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab82870271443c2e15970f558b19a32b6c7e39f8161f2d2d4fa0a7941c2c58d4`  
		Last Modified: Sat, 14 Oct 2017 01:36:04 GMT  
		Size: 32.6 MB (32635589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698473f4256715cb26baf029887dffc66a9cea8b9404cf81a93a996a04a4277`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da199a852e47e7de3c477a87e93ac6765c441907718aca1d19a7fbdc3f1b87`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d592a0a2020d594975714738ece593c9e3f52f06687a204e15215dc79f71b33`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; s390x

```console
$ docker pull ghost@sha256:c0a5c0a339d20ffe7c63aa3afbab3b67d0cf46fb2560086bede95329fe621133
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121396295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd389db48905a6e6a53744bdb8d38668691cd0ed1f5aa61b4557a78f5fd948e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:12:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 25 Oct 2017 17:52:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 17:54:01 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 17:54:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 17:54:15 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 17:54:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 17:54:17 GMT
CMD ["node"]
# Wed, 25 Oct 2017 18:14:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 18:14:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:14:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 18:15:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 18:15:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 18:15:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 18:15:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 18:15:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:15:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 18:15:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:15:59 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:16:00 GMT
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
	-	`sha256:0800fa61aeb70af6b0fa6c814dbe19950a21a56e5d78ee73f92e9075e5dd5294`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b94be7023ddad69c5ecdc515bdc593a94c0563819836f232f5077005119846`  
		Last Modified: Wed, 25 Oct 2017 17:55:18 GMT  
		Size: 114.3 KB (114289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889de87ae88129a8b519b8733125b84e30df6d9c7eecdf6c8be710fb0e7ac853`  
		Last Modified: Wed, 25 Oct 2017 17:56:41 GMT  
		Size: 14.8 MB (14849719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df1bf282de1dab4d8a2047a66e80251943e714943e0797c06836832a20bb5e`  
		Last Modified: Wed, 25 Oct 2017 17:56:38 GMT  
		Size: 1.0 MB (1004167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f437245b35d94d61e8f2faf910dd2f8ec8b3b8714edf446e5cc97e59619a4e`  
		Last Modified: Wed, 25 Oct 2017 18:16:57 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0d8adf8a1f700e3ab5cf7b2144845ece904e9114dfb574f0918bc4a63b6ba`  
		Last Modified: Wed, 25 Oct 2017 18:16:58 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927030397f88d7fcb517ca40a8cdd67e782d865a4e29b97b31b07ab4ffdfc0cd`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4dd1d22c62e21e54111464e8c5e873e72ccab2874b73506204d45563f3858`  
		Last Modified: Wed, 25 Oct 2017 18:17:05 GMT  
		Size: 32.7 MB (32671667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fafdfe5df06075953df9146ad25def5e952a04196f3bdbf6bbb88399e62ef`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ac5a977b0314f8bf08e02b8cc430eab405e468113b02a3a8e0be136d4e77e`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4da2882951ec7fe15ca0ca3ee98b99b18f5879ffb4004536a05284f02502f6c`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:1123a4f3294a499626923e38bf32183a1170771a908f60be0c77ddbe952eba67
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
$ docker pull ghost@sha256:25d6f4e4af9a77ee37a61497b32df6426585cbee8ebcc1de08dbb398cd9c0111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113684283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95352853ae2403df8d6a46d1dd2ea0f3ba09a2583e288be6aeca4b581c467a05`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:55:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 15:55:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:55:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:55:27 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:55:28 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:56:45 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:56:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:56:46 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:56:46 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:56:47 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:56:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 15:56:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:56:48 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:56:48 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf821bdda113d8fff25c8377f5f88238f6b67929d1223d9744216a5874c6532f`  
		Last Modified: Wed, 25 Oct 2017 16:01:17 GMT  
		Size: 4.5 KB (4455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3a1264fc75230bbda2bd2515b479f0d0f96525507b589ff8023cabc41c30cc`  
		Last Modified: Wed, 25 Oct 2017 16:01:18 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c39c9dc3fb87da9e00bdb5998f16a43cac9da1047b55625c4d848d1f375b05`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece572158ca20298f9e658557f878a1b88971a437db1682c67d857caad4e9c0`  
		Last Modified: Wed, 25 Oct 2017 16:01:21 GMT  
		Size: 25.5 MB (25478309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c136de7c3eb134507dff0b52bf24bc99fbebd086158b4ffa40d4a17d20c8da`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358a84cd2a7151d2b16e0e421f3dd581c5ef75c3251c0797ffc6e0ee02129ea3`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e52e82559a46652fa7d154180207b00b0078132299dd6e1c3c082bd0b86e8`  
		Last Modified: Wed, 25 Oct 2017 16:01:15 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm variant v7

```console
$ docker pull ghost@sha256:641c8cf7f7e3d8777f01e81a04c6452b9ee56b09a34f90f9b2f4dbcc2a2684fa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e53568356952eff98e36ae4e714a47acb8c74db31f8b928aa49abad1ad32e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:04:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 01:04:40 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 01:04:41 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 01:07:00 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 01:07:45 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 01:07:46 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 01:07:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 01:07:52 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:15:52 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:15:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:15:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:15:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:15:55 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 11:55:30 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 11:58:49 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 11:58:50 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 11:58:51 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 11:58:51 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 11:58:52 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 11:58:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 11:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 11:58:53 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 11:58:53 GMT
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
	-	`sha256:6528d9413e295b4cbdfdef52d97a31ecc6f27162e16adb041a3396164aafe8cf`  
		Last Modified: Tue, 10 Oct 2017 01:11:23 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ebf1b2cde937401a0354e042a68692f55b75c293e2fdcb0eab8b7e75f470c7`  
		Last Modified: Tue, 10 Oct 2017 01:11:24 GMT  
		Size: 119.2 KB (119186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab22fa2d73dada96d8343da87b4a1e47dcc9dc22bfefcf33035d76bf3509743a`  
		Last Modified: Tue, 10 Oct 2017 01:13:16 GMT  
		Size: 13.9 MB (13878729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922c18112af7846914127018809be04155925e81bf20b94da29e593e2b6cc2c7`  
		Last Modified: Tue, 10 Oct 2017 01:13:11 GMT  
		Size: 997.0 KB (996970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26da0de5bef1706bde7d63fc21ee6f77895aed47ee611266a2336f3f556b54`  
		Last Modified: Tue, 10 Oct 2017 02:21:06 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b4f797ce27f755ef3e527982b719bae4f7cdee2f5cff3badf01f0a6e2d5412`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26453d9e90e233a5c904628a2a7618ec207e072bb8c6777bd64251db7e2ad955`  
		Last Modified: Tue, 10 Oct 2017 02:21:05 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e98e71b7f858d1f1872baefda740fdae518e55d9ad67336d5d75784d4958ed`  
		Last Modified: Sat, 14 Oct 2017 11:59:27 GMT  
		Size: 31.8 MB (31828116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1678fe970923337cc7532b64a06c523fba9b066fc263d9f207ae32486d586afe`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97753a447225839f1991ffb27dc8b0864a64c16fc3cb90a855f11cd5923a68f`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e952a66b77adf4bd59eae85e4320b29201762e192b5ace75164c1ca25d3cb`  
		Last Modified: Sat, 14 Oct 2017 11:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ffd76e35c07c617da073b1d5ea4d12213d080994785c0d984ee692809ebe445b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa734b70f9880734fd7e95d5839e5b49d58d1a66e95969ee8090b89fa3d376f`
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
# Tue, 10 Oct 2017 09:09:25 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 09:09:26 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 09:13:21 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 09:14:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 09:14:07 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 09:14:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 09:14:13 GMT
CMD ["node"]
# Tue, 10 Oct 2017 14:19:47 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 14:19:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:20:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:20:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 14:20:02 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 10:41:48 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 10:46:57 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 10:46:59 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 10:47:00 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 10:47:01 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 10:47:01 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 10:47:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 10:47:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 10:47:04 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 10:47:04 GMT
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
	-	`sha256:90fd9a72b4f3e9abaa7b746c6e7931c6fa698b81818c60b9e9513bb7d6b3b931`  
		Last Modified: Tue, 10 Oct 2017 09:19:48 GMT  
		Size: 119.1 KB (119149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bf76f14b8af1461d226277ed2f1e69609a46163e8aaa462c2631ba2df2c1d9`  
		Last Modified: Tue, 10 Oct 2017 09:24:46 GMT  
		Size: 14.7 MB (14708120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cebe276352f7d60ee46b9ecdea9d770520ac047d4483984203663dd7ffa6699`  
		Last Modified: Tue, 10 Oct 2017 09:24:36 GMT  
		Size: 996.9 KB (996937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f023cad73d8356ab66b20e01b7a7917285fbd37eb2628c2dfd278f75dbd7b1`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 4.5 KB (4466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f48acb03ca8020a754f355a6e2b4e7d21a17f90d4d41ad6fae953e4ac852d47`  
		Last Modified: Tue, 10 Oct 2017 14:27:38 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b49af0472d44e11cf77bfb2b7bfea12a865001619b6984c73cf0d937c86c8a`  
		Last Modified: Tue, 10 Oct 2017 14:27:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957c190510c3de1ffed862a9e6835539e263ae8f98159e18e28a83c5ad9ff25`  
		Last Modified: Sat, 14 Oct 2017 10:47:39 GMT  
		Size: 32.2 MB (32165021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2af666b93c21c825da4c9f38e1f36d04f791d8e81b2684bf3d973be1113e0f`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71887bc2c3c138d4a95c4c798d5824b5ea59071c0e6a42ae5d83696d45297804`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c6fa88ebb33a07f989d8e6e286ff7c0c7e6c46aae49633103fafebdd196ce`  
		Last Modified: Sat, 14 Oct 2017 10:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:51d0f0de3bd3db1ce8bdfce752ea02284fd85fc8bb95480a87661a5b7c0ee15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119719502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6e16f9d212c09ebede633717595a8e6b20b0aa8f26e88133c79c4162b1cfc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:08:07 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 09:08:12 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:08:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:08:32 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 09:08:37 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 01:26:33 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 01:35:04 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 01:35:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 01:35:17 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 01:35:20 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 01:35:23 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 01:35:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 01:35:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 01:35:35 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 01:35:38 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aa47cceb7c8845a1f6487e6bc8095cbf5f895d61313bb97d34ecb469ed64d7`  
		Last Modified: Tue, 10 Oct 2017 09:23:41 GMT  
		Size: 4.5 KB (4508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e24faa21e50317fb91ccbcf908e9393c07086481f6e783074259c6b5de922b4`  
		Last Modified: Tue, 10 Oct 2017 09:23:40 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b4176a5fe38cb59815719b37978c104214a7dda24634c0f8f0ff50c4656386`  
		Last Modified: Tue, 10 Oct 2017 09:23:37 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab82870271443c2e15970f558b19a32b6c7e39f8161f2d2d4fa0a7941c2c58d4`  
		Last Modified: Sat, 14 Oct 2017 01:36:04 GMT  
		Size: 32.6 MB (32635589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698473f4256715cb26baf029887dffc66a9cea8b9404cf81a93a996a04a4277`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da199a852e47e7de3c477a87e93ac6765c441907718aca1d19a7fbdc3f1b87`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d592a0a2020d594975714738ece593c9e3f52f06687a204e15215dc79f71b33`  
		Last Modified: Sat, 14 Oct 2017 01:35:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; s390x

```console
$ docker pull ghost@sha256:c0a5c0a339d20ffe7c63aa3afbab3b67d0cf46fb2560086bede95329fe621133
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121396295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd389db48905a6e6a53744bdb8d38668691cd0ed1f5aa61b4557a78f5fd948e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:12:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 25 Oct 2017 17:52:54 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 17:54:01 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 17:54:15 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 17:54:15 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 17:54:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 17:54:17 GMT
CMD ["node"]
# Wed, 25 Oct 2017 18:14:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 25 Oct 2017 18:14:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:14:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 18:14:15 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 18:15:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 18:15:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 18:15:57 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 18:15:57 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 18:15:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:15:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 25 Oct 2017 18:15:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:15:59 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:16:00 GMT
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
	-	`sha256:0800fa61aeb70af6b0fa6c814dbe19950a21a56e5d78ee73f92e9075e5dd5294`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b94be7023ddad69c5ecdc515bdc593a94c0563819836f232f5077005119846`  
		Last Modified: Wed, 25 Oct 2017 17:55:18 GMT  
		Size: 114.3 KB (114289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889de87ae88129a8b519b8733125b84e30df6d9c7eecdf6c8be710fb0e7ac853`  
		Last Modified: Wed, 25 Oct 2017 17:56:41 GMT  
		Size: 14.8 MB (14849719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df1bf282de1dab4d8a2047a66e80251943e714943e0797c06836832a20bb5e`  
		Last Modified: Wed, 25 Oct 2017 17:56:38 GMT  
		Size: 1.0 MB (1004167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f437245b35d94d61e8f2faf910dd2f8ec8b3b8714edf446e5cc97e59619a4e`  
		Last Modified: Wed, 25 Oct 2017 18:16:57 GMT  
		Size: 4.5 KB (4463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0d8adf8a1f700e3ab5cf7b2144845ece904e9114dfb574f0918bc4a63b6ba`  
		Last Modified: Wed, 25 Oct 2017 18:16:58 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927030397f88d7fcb517ca40a8cdd67e782d865a4e29b97b31b07ab4ffdfc0cd`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4dd1d22c62e21e54111464e8c5e873e72ccab2874b73506204d45563f3858`  
		Last Modified: Wed, 25 Oct 2017 18:17:05 GMT  
		Size: 32.7 MB (32671667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fafdfe5df06075953df9146ad25def5e952a04196f3bdbf6bbb88399e62ef`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ac5a977b0314f8bf08e02b8cc430eab405e468113b02a3a8e0be136d4e77e`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4da2882951ec7fe15ca0ca3ee98b99b18f5879ffb4004536a05284f02502f6c`  
		Last Modified: Wed, 25 Oct 2017 18:16:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:67132f15e4b3bc7aaf989e325668d6f04e8d8f7d89406e3f06266e9d038e0ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1d14c12d57195d62af0b5d42c6b10b69de43952e74ac1ffbf3086327f4ea2d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45809526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a474fc5a521d872c2beeb7bb08bd63b014a7327f895dffedcb2866d828a0920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:57:08 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:57:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:57:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:57:55 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:57:55 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:57:55 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:57:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5003e49486375c56bd3fd37da3c9a904d1da6b48632528f042a650d91e90549`  
		Last Modified: Wed, 25 Oct 2017 16:01:51 GMT  
		Size: 1.4 MB (1353551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe3f32f14c3fa5772a37e8d0e99734de11d3042f565ba54c7436da917c12ab0`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f00bab172efcc7e24a9a4950f57d5c42e9b4f2b05d701e566cf7d458fc95b7e`  
		Last Modified: Wed, 25 Oct 2017 16:01:56 GMT  
		Size: 25.2 MB (25230333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d701ace7f0d64d631e7126c0e8b875453c4389688cbc0bcb0ac27ac60202802`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490106b451723b689847acd6fdad6863bb9e8f86b7ff059fd4ed3b23f8397989`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:67132f15e4b3bc7aaf989e325668d6f04e8d8f7d89406e3f06266e9d038e0ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1d14c12d57195d62af0b5d42c6b10b69de43952e74ac1ffbf3086327f4ea2d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45809526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a474fc5a521d872c2beeb7bb08bd63b014a7327f895dffedcb2866d828a0920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:57:08 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:57:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:57:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:57:55 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:57:55 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:57:55 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:57:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5003e49486375c56bd3fd37da3c9a904d1da6b48632528f042a650d91e90549`  
		Last Modified: Wed, 25 Oct 2017 16:01:51 GMT  
		Size: 1.4 MB (1353551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe3f32f14c3fa5772a37e8d0e99734de11d3042f565ba54c7436da917c12ab0`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f00bab172efcc7e24a9a4950f57d5c42e9b4f2b05d701e566cf7d458fc95b7e`  
		Last Modified: Wed, 25 Oct 2017 16:01:56 GMT  
		Size: 25.2 MB (25230333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d701ace7f0d64d631e7126c0e8b875453c4389688cbc0bcb0ac27ac60202802`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490106b451723b689847acd6fdad6863bb9e8f86b7ff059fd4ed3b23f8397989`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:67132f15e4b3bc7aaf989e325668d6f04e8d8f7d89406e3f06266e9d038e0ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:1d14c12d57195d62af0b5d42c6b10b69de43952e74ac1ffbf3086327f4ea2d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45809526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a474fc5a521d872c2beeb7bb08bd63b014a7327f895dffedcb2866d828a0920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:57:08 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
WORKDIR /usr/src/ghost
# Wed, 25 Oct 2017 15:57:09 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 25 Oct 2017 15:57:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 25 Oct 2017 15:57:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 25 Oct 2017 15:57:54 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 25 Oct 2017 15:57:55 GMT
VOLUME [/var/lib/ghost]
# Wed, 25 Oct 2017 15:57:55 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 25 Oct 2017 15:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:57:55 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 15:57:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5003e49486375c56bd3fd37da3c9a904d1da6b48632528f042a650d91e90549`  
		Last Modified: Wed, 25 Oct 2017 16:01:51 GMT  
		Size: 1.4 MB (1353551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe3f32f14c3fa5772a37e8d0e99734de11d3042f565ba54c7436da917c12ab0`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f00bab172efcc7e24a9a4950f57d5c42e9b4f2b05d701e566cf7d458fc95b7e`  
		Last Modified: Wed, 25 Oct 2017 16:01:56 GMT  
		Size: 25.2 MB (25230333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d701ace7f0d64d631e7126c0e8b875453c4389688cbc0bcb0ac27ac60202802`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490106b451723b689847acd6fdad6863bb9e8f86b7ff059fd4ed3b23f8397989`  
		Last Modified: Wed, 25 Oct 2017 16:01:50 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:f9a657f38e06810dbeadff207bc6f476e5df17e9bbd34e24429087f5a35880e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:da111eb981f1229bf35834bff829145f41a94a2fa4fb3dbc8df3645a3dfa13eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221650956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe9f648abbb4567dea1fcbe7c952c4083ebba5523e4780b6b52c5ed2f3da2ed`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:51:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:51:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:52:00 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:39:32 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:40:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:40:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:47:40 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:47:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Oct 2017 18:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:47:41 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:47:41 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a83447312767b81293d58c2798a762886da1c67ab2e9d6f80c8c8711235ed06`  
		Last Modified: Wed, 25 Oct 2017 15:58:14 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9ea050f27cdab5b683f71d769fc37dd0ab1dce7478ba5a55929e937d68d695`  
		Last Modified: Wed, 25 Oct 2017 18:50:51 GMT  
		Size: 39.5 MB (39531658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063e99440288405d4a381a6730e2e0d6582e6e086d9b0c8549e9fadcf483cc7`  
		Last Modified: Wed, 25 Oct 2017 18:51:15 GMT  
		Size: 93.9 MB (93918308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678bc570eb0494253474728fff3dc0f207bc397a13bb0b820acc226117d7c338`  
		Last Modified: Wed, 25 Oct 2017 18:50:09 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:0098ca1a60cea9a7be577d2d836e34b72d92b6b42ea50253f44eeb99f9759480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205366122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d0dca20788a2240872cc810d8d0afbb56f5f9412c78edf8e67c709c7bcc52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:03:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:03:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:03:31 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 09:03:37 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 01:26:33 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 01:26:29 GMT
ENV GHOST_VERSION=1.15.1
# Thu, 26 Oct 2017 01:28:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 01:28:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 01:28:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 01:31:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 01:31:24 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 01:31:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 01:31:32 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 01:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 01:31:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 01:32:18 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2aa84182c21aba5dcf6e3fb2994861791566edb6b82552b389bf26287d5a4`  
		Last Modified: Tue, 10 Oct 2017 09:22:48 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f4241f7d87716749f5944bccdda9097b611d4ecd77c51395ac7d4bafad381`  
		Last Modified: Thu, 26 Oct 2017 01:33:10 GMT  
		Size: 29.1 MB (29131501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2f9291bfd7b940b101f7f60a803292464fee702829f5e2c11c926dd0368143`  
		Last Modified: Thu, 26 Oct 2017 01:33:30 GMT  
		Size: 89.2 MB (89155813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43638d26ff6ce9f4027246bebf8df73e2a90129e517af1d6149e3cc5cdd3f90`  
		Last Modified: Thu, 26 Oct 2017 01:33:01 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.15`

```console
$ docker pull ghost@sha256:f9a657f38e06810dbeadff207bc6f476e5df17e9bbd34e24429087f5a35880e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1.15` - linux; amd64

```console
$ docker pull ghost@sha256:da111eb981f1229bf35834bff829145f41a94a2fa4fb3dbc8df3645a3dfa13eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221650956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe9f648abbb4567dea1fcbe7c952c4083ebba5523e4780b6b52c5ed2f3da2ed`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:51:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:51:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:52:00 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:39:32 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:40:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:40:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:47:40 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:47:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Oct 2017 18:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:47:41 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:47:41 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a83447312767b81293d58c2798a762886da1c67ab2e9d6f80c8c8711235ed06`  
		Last Modified: Wed, 25 Oct 2017 15:58:14 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9ea050f27cdab5b683f71d769fc37dd0ab1dce7478ba5a55929e937d68d695`  
		Last Modified: Wed, 25 Oct 2017 18:50:51 GMT  
		Size: 39.5 MB (39531658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063e99440288405d4a381a6730e2e0d6582e6e086d9b0c8549e9fadcf483cc7`  
		Last Modified: Wed, 25 Oct 2017 18:51:15 GMT  
		Size: 93.9 MB (93918308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678bc570eb0494253474728fff3dc0f207bc397a13bb0b820acc226117d7c338`  
		Last Modified: Wed, 25 Oct 2017 18:50:09 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.15` - linux; ppc64le

```console
$ docker pull ghost@sha256:0098ca1a60cea9a7be577d2d836e34b72d92b6b42ea50253f44eeb99f9759480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205366122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d0dca20788a2240872cc810d8d0afbb56f5f9412c78edf8e67c709c7bcc52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:03:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:03:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:03:31 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 09:03:37 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 01:26:33 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 01:26:29 GMT
ENV GHOST_VERSION=1.15.1
# Thu, 26 Oct 2017 01:28:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 01:28:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 01:28:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 01:31:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 01:31:24 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 01:31:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 01:31:32 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 01:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 01:31:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 01:32:18 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2aa84182c21aba5dcf6e3fb2994861791566edb6b82552b389bf26287d5a4`  
		Last Modified: Tue, 10 Oct 2017 09:22:48 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f4241f7d87716749f5944bccdda9097b611d4ecd77c51395ac7d4bafad381`  
		Last Modified: Thu, 26 Oct 2017 01:33:10 GMT  
		Size: 29.1 MB (29131501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2f9291bfd7b940b101f7f60a803292464fee702829f5e2c11c926dd0368143`  
		Last Modified: Thu, 26 Oct 2017 01:33:30 GMT  
		Size: 89.2 MB (89155813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43638d26ff6ce9f4027246bebf8df73e2a90129e517af1d6149e3cc5cdd3f90`  
		Last Modified: Thu, 26 Oct 2017 01:33:01 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.15.1`

```console
$ docker pull ghost@sha256:f9a657f38e06810dbeadff207bc6f476e5df17e9bbd34e24429087f5a35880e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:1.15.1` - linux; amd64

```console
$ docker pull ghost@sha256:da111eb981f1229bf35834bff829145f41a94a2fa4fb3dbc8df3645a3dfa13eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221650956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe9f648abbb4567dea1fcbe7c952c4083ebba5523e4780b6b52c5ed2f3da2ed`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:51:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:51:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:52:00 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:39:32 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:40:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:40:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:47:40 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:47:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Oct 2017 18:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:47:41 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:47:41 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a83447312767b81293d58c2798a762886da1c67ab2e9d6f80c8c8711235ed06`  
		Last Modified: Wed, 25 Oct 2017 15:58:14 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9ea050f27cdab5b683f71d769fc37dd0ab1dce7478ba5a55929e937d68d695`  
		Last Modified: Wed, 25 Oct 2017 18:50:51 GMT  
		Size: 39.5 MB (39531658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063e99440288405d4a381a6730e2e0d6582e6e086d9b0c8549e9fadcf483cc7`  
		Last Modified: Wed, 25 Oct 2017 18:51:15 GMT  
		Size: 93.9 MB (93918308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678bc570eb0494253474728fff3dc0f207bc397a13bb0b820acc226117d7c338`  
		Last Modified: Wed, 25 Oct 2017 18:50:09 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.15.1` - linux; ppc64le

```console
$ docker pull ghost@sha256:0098ca1a60cea9a7be577d2d836e34b72d92b6b42ea50253f44eeb99f9759480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205366122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d0dca20788a2240872cc810d8d0afbb56f5f9412c78edf8e67c709c7bcc52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:03:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:03:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:03:31 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 09:03:37 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 01:26:33 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 01:26:29 GMT
ENV GHOST_VERSION=1.15.1
# Thu, 26 Oct 2017 01:28:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 01:28:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 01:28:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 01:31:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 01:31:24 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 01:31:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 01:31:32 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 01:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 01:31:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 01:32:18 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2aa84182c21aba5dcf6e3fb2994861791566edb6b82552b389bf26287d5a4`  
		Last Modified: Tue, 10 Oct 2017 09:22:48 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f4241f7d87716749f5944bccdda9097b611d4ecd77c51395ac7d4bafad381`  
		Last Modified: Thu, 26 Oct 2017 01:33:10 GMT  
		Size: 29.1 MB (29131501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2f9291bfd7b940b101f7f60a803292464fee702829f5e2c11c926dd0368143`  
		Last Modified: Thu, 26 Oct 2017 01:33:30 GMT  
		Size: 89.2 MB (89155813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43638d26ff6ce9f4027246bebf8df73e2a90129e517af1d6149e3cc5cdd3f90`  
		Last Modified: Thu, 26 Oct 2017 01:33:01 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.15.1-alpine`

```console
$ docker pull ghost@sha256:cdef8cfa5509e9dc44c1644fbf08c2ab3a9aa6bf3f9bddf546746815fff8bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.15.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:67d69e9eff9fe40237708a9b6174abc5911c2bb9f8eba8228b0573d53e7a7b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153788702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8896ec053c713835fd2357763266f7e42b2c9b96f779895bc0f5e972f667bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:53:48 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:53:53 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:48:09 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:48:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:49:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:49:39 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:49:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:49:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Oct 2017 18:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:49:45 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:49:45 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d2e411961354e08af0976507f94b054e1434c6ba4fdecb5c8fc966c8b5ff76`  
		Last Modified: Wed, 25 Oct 2017 15:59:55 GMT  
		Size: 1.1 MB (1112374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14a21f1283754f332a93938b6a7c7d47a32df66322e4f570377fdd1937256c`  
		Last Modified: Wed, 25 Oct 2017 18:58:16 GMT  
		Size: 39.5 MB (39531791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac7db30d265ced0ff10097c5047e824690c0597777bab532d6bdf5c797735fe`  
		Last Modified: Wed, 25 Oct 2017 18:58:37 GMT  
		Size: 93.9 MB (93919303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be52b483006e40bd3fc7ccc6539704a65b6f4b4e845aa6e639e7ab4a09c837e`  
		Last Modified: Wed, 25 Oct 2017 18:57:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.15-alpine`

```console
$ docker pull ghost@sha256:cdef8cfa5509e9dc44c1644fbf08c2ab3a9aa6bf3f9bddf546746815fff8bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.15-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:67d69e9eff9fe40237708a9b6174abc5911c2bb9f8eba8228b0573d53e7a7b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153788702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8896ec053c713835fd2357763266f7e42b2c9b96f779895bc0f5e972f667bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:53:48 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:53:53 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:48:09 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:48:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:49:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:49:39 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:49:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:49:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Oct 2017 18:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:49:45 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:49:45 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d2e411961354e08af0976507f94b054e1434c6ba4fdecb5c8fc966c8b5ff76`  
		Last Modified: Wed, 25 Oct 2017 15:59:55 GMT  
		Size: 1.1 MB (1112374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14a21f1283754f332a93938b6a7c7d47a32df66322e4f570377fdd1937256c`  
		Last Modified: Wed, 25 Oct 2017 18:58:16 GMT  
		Size: 39.5 MB (39531791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac7db30d265ced0ff10097c5047e824690c0597777bab532d6bdf5c797735fe`  
		Last Modified: Wed, 25 Oct 2017 18:58:37 GMT  
		Size: 93.9 MB (93919303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be52b483006e40bd3fc7ccc6539704a65b6f4b4e845aa6e639e7ab4a09c837e`  
		Last Modified: Wed, 25 Oct 2017 18:57:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:cdef8cfa5509e9dc44c1644fbf08c2ab3a9aa6bf3f9bddf546746815fff8bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:67d69e9eff9fe40237708a9b6174abc5911c2bb9f8eba8228b0573d53e7a7b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153788702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8896ec053c713835fd2357763266f7e42b2c9b96f779895bc0f5e972f667bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:53:48 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:53:53 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:48:09 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:48:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:49:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:49:39 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:49:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:49:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Oct 2017 18:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:49:45 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:49:45 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d2e411961354e08af0976507f94b054e1434c6ba4fdecb5c8fc966c8b5ff76`  
		Last Modified: Wed, 25 Oct 2017 15:59:55 GMT  
		Size: 1.1 MB (1112374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14a21f1283754f332a93938b6a7c7d47a32df66322e4f570377fdd1937256c`  
		Last Modified: Wed, 25 Oct 2017 18:58:16 GMT  
		Size: 39.5 MB (39531791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac7db30d265ced0ff10097c5047e824690c0597777bab532d6bdf5c797735fe`  
		Last Modified: Wed, 25 Oct 2017 18:58:37 GMT  
		Size: 93.9 MB (93919303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be52b483006e40bd3fc7ccc6539704a65b6f4b4e845aa6e639e7ab4a09c837e`  
		Last Modified: Wed, 25 Oct 2017 18:57:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:cdef8cfa5509e9dc44c1644fbf08c2ab3a9aa6bf3f9bddf546746815fff8bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:67d69e9eff9fe40237708a9b6174abc5911c2bb9f8eba8228b0573d53e7a7b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153788702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8896ec053c713835fd2357763266f7e42b2c9b96f779895bc0f5e972f667bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:53:48 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:53:53 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:48:09 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:48:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:49:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:49:39 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:49:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:49:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Oct 2017 18:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:49:45 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:49:45 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d2e411961354e08af0976507f94b054e1434c6ba4fdecb5c8fc966c8b5ff76`  
		Last Modified: Wed, 25 Oct 2017 15:59:55 GMT  
		Size: 1.1 MB (1112374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14a21f1283754f332a93938b6a7c7d47a32df66322e4f570377fdd1937256c`  
		Last Modified: Wed, 25 Oct 2017 18:58:16 GMT  
		Size: 39.5 MB (39531791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac7db30d265ced0ff10097c5047e824690c0597777bab532d6bdf5c797735fe`  
		Last Modified: Wed, 25 Oct 2017 18:58:37 GMT  
		Size: 93.9 MB (93919303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be52b483006e40bd3fc7ccc6539704a65b6f4b4e845aa6e639e7ab4a09c837e`  
		Last Modified: Wed, 25 Oct 2017 18:57:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:f9a657f38e06810dbeadff207bc6f476e5df17e9bbd34e24429087f5a35880e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:da111eb981f1229bf35834bff829145f41a94a2fa4fb3dbc8df3645a3dfa13eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221650956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe9f648abbb4567dea1fcbe7c952c4083ebba5523e4780b6b52c5ed2f3da2ed`
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
# Wed, 25 Oct 2017 14:44:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:07:41 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:08:06 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:08:06 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:08:10 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:08:10 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:51:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:51:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:52:00 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:52:00 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:39:32 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:40:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:40:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:40:57 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:47:40 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:47:40 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:47:40 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 25 Oct 2017 18:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:47:41 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:47:41 GMT
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
	-	`sha256:11322fddcb26d8f90dc1865e1a88b1d74046bd7623a6ccc30ec550cbfcbf85e9`  
		Last Modified: Wed, 25 Oct 2017 15:26:02 GMT  
		Size: 114.3 KB (114301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9c7d88a4312f350128ee50bd32640beab2610f6b5c380bdbf71bb0408929bd`  
		Last Modified: Wed, 25 Oct 2017 15:30:11 GMT  
		Size: 14.7 MB (14717829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351aa1eca715e33313efdff752dad6439ae327b92b4ec7ffe61a190443391f3e`  
		Last Modified: Wed, 25 Oct 2017 15:30:06 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a83447312767b81293d58c2798a762886da1c67ab2e9d6f80c8c8711235ed06`  
		Last Modified: Wed, 25 Oct 2017 15:58:14 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9ea050f27cdab5b683f71d769fc37dd0ab1dce7478ba5a55929e937d68d695`  
		Last Modified: Wed, 25 Oct 2017 18:50:51 GMT  
		Size: 39.5 MB (39531658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063e99440288405d4a381a6730e2e0d6582e6e086d9b0c8549e9fadcf483cc7`  
		Last Modified: Wed, 25 Oct 2017 18:51:15 GMT  
		Size: 93.9 MB (93918308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678bc570eb0494253474728fff3dc0f207bc397a13bb0b820acc226117d7c338`  
		Last Modified: Wed, 25 Oct 2017 18:50:09 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:0098ca1a60cea9a7be577d2d836e34b72d92b6b42ea50253f44eeb99f9759480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205366122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d0dca20788a2240872cc810d8d0afbb56f5f9412c78edf8e67c709c7bcc52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:37:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 08:37:14 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 08:37:19 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 08:40:31 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 08:41:11 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 08:41:17 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 08:41:26 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 08:41:28 GMT
CMD ["node"]
# Tue, 10 Oct 2017 09:03:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 09:03:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 09:03:31 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 09:03:37 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 01:26:33 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 01:26:29 GMT
ENV GHOST_VERSION=1.15.1
# Thu, 26 Oct 2017 01:28:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 01:28:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 01:28:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 01:31:16 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 01:31:24 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 01:31:28 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 01:31:32 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 01:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 01:31:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 01:32:18 GMT
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
	-	`sha256:85db7c4f10f10f9469c3c70c402eca63ea704c5e0e64b33c8cea091a32c6c055`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 4.4 KB (4448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa105fe97f32bc536313b72bfde170d271b7830f70fef0d8b47e817fc533be6`  
		Last Modified: Tue, 10 Oct 2017 08:45:45 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd8b40a3817b326523edcd96709e9ea5dccfad40e5a82c1720e1a6c6aed572a`  
		Last Modified: Tue, 10 Oct 2017 08:46:51 GMT  
		Size: 14.5 MB (14477021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5147d23f85775bbf70c7ac219105c046ee94d9357ded07f26772a97076e90`  
		Last Modified: Tue, 10 Oct 2017 08:46:47 GMT  
		Size: 997.0 KB (996973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2aa84182c21aba5dcf6e3fb2994861791566edb6b82552b389bf26287d5a4`  
		Last Modified: Tue, 10 Oct 2017 09:22:48 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f4241f7d87716749f5944bccdda9097b611d4ecd77c51395ac7d4bafad381`  
		Last Modified: Thu, 26 Oct 2017 01:33:10 GMT  
		Size: 29.1 MB (29131501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2f9291bfd7b940b101f7f60a803292464fee702829f5e2c11c926dd0368143`  
		Last Modified: Thu, 26 Oct 2017 01:33:30 GMT  
		Size: 89.2 MB (89155813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43638d26ff6ce9f4027246bebf8df73e2a90129e517af1d6149e3cc5cdd3f90`  
		Last Modified: Thu, 26 Oct 2017 01:33:01 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
