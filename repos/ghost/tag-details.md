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
-	[`ghost:1.16.0`](#ghost1160)
-	[`ghost:1.16.0-alpine`](#ghost1160-alpine)
-	[`ghost:1.16-alpine`](#ghost116-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:e0cd54b4b4037f93fe8fc974ccc2fee5fd2e3297c8e4499b4a5c39aa81b0f281
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
$ docker pull ghost@sha256:09084aa9b2f32a60604c50a5178293a5e879452d2affdcccc411477c397a4237
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114258999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f5c371facdd4670f4be135d4e82cf32a20fb4a9e358675daa93869d7ce135b`
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
# Thu, 26 Oct 2017 04:55:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:56:48 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:57:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:57:27 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:57:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:57:29 GMT
CMD ["node"]
# Thu, 26 Oct 2017 05:24:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 05:24:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 05:24:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 05:27:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 05:27:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 05:27:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 05:27:56 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 05:27:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:27:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:27:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 05:28:00 GMT
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
	-	`sha256:d6ad8f330b804e55a01b50d6b950ceee1459af538a2729c5fe5992cd969da228`  
		Last Modified: Thu, 26 Oct 2017 05:00:41 GMT  
		Size: 114.3 KB (114328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d97c1c3499007abf72f98b00c16951c2c5d706309b9fdfcb2482848f3db8f6`  
		Last Modified: Thu, 26 Oct 2017 05:03:09 GMT  
		Size: 13.9 MB (13878366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febb5041872b9c89f38ff8489430ecebcae549a0cfcecdee1b885b497a20bbd7`  
		Last Modified: Thu, 26 Oct 2017 05:03:04 GMT  
		Size: 1.0 MB (1004191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6412bf0dc847fd5b22ea271519ad89004e6013f11ca655447eac309a1838ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88455fa9a605c3ce8706cebe15269258ebedb84c15144882bf819350a70055`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e977f9ae0eac7117a680e80eabdf9b0f1b1e5eace8f4aa5fd49e3d74d5ece16`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58805e8fd325d837ba07ae59d789583083a68fa7f941541264f4cdd924b550f6`  
		Last Modified: Thu, 26 Oct 2017 05:29:34 GMT  
		Size: 31.8 MB (31827733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e323803b67cf5cf2072c66180480a4fb85d6412b82ed5c729aced0ac076f5ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7cad8c01bb49fa675229c15219ee50346269da78219c91703d508abd69188a`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e5dfa7153ec975709c54b55a15e93f924b9a1e79a3f95da6861acbc173084f`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3f0e262fbf25fbae42bf18dca180dff0047b38c76f4a88469ad50257fc0aafcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dc85c903939b372ef3b06a28cfc802e907af86ffe40f96a8ae010542852bf9`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:32:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 15:32:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:32:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:32:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 15:37:35 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 15:37:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 15:37:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 15:37:41 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 15:37:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:37:44 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 15:37:45 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a809e518b6fe28a1f1f20f4285426bf97fc031536e75f8d75c16a2cc2479128`  
		Last Modified: Thu, 26 Oct 2017 15:40:03 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b54d129643be1761d55f472d370d4587b96cebd028315fc3401e13bd553dc`  
		Last Modified: Thu, 26 Oct 2017 15:40:04 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d379116059e7f766d81b565520b6fc1418f0292191dba915806cae85afd4e875`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282adf5611f07630c952a31ace282a0343ef74eaf729fa1793cb33655875abc2`  
		Last Modified: Thu, 26 Oct 2017 15:40:17 GMT  
		Size: 32.2 MB (32165012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232215cc9b66ec2c9a2848b3bdb5ec71f6a99a05f3792c32275c2ca30069b964`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dc60d0b99cc317027f773b116d61d3b65f560296ad1c84e28edc6fa3848bda`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36aaf66a6fc82aecbd2106e465df3468ce11c00a1697f9f8894460c6c2bb070b`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0` - linux; ppc64le

```console
$ docker pull ghost@sha256:995fdae53ac61382d0917629aecdadc4fccf80704cc41d80cdc5b37b6df97ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119721241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a6bb817691d55f1718d773519738427a8304275e2f97afa2276967e90adeb7`
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
# Thu, 26 Oct 2017 04:13:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:15:54 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:16:26 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:16:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:16:34 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:44:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 04:44:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 04:44:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 04:44:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:44:23 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:44:25 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:49:05 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:49:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:49:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:49:13 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:49:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:49:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 04:49:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:49:24 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:49:26 GMT
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
	-	`sha256:45b06d2b28ddcb851655e4e339cf06468a4e503f58e3e29a730937f331c634a9`  
		Last Modified: Thu, 26 Oct 2017 04:20:48 GMT  
		Size: 114.3 KB (114326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30baf3857d39713c6a37f982b05ace36212561e75fecbab1896a65e6e9c9d6`  
		Last Modified: Thu, 26 Oct 2017 04:22:54 GMT  
		Size: 14.5 MB (14476861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c9bf2681258bac766da77eb380745e0fb61026466659c15fe8f6d312699e2`  
		Last Modified: Thu, 26 Oct 2017 04:22:50 GMT  
		Size: 1.0 MB (1004190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec75c1ff0f1697913e4cc2842dab5f25b5648b600c69e6109b06d5e510ee35e`  
		Last Modified: Thu, 26 Oct 2017 04:51:14 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f7084858ca9b7cd31f8e6621604f483cd6e19c10e9176cfc01cdfe3ca2507f`  
		Last Modified: Thu, 26 Oct 2017 04:51:15 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b14edac0549a4f738d67b73bf85bd485df64c91c10740682b3bade6a40048f`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a87c69934a18aca5900c2e37731219e246bed4e79f62a38db933fd3517c24a6`  
		Last Modified: Thu, 26 Oct 2017 04:51:27 GMT  
		Size: 32.6 MB (32635139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c89ea8548504546ca81980183977a322be4c48d6549595d376a6337d7c11c0`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedd68ea74b62b75b4fe9b05c789d3992579622c9ef45c448cf522028486df36`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b997ada1b85d94176a4203034a7f58c15965a8c25354cdfbb38b18a1d3e09269`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
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
$ docker pull ghost@sha256:e0cd54b4b4037f93fe8fc974ccc2fee5fd2e3297c8e4499b4a5c39aa81b0f281
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
$ docker pull ghost@sha256:09084aa9b2f32a60604c50a5178293a5e879452d2affdcccc411477c397a4237
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114258999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f5c371facdd4670f4be135d4e82cf32a20fb4a9e358675daa93869d7ce135b`
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
# Thu, 26 Oct 2017 04:55:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:56:48 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:57:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:57:27 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:57:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:57:29 GMT
CMD ["node"]
# Thu, 26 Oct 2017 05:24:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 05:24:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 05:24:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 05:27:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 05:27:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 05:27:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 05:27:56 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 05:27:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:27:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:27:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 05:28:00 GMT
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
	-	`sha256:d6ad8f330b804e55a01b50d6b950ceee1459af538a2729c5fe5992cd969da228`  
		Last Modified: Thu, 26 Oct 2017 05:00:41 GMT  
		Size: 114.3 KB (114328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d97c1c3499007abf72f98b00c16951c2c5d706309b9fdfcb2482848f3db8f6`  
		Last Modified: Thu, 26 Oct 2017 05:03:09 GMT  
		Size: 13.9 MB (13878366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febb5041872b9c89f38ff8489430ecebcae549a0cfcecdee1b885b497a20bbd7`  
		Last Modified: Thu, 26 Oct 2017 05:03:04 GMT  
		Size: 1.0 MB (1004191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6412bf0dc847fd5b22ea271519ad89004e6013f11ca655447eac309a1838ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88455fa9a605c3ce8706cebe15269258ebedb84c15144882bf819350a70055`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e977f9ae0eac7117a680e80eabdf9b0f1b1e5eace8f4aa5fd49e3d74d5ece16`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58805e8fd325d837ba07ae59d789583083a68fa7f941541264f4cdd924b550f6`  
		Last Modified: Thu, 26 Oct 2017 05:29:34 GMT  
		Size: 31.8 MB (31827733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e323803b67cf5cf2072c66180480a4fb85d6412b82ed5c729aced0ac076f5ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7cad8c01bb49fa675229c15219ee50346269da78219c91703d508abd69188a`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e5dfa7153ec975709c54b55a15e93f924b9a1e79a3f95da6861acbc173084f`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3f0e262fbf25fbae42bf18dca180dff0047b38c76f4a88469ad50257fc0aafcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dc85c903939b372ef3b06a28cfc802e907af86ffe40f96a8ae010542852bf9`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:32:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 15:32:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:32:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:32:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 15:37:35 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 15:37:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 15:37:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 15:37:41 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 15:37:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:37:44 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 15:37:45 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a809e518b6fe28a1f1f20f4285426bf97fc031536e75f8d75c16a2cc2479128`  
		Last Modified: Thu, 26 Oct 2017 15:40:03 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b54d129643be1761d55f472d370d4587b96cebd028315fc3401e13bd553dc`  
		Last Modified: Thu, 26 Oct 2017 15:40:04 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d379116059e7f766d81b565520b6fc1418f0292191dba915806cae85afd4e875`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282adf5611f07630c952a31ace282a0343ef74eaf729fa1793cb33655875abc2`  
		Last Modified: Thu, 26 Oct 2017 15:40:17 GMT  
		Size: 32.2 MB (32165012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232215cc9b66ec2c9a2848b3bdb5ec71f6a99a05f3792c32275c2ca30069b964`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dc60d0b99cc317027f773b116d61d3b65f560296ad1c84e28edc6fa3848bda`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36aaf66a6fc82aecbd2106e465df3468ce11c00a1697f9f8894460c6c2bb070b`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11` - linux; ppc64le

```console
$ docker pull ghost@sha256:995fdae53ac61382d0917629aecdadc4fccf80704cc41d80cdc5b37b6df97ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119721241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a6bb817691d55f1718d773519738427a8304275e2f97afa2276967e90adeb7`
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
# Thu, 26 Oct 2017 04:13:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:15:54 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:16:26 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:16:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:16:34 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:44:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 04:44:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 04:44:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 04:44:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:44:23 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:44:25 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:49:05 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:49:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:49:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:49:13 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:49:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:49:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 04:49:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:49:24 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:49:26 GMT
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
	-	`sha256:45b06d2b28ddcb851655e4e339cf06468a4e503f58e3e29a730937f331c634a9`  
		Last Modified: Thu, 26 Oct 2017 04:20:48 GMT  
		Size: 114.3 KB (114326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30baf3857d39713c6a37f982b05ace36212561e75fecbab1896a65e6e9c9d6`  
		Last Modified: Thu, 26 Oct 2017 04:22:54 GMT  
		Size: 14.5 MB (14476861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c9bf2681258bac766da77eb380745e0fb61026466659c15fe8f6d312699e2`  
		Last Modified: Thu, 26 Oct 2017 04:22:50 GMT  
		Size: 1.0 MB (1004190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec75c1ff0f1697913e4cc2842dab5f25b5648b600c69e6109b06d5e510ee35e`  
		Last Modified: Thu, 26 Oct 2017 04:51:14 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f7084858ca9b7cd31f8e6621604f483cd6e19c10e9176cfc01cdfe3ca2507f`  
		Last Modified: Thu, 26 Oct 2017 04:51:15 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b14edac0549a4f738d67b73bf85bd485df64c91c10740682b3bade6a40048f`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a87c69934a18aca5900c2e37731219e246bed4e79f62a38db933fd3517c24a6`  
		Last Modified: Thu, 26 Oct 2017 04:51:27 GMT  
		Size: 32.6 MB (32635139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c89ea8548504546ca81980183977a322be4c48d6549595d376a6337d7c11c0`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedd68ea74b62b75b4fe9b05c789d3992579622c9ef45c448cf522028486df36`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b997ada1b85d94176a4203034a7f58c15965a8c25354cdfbb38b18a1d3e09269`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
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
$ docker pull ghost@sha256:e0cd54b4b4037f93fe8fc974ccc2fee5fd2e3297c8e4499b4a5c39aa81b0f281
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
$ docker pull ghost@sha256:09084aa9b2f32a60604c50a5178293a5e879452d2affdcccc411477c397a4237
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114258999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f5c371facdd4670f4be135d4e82cf32a20fb4a9e358675daa93869d7ce135b`
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
# Thu, 26 Oct 2017 04:55:08 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:56:48 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:57:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:57:27 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:57:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:57:29 GMT
CMD ["node"]
# Thu, 26 Oct 2017 05:24:33 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 05:24:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 05:24:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 05:24:36 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 05:27:54 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 05:27:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 05:27:56 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 05:27:56 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 05:27:57 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:27:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:27:59 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 05:28:00 GMT
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
	-	`sha256:d6ad8f330b804e55a01b50d6b950ceee1459af538a2729c5fe5992cd969da228`  
		Last Modified: Thu, 26 Oct 2017 05:00:41 GMT  
		Size: 114.3 KB (114328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d97c1c3499007abf72f98b00c16951c2c5d706309b9fdfcb2482848f3db8f6`  
		Last Modified: Thu, 26 Oct 2017 05:03:09 GMT  
		Size: 13.9 MB (13878366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febb5041872b9c89f38ff8489430ecebcae549a0cfcecdee1b885b497a20bbd7`  
		Last Modified: Thu, 26 Oct 2017 05:03:04 GMT  
		Size: 1.0 MB (1004191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6412bf0dc847fd5b22ea271519ad89004e6013f11ca655447eac309a1838ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c88455fa9a605c3ce8706cebe15269258ebedb84c15144882bf819350a70055`  
		Last Modified: Thu, 26 Oct 2017 05:29:22 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e977f9ae0eac7117a680e80eabdf9b0f1b1e5eace8f4aa5fd49e3d74d5ece16`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58805e8fd325d837ba07ae59d789583083a68fa7f941541264f4cdd924b550f6`  
		Last Modified: Thu, 26 Oct 2017 05:29:34 GMT  
		Size: 31.8 MB (31827733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e323803b67cf5cf2072c66180480a4fb85d6412b82ed5c729aced0ac076f5ab`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7cad8c01bb49fa675229c15219ee50346269da78219c91703d508abd69188a`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e5dfa7153ec975709c54b55a15e93f924b9a1e79a3f95da6861acbc173084f`  
		Last Modified: Thu, 26 Oct 2017 05:29:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:3f0e262fbf25fbae42bf18dca180dff0047b38c76f4a88469ad50257fc0aafcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117135305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dc85c903939b372ef3b06a28cfc802e907af86ffe40f96a8ae010542852bf9`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:32:13 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 15:32:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:32:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:32:21 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 15:32:22 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 15:37:35 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 15:37:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 15:37:40 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 15:37:41 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 15:37:41 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:37:44 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 15:37:45 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a809e518b6fe28a1f1f20f4285426bf97fc031536e75f8d75c16a2cc2479128`  
		Last Modified: Thu, 26 Oct 2017 15:40:03 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b54d129643be1761d55f472d370d4587b96cebd028315fc3401e13bd553dc`  
		Last Modified: Thu, 26 Oct 2017 15:40:04 GMT  
		Size: 468.7 KB (468694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d379116059e7f766d81b565520b6fc1418f0292191dba915806cae85afd4e875`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282adf5611f07630c952a31ace282a0343ef74eaf729fa1793cb33655875abc2`  
		Last Modified: Thu, 26 Oct 2017 15:40:17 GMT  
		Size: 32.2 MB (32165012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232215cc9b66ec2c9a2848b3bdb5ec71f6a99a05f3792c32275c2ca30069b964`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dc60d0b99cc317027f773b116d61d3b65f560296ad1c84e28edc6fa3848bda`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36aaf66a6fc82aecbd2106e465df3468ce11c00a1697f9f8894460c6c2bb070b`  
		Last Modified: Thu, 26 Oct 2017 15:40:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:0.11.12` - linux; ppc64le

```console
$ docker pull ghost@sha256:995fdae53ac61382d0917629aecdadc4fccf80704cc41d80cdc5b37b6df97ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119721241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a6bb817691d55f1718d773519738427a8304275e2f97afa2276967e90adeb7`
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
# Thu, 26 Oct 2017 04:13:28 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:15:54 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 04:16:24 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:16:26 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:16:33 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:16:34 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:44:12 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 26 Oct 2017 04:44:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 04:44:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 04:44:22 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:44:23 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:44:25 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:49:05 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:49:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:49:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:49:13 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:49:14 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:49:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 04:49:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:49:24 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:49:26 GMT
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
	-	`sha256:45b06d2b28ddcb851655e4e339cf06468a4e503f58e3e29a730937f331c634a9`  
		Last Modified: Thu, 26 Oct 2017 04:20:48 GMT  
		Size: 114.3 KB (114326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30baf3857d39713c6a37f982b05ace36212561e75fecbab1896a65e6e9c9d6`  
		Last Modified: Thu, 26 Oct 2017 04:22:54 GMT  
		Size: 14.5 MB (14476861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c9bf2681258bac766da77eb380745e0fb61026466659c15fe8f6d312699e2`  
		Last Modified: Thu, 26 Oct 2017 04:22:50 GMT  
		Size: 1.0 MB (1004190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec75c1ff0f1697913e4cc2842dab5f25b5648b600c69e6109b06d5e510ee35e`  
		Last Modified: Thu, 26 Oct 2017 04:51:14 GMT  
		Size: 4.5 KB (4501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f7084858ca9b7cd31f8e6621604f483cd6e19c10e9176cfc01cdfe3ca2507f`  
		Last Modified: Thu, 26 Oct 2017 04:51:15 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b14edac0549a4f738d67b73bf85bd485df64c91c10740682b3bade6a40048f`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a87c69934a18aca5900c2e37731219e246bed4e79f62a38db933fd3517c24a6`  
		Last Modified: Thu, 26 Oct 2017 04:51:27 GMT  
		Size: 32.6 MB (32635139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c89ea8548504546ca81980183977a322be4c48d6549595d376a6337d7c11c0`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedd68ea74b62b75b4fe9b05c789d3992579622c9ef45c448cf522028486df36`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b997ada1b85d94176a4203034a7f58c15965a8c25354cdfbb38b18a1d3e09269`  
		Last Modified: Thu, 26 Oct 2017 04:51:11 GMT  
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
$ docker pull ghost@sha256:d0e6d55b3396d56fd95cc79b3663068cb2ea532e7b27d8e60f73b9ce010acb74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:269ccda3767fc22b82400dc6de0d0a31497e9e25963add7a12f77a69dea026fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45423485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad756973d511ff9aa2dce3551bbee4377be42e508bc3835a4ddb835488bb5ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:31:28 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 26 Oct 2017 04:31:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:31:33 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:31:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:32:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:32:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:32:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:32:29 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:32:29 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:32:29 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:32:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8c0c3b0c41803a74f25e37712c4ff6e9754d6394ec49e697acb6763e81e39`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 1.4 MB (1353545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319f3ce3f0d7c86d225c09d10d3e7ff8321eae73b989e7720806efc47bd6a45f`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d669d54533bf8c5e9f11e0db9968d18e9086bb0b99ca1cc0a23af344a37e3b`  
		Last Modified: Thu, 26 Oct 2017 04:34:58 GMT  
		Size: 25.2 MB (25230361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a21e1dfe5046bcb9e16f0c5d44ba4eadd8d06ca3916412cff4708038a3ae680`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b62b56a825496d40b6b421948723c232fd440c062d7e393f6077612c8f3c06`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:d0e6d55b3396d56fd95cc79b3663068cb2ea532e7b27d8e60f73b9ce010acb74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:269ccda3767fc22b82400dc6de0d0a31497e9e25963add7a12f77a69dea026fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45423485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad756973d511ff9aa2dce3551bbee4377be42e508bc3835a4ddb835488bb5ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:31:28 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 26 Oct 2017 04:31:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:31:33 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:31:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:32:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:32:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:32:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:32:29 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:32:29 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:32:29 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:32:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8c0c3b0c41803a74f25e37712c4ff6e9754d6394ec49e697acb6763e81e39`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 1.4 MB (1353545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319f3ce3f0d7c86d225c09d10d3e7ff8321eae73b989e7720806efc47bd6a45f`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d669d54533bf8c5e9f11e0db9968d18e9086bb0b99ca1cc0a23af344a37e3b`  
		Last Modified: Thu, 26 Oct 2017 04:34:58 GMT  
		Size: 25.2 MB (25230361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a21e1dfe5046bcb9e16f0c5d44ba4eadd8d06ca3916412cff4708038a3ae680`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b62b56a825496d40b6b421948723c232fd440c062d7e393f6077612c8f3c06`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d0e6d55b3396d56fd95cc79b3663068cb2ea532e7b27d8e60f73b9ce010acb74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:269ccda3767fc22b82400dc6de0d0a31497e9e25963add7a12f77a69dea026fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45423485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad756973d511ff9aa2dce3551bbee4377be42e508bc3835a4ddb835488bb5ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:31:28 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 26 Oct 2017 04:31:33 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 26 Oct 2017 04:31:33 GMT
WORKDIR /usr/src/ghost
# Thu, 26 Oct 2017 04:31:34 GMT
ENV GHOST_VERSION=0.11.12
# Thu, 26 Oct 2017 04:32:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 26 Oct 2017 04:32:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 26 Oct 2017 04:32:22 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 26 Oct 2017 04:32:29 GMT
VOLUME [/var/lib/ghost]
# Thu, 26 Oct 2017 04:32:29 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 26 Oct 2017 04:32:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:32:29 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:32:30 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab8c0c3b0c41803a74f25e37712c4ff6e9754d6394ec49e697acb6763e81e39`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 1.4 MB (1353545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319f3ce3f0d7c86d225c09d10d3e7ff8321eae73b989e7720806efc47bd6a45f`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d669d54533bf8c5e9f11e0db9968d18e9086bb0b99ca1cc0a23af344a37e3b`  
		Last Modified: Thu, 26 Oct 2017 04:34:58 GMT  
		Size: 25.2 MB (25230361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a21e1dfe5046bcb9e16f0c5d44ba4eadd8d06ca3916412cff4708038a3ae680`  
		Last Modified: Thu, 26 Oct 2017 04:34:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b62b56a825496d40b6b421948723c232fd440c062d7e393f6077612c8f3c06`  
		Last Modified: Thu, 26 Oct 2017 04:34:53 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:8fe46aeb7bbc1c1eaa75ec229a3c6cc2439178b98cfee7ca0f1844288c5b4708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `ghost:1` - linux; amd64

```console
$ docker pull ghost@sha256:c5b30a947ffc0c7748bbd58f92656a7de493dc0453c46854101cd7ca38e9699c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225740014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3d66911d488b69a990d2028347859dcb09588d8798dda6d1a645d776209508`
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
# Thu, 26 Oct 2017 17:36:13 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:36:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:36:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:36:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:37:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:40:12 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:40:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:40:12 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 17:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:40:13 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:40:13 GMT
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
	-	`sha256:f378f3a4f094db5f0851d11d5a20e917e0236d8ee662fb3492905e8161b95c8c`  
		Last Modified: Thu, 26 Oct 2017 17:42:55 GMT  
		Size: 39.6 MB (39581666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489b333967fef473bef7c1ead05c539b12a4c043d5fa7362961f03b00abfd995`  
		Last Modified: Thu, 26 Oct 2017 17:43:25 GMT  
		Size: 98.0 MB (97957359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d55e5c9f48554b050e566eccd4e95a61f963cb5d4bc78149a51edea405ef3`  
		Last Modified: Thu, 26 Oct 2017 17:42:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:96b1a4f7090a7a0a4076db396991154441ee1ce2486e8ad9c3abdcad1106300a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207344014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d6d5383d72fe188d28c6221ac1a1c007d677002a9311b4acbc235fd5ec847`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:27:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:28:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 15:28:04 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 19:03:27 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 19:05:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 19:07:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 19:07:45 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 19:07:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 19:07:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 19:07:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:07:49 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 19:07:50 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94af326bb5821026adc3ec57328ab4ba83bc5e8b75e401132e92f65fdb711973`  
		Last Modified: Thu, 26 Oct 2017 15:38:27 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c7bf2b7b801f6dde82b91e46878fba77642e268e7e7001ad3344f1a9e70e0f`  
		Last Modified: Thu, 26 Oct 2017 19:08:39 GMT  
		Size: 29.2 MB (29176768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532a38388c143b7db523eb0b5cb6b52dfc2df05fcafbef60be4b374cad463f1c`  
		Last Modified: Thu, 26 Oct 2017 19:09:06 GMT  
		Size: 93.2 MB (93201956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e254740263b0b8e6403b73668571a0891034d90c306c89773bd7a03371b73b`  
		Last Modified: Thu, 26 Oct 2017 19:08:24 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:062ebbbce177d9e0f85e787e65ede4642c8843ca241d2502f666aeab507b33b5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211084296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6512ca682064c834e2edf6f75944a977aac6293c0d781cca6212659cea31b17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 25 Oct 2017 18:12:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 18:12:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 18:10:45 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 18:11:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 18:12:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 18:12:05 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 18:12:05 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 18:12:06 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 18:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 18:12:06 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 18:12:06 GMT
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
	-	`sha256:8d4898e74c3bb25cc51660d79ea862e8386f3a51b5c6b6715af7068f0550719f`  
		Last Modified: Wed, 25 Oct 2017 18:16:23 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa61a0f3ad5fe02e476535f20a922495ca5f9bbd33171b818d8beaca5eb78e1`  
		Last Modified: Thu, 26 Oct 2017 18:12:37 GMT  
		Size: 29.2 MB (29173322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a79f1ded604b7d77dde24824f847cf48ad0b0ca1aa851e4efcf9171bb4d1054`  
		Last Modified: Thu, 26 Oct 2017 18:12:47 GMT  
		Size: 93.2 MB (93191341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584a6c0f5201e8f7589fa1c0508eee3f4a4be71f3147e7fe198fb6da63c170ab`  
		Last Modified: Thu, 26 Oct 2017 18:12:29 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16`

```console
$ docker pull ghost@sha256:8fe46aeb7bbc1c1eaa75ec229a3c6cc2439178b98cfee7ca0f1844288c5b4708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `ghost:1.16` - linux; amd64

```console
$ docker pull ghost@sha256:c5b30a947ffc0c7748bbd58f92656a7de493dc0453c46854101cd7ca38e9699c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225740014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3d66911d488b69a990d2028347859dcb09588d8798dda6d1a645d776209508`
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
# Thu, 26 Oct 2017 17:36:13 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:36:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:36:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:36:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:37:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:40:12 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:40:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:40:12 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 17:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:40:13 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:40:13 GMT
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
	-	`sha256:f378f3a4f094db5f0851d11d5a20e917e0236d8ee662fb3492905e8161b95c8c`  
		Last Modified: Thu, 26 Oct 2017 17:42:55 GMT  
		Size: 39.6 MB (39581666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489b333967fef473bef7c1ead05c539b12a4c043d5fa7362961f03b00abfd995`  
		Last Modified: Thu, 26 Oct 2017 17:43:25 GMT  
		Size: 98.0 MB (97957359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d55e5c9f48554b050e566eccd4e95a61f963cb5d4bc78149a51edea405ef3`  
		Last Modified: Thu, 26 Oct 2017 17:42:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:96b1a4f7090a7a0a4076db396991154441ee1ce2486e8ad9c3abdcad1106300a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207344014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d6d5383d72fe188d28c6221ac1a1c007d677002a9311b4acbc235fd5ec847`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:27:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:28:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 15:28:04 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 19:03:27 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 19:05:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 19:07:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 19:07:45 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 19:07:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 19:07:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 19:07:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:07:49 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 19:07:50 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94af326bb5821026adc3ec57328ab4ba83bc5e8b75e401132e92f65fdb711973`  
		Last Modified: Thu, 26 Oct 2017 15:38:27 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c7bf2b7b801f6dde82b91e46878fba77642e268e7e7001ad3344f1a9e70e0f`  
		Last Modified: Thu, 26 Oct 2017 19:08:39 GMT  
		Size: 29.2 MB (29176768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532a38388c143b7db523eb0b5cb6b52dfc2df05fcafbef60be4b374cad463f1c`  
		Last Modified: Thu, 26 Oct 2017 19:09:06 GMT  
		Size: 93.2 MB (93201956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e254740263b0b8e6403b73668571a0891034d90c306c89773bd7a03371b73b`  
		Last Modified: Thu, 26 Oct 2017 19:08:24 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16` - linux; s390x

```console
$ docker pull ghost@sha256:062ebbbce177d9e0f85e787e65ede4642c8843ca241d2502f666aeab507b33b5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211084296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6512ca682064c834e2edf6f75944a977aac6293c0d781cca6212659cea31b17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 25 Oct 2017 18:12:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 18:12:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 18:10:45 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 18:11:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 18:12:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 18:12:05 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 18:12:05 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 18:12:06 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 18:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 18:12:06 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 18:12:06 GMT
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
	-	`sha256:8d4898e74c3bb25cc51660d79ea862e8386f3a51b5c6b6715af7068f0550719f`  
		Last Modified: Wed, 25 Oct 2017 18:16:23 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa61a0f3ad5fe02e476535f20a922495ca5f9bbd33171b818d8beaca5eb78e1`  
		Last Modified: Thu, 26 Oct 2017 18:12:37 GMT  
		Size: 29.2 MB (29173322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a79f1ded604b7d77dde24824f847cf48ad0b0ca1aa851e4efcf9171bb4d1054`  
		Last Modified: Thu, 26 Oct 2017 18:12:47 GMT  
		Size: 93.2 MB (93191341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584a6c0f5201e8f7589fa1c0508eee3f4a4be71f3147e7fe198fb6da63c170ab`  
		Last Modified: Thu, 26 Oct 2017 18:12:29 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.0`

```console
$ docker pull ghost@sha256:8fe46aeb7bbc1c1eaa75ec229a3c6cc2439178b98cfee7ca0f1844288c5b4708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; s390x

### `ghost:1.16.0` - linux; amd64

```console
$ docker pull ghost@sha256:c5b30a947ffc0c7748bbd58f92656a7de493dc0453c46854101cd7ca38e9699c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225740014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3d66911d488b69a990d2028347859dcb09588d8798dda6d1a645d776209508`
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
# Thu, 26 Oct 2017 17:36:13 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:36:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:36:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:36:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:37:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:40:12 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:40:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:40:12 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 17:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:40:13 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:40:13 GMT
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
	-	`sha256:f378f3a4f094db5f0851d11d5a20e917e0236d8ee662fb3492905e8161b95c8c`  
		Last Modified: Thu, 26 Oct 2017 17:42:55 GMT  
		Size: 39.6 MB (39581666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489b333967fef473bef7c1ead05c539b12a4c043d5fa7362961f03b00abfd995`  
		Last Modified: Thu, 26 Oct 2017 17:43:25 GMT  
		Size: 98.0 MB (97957359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d55e5c9f48554b050e566eccd4e95a61f963cb5d4bc78149a51edea405ef3`  
		Last Modified: Thu, 26 Oct 2017 17:42:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:96b1a4f7090a7a0a4076db396991154441ee1ce2486e8ad9c3abdcad1106300a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207344014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d6d5383d72fe188d28c6221ac1a1c007d677002a9311b4acbc235fd5ec847`
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
# Thu, 26 Oct 2017 12:05:07 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 12:07:25 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 12:07:53 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 12:07:54 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 12:07:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 12:07:59 GMT
CMD ["node"]
# Thu, 26 Oct 2017 15:27:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 26 Oct 2017 15:28:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 15:28:03 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 15:28:04 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 19:03:27 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 19:05:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 19:05:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 19:07:27 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 19:07:45 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 19:07:46 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 19:07:47 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 19:07:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 19:07:49 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 19:07:50 GMT
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
	-	`sha256:3f88065c04d684bd603d739538dd2f159d57eb10fd441928f10104a836ee0e73`  
		Last Modified: Thu, 26 Oct 2017 12:13:30 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4f045821bee3a5b4f24ec12b23ee75dbe2fcafc7ab5423cf11d17aa04d63b7`  
		Last Modified: Thu, 26 Oct 2017 12:18:14 GMT  
		Size: 14.7 MB (14705772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437dc6c7153e8206e1091f63d47e4ddfde61671cf409f6291f90294920f80ab1`  
		Last Modified: Thu, 26 Oct 2017 12:18:09 GMT  
		Size: 1.0 MB (1004173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94af326bb5821026adc3ec57328ab4ba83bc5e8b75e401132e92f65fdb711973`  
		Last Modified: Thu, 26 Oct 2017 15:38:27 GMT  
		Size: 468.7 KB (468698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c7bf2b7b801f6dde82b91e46878fba77642e268e7e7001ad3344f1a9e70e0f`  
		Last Modified: Thu, 26 Oct 2017 19:08:39 GMT  
		Size: 29.2 MB (29176768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532a38388c143b7db523eb0b5cb6b52dfc2df05fcafbef60be4b374cad463f1c`  
		Last Modified: Thu, 26 Oct 2017 19:09:06 GMT  
		Size: 93.2 MB (93201956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e254740263b0b8e6403b73668571a0891034d90c306c89773bd7a03371b73b`  
		Last Modified: Thu, 26 Oct 2017 19:08:24 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1.16.0` - linux; s390x

```console
$ docker pull ghost@sha256:062ebbbce177d9e0f85e787e65ede4642c8843ca241d2502f666aeab507b33b5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211084296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6512ca682064c834e2edf6f75944a977aac6293c0d781cca6212659cea31b17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 25 Oct 2017 18:12:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 18:12:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 18:10:45 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 18:11:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 18:12:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 18:12:05 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 18:12:05 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 18:12:06 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 18:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 18:12:06 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 18:12:06 GMT
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
	-	`sha256:8d4898e74c3bb25cc51660d79ea862e8386f3a51b5c6b6715af7068f0550719f`  
		Last Modified: Wed, 25 Oct 2017 18:16:23 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa61a0f3ad5fe02e476535f20a922495ca5f9bbd33171b818d8beaca5eb78e1`  
		Last Modified: Thu, 26 Oct 2017 18:12:37 GMT  
		Size: 29.2 MB (29173322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a79f1ded604b7d77dde24824f847cf48ad0b0ca1aa851e4efcf9171bb4d1054`  
		Last Modified: Thu, 26 Oct 2017 18:12:47 GMT  
		Size: 93.2 MB (93191341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584a6c0f5201e8f7589fa1c0508eee3f4a4be71f3147e7fe198fb6da63c170ab`  
		Last Modified: Thu, 26 Oct 2017 18:12:29 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16.0-alpine`

```console
$ docker pull ghost@sha256:9182b9078737107bfa5c45ef63f7df5f00da5c88539440330acdff2472dbf2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:931ac50f57493887455f002313d713f4c69d26bda8dfbb69ab0f14ee8e230dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157489806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b459c47dc43f18b7bed171b98982f0a19add58a2575537d83291c066100b528b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:29:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 17:40:32 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:41:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:41:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:41:57 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:41:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:41:58 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 26 Oct 2017 17:41:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:58 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:41:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdf8345b3ca320ebe212926a2cf5632e9ace106042829c5152d63166db0db3`  
		Last Modified: Thu, 26 Oct 2017 04:33:04 GMT  
		Size: 1.1 MB (1112351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26d46539b7d95387522dcae60f6ddec195957d19dab2a006456f60339aae953`  
		Last Modified: Thu, 26 Oct 2017 17:44:48 GMT  
		Size: 39.6 MB (39581013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c104b42f64dbd3ec4dfa0a9615eb0dd01298a66f677cbbbffef45aeff993e4`  
		Last Modified: Thu, 26 Oct 2017 17:45:05 GMT  
		Size: 98.0 MB (97957270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addec12944d898c5732248fbb848d86af9cdddf847f58e4ed006f97a389a8da0`  
		Last Modified: Thu, 26 Oct 2017 17:44:16 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.16-alpine`

```console
$ docker pull ghost@sha256:9182b9078737107bfa5c45ef63f7df5f00da5c88539440330acdff2472dbf2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1.16-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:931ac50f57493887455f002313d713f4c69d26bda8dfbb69ab0f14ee8e230dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157489806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b459c47dc43f18b7bed171b98982f0a19add58a2575537d83291c066100b528b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:29:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 17:40:32 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:41:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:41:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:41:57 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:41:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:41:58 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 26 Oct 2017 17:41:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:58 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:41:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdf8345b3ca320ebe212926a2cf5632e9ace106042829c5152d63166db0db3`  
		Last Modified: Thu, 26 Oct 2017 04:33:04 GMT  
		Size: 1.1 MB (1112351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26d46539b7d95387522dcae60f6ddec195957d19dab2a006456f60339aae953`  
		Last Modified: Thu, 26 Oct 2017 17:44:48 GMT  
		Size: 39.6 MB (39581013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c104b42f64dbd3ec4dfa0a9615eb0dd01298a66f677cbbbffef45aeff993e4`  
		Last Modified: Thu, 26 Oct 2017 17:45:05 GMT  
		Size: 98.0 MB (97957270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addec12944d898c5732248fbb848d86af9cdddf847f58e4ed006f97a389a8da0`  
		Last Modified: Thu, 26 Oct 2017 17:44:16 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:9182b9078737107bfa5c45ef63f7df5f00da5c88539440330acdff2472dbf2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:931ac50f57493887455f002313d713f4c69d26bda8dfbb69ab0f14ee8e230dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157489806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b459c47dc43f18b7bed171b98982f0a19add58a2575537d83291c066100b528b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:29:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 17:40:32 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:41:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:41:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:41:57 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:41:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:41:58 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 26 Oct 2017 17:41:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:58 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:41:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdf8345b3ca320ebe212926a2cf5632e9ace106042829c5152d63166db0db3`  
		Last Modified: Thu, 26 Oct 2017 04:33:04 GMT  
		Size: 1.1 MB (1112351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26d46539b7d95387522dcae60f6ddec195957d19dab2a006456f60339aae953`  
		Last Modified: Thu, 26 Oct 2017 17:44:48 GMT  
		Size: 39.6 MB (39581013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c104b42f64dbd3ec4dfa0a9615eb0dd01298a66f677cbbbffef45aeff993e4`  
		Last Modified: Thu, 26 Oct 2017 17:45:05 GMT  
		Size: 98.0 MB (97957270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addec12944d898c5732248fbb848d86af9cdddf847f58e4ed006f97a389a8da0`  
		Last Modified: Thu, 26 Oct 2017 17:44:16 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:9182b9078737107bfa5c45ef63f7df5f00da5c88539440330acdff2472dbf2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:931ac50f57493887455f002313d713f4c69d26bda8dfbb69ab0f14ee8e230dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157489806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b459c47dc43f18b7bed171b98982f0a19add58a2575537d83291c066100b528b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:29:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 17:40:32 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:41:11 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:41:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:41:56 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:41:57 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:41:57 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:41:58 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 26 Oct 2017 17:41:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:41:58 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:41:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdf8345b3ca320ebe212926a2cf5632e9ace106042829c5152d63166db0db3`  
		Last Modified: Thu, 26 Oct 2017 04:33:04 GMT  
		Size: 1.1 MB (1112351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26d46539b7d95387522dcae60f6ddec195957d19dab2a006456f60339aae953`  
		Last Modified: Thu, 26 Oct 2017 17:44:48 GMT  
		Size: 39.6 MB (39581013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c104b42f64dbd3ec4dfa0a9615eb0dd01298a66f677cbbbffef45aeff993e4`  
		Last Modified: Thu, 26 Oct 2017 17:45:05 GMT  
		Size: 98.0 MB (97957270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addec12944d898c5732248fbb848d86af9cdddf847f58e4ed006f97a389a8da0`  
		Last Modified: Thu, 26 Oct 2017 17:44:16 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:672e3bb2f154c67dd483ce0867b15317bc1124c0225835906ed23238551adcea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:c5b30a947ffc0c7748bbd58f92656a7de493dc0453c46854101cd7ca38e9699c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225740014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3d66911d488b69a990d2028347859dcb09588d8798dda6d1a645d776209508`
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
# Thu, 26 Oct 2017 17:36:13 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 17:36:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 17:36:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 17:36:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 17:37:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 17:40:12 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 17:40:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 17:40:12 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 17:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:40:13 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 17:40:13 GMT
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
	-	`sha256:f378f3a4f094db5f0851d11d5a20e917e0236d8ee662fb3492905e8161b95c8c`  
		Last Modified: Thu, 26 Oct 2017 17:42:55 GMT  
		Size: 39.6 MB (39581666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489b333967fef473bef7c1ead05c539b12a4c043d5fa7362961f03b00abfd995`  
		Last Modified: Thu, 26 Oct 2017 17:43:25 GMT  
		Size: 98.0 MB (97957359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7d55e5c9f48554b050e566eccd4e95a61f963cb5d4bc78149a51edea405ef3`  
		Last Modified: Thu, 26 Oct 2017 17:42:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:062ebbbce177d9e0f85e787e65ede4642c8843ca241d2502f666aeab507b33b5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211084296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6512ca682064c834e2edf6f75944a977aac6293c0d781cca6212659cea31b17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 25 Oct 2017 18:12:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 18:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 18:12:39 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 18:12:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 18:10:45 GMT
ENV GHOST_VERSION=1.16.0
# Thu, 26 Oct 2017 18:11:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 18:11:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 18:12:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 18:12:05 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 18:12:05 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 18:12:06 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 26 Oct 2017 18:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 18:12:06 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 18:12:06 GMT
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
	-	`sha256:8d4898e74c3bb25cc51660d79ea862e8386f3a51b5c6b6715af7068f0550719f`  
		Last Modified: Wed, 25 Oct 2017 18:16:23 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa61a0f3ad5fe02e476535f20a922495ca5f9bbd33171b818d8beaca5eb78e1`  
		Last Modified: Thu, 26 Oct 2017 18:12:37 GMT  
		Size: 29.2 MB (29173322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a79f1ded604b7d77dde24824f847cf48ad0b0ca1aa851e4efcf9171bb4d1054`  
		Last Modified: Thu, 26 Oct 2017 18:12:47 GMT  
		Size: 93.2 MB (93191341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584a6c0f5201e8f7589fa1c0508eee3f4a4be71f3147e7fe198fb6da63c170ab`  
		Last Modified: Thu, 26 Oct 2017 18:12:29 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
