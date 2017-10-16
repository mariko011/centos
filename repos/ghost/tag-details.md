<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0`](#ghost0)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0.11.12`](#ghost01112)
-	[`ghost:0.11.12-alpine`](#ghost01112-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:1`](#ghost1)
-	[`ghost:1.14`](#ghost114)
-	[`ghost:1.14.0`](#ghost1140)
-	[`ghost:1.14.0-alpine`](#ghost1140-alpine)
-	[`ghost:1.14-alpine`](#ghost114-alpine)
-	[`ghost:1-alpine`](#ghost1-alpine)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0`

```console
$ docker pull ghost@sha256:92dbdb968d60e37e399acc3b91d8eed8c1ca0183a1203286cccb4e0bda88f80c
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
$ docker pull ghost@sha256:2d512cede100338e4a3b2cb84d3e5898fe868015f164a2d1360d76218bda555d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113680709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83976b2bcd295c305af957f1feb4010c483242089530d4bccda3f6016a30ea3d`
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
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:29:19 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 06:29:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:29:54 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 06:29:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:29:59 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:11:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 12:11:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 12:11:59 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:36:15 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:37:32 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:37:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:37:34 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:37:34 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:37:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Oct 2017 23:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:37:35 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:37:35 GMT
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
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bca85b329c3da5887544c28c8d76eaaa85df35062ac6f9d62cb0ab7a124d0`  
		Last Modified: Tue, 10 Oct 2017 07:14:01 GMT  
		Size: 14.7 MB (14716799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd41b4aac0d7b2fee194faff80ccdb75128292cb89e6afa80f75aceb65553fa`  
		Last Modified: Tue, 10 Oct 2017 07:13:57 GMT  
		Size: 996.9 KB (996938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b97c36b7882cca308394e9f1fad1132ecb0317fc6c44c46fc5f5273f632cd`  
		Last Modified: Tue, 10 Oct 2017 12:14:26 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a827f90b1e9cc851ad68b014f7d0529ddd162165c460bc72f2fc3c00f99bf4`  
		Last Modified: Tue, 10 Oct 2017 12:14:27 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab3ba474d3429069267e283bc24beceb0d015c61f3d3ed25f7549c0a303ed72`  
		Last Modified: Tue, 10 Oct 2017 12:14:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1016a7afe0425244ace2a91caa5f622b7f88453933a14ffae44e734e3b1fe35`  
		Last Modified: Fri, 13 Oct 2017 23:39:39 GMT  
		Size: 25.5 MB (25478139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117aabf2b729544e1981f8528a5909958c266066beb1962d5c5518a8c2ce53b`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ccf2f83738ad71d5cac7991b39125c950b9920d0bffbfb51b7596cf56f927e`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad98ad91e6c88bdeb2fa9de4572da87e0c1dac63d5841fbb7c2144616e8b287`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 121.0 B  
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
$ docker pull ghost@sha256:d1b02c355bf28cf970727a0c4b55d22d840113d037c43736ddb0c100ebbf8837
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121394271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd48faf5c4117a142095a0d17bcd9d97286034ef931530adca289371826832`
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
# Tue, 10 Oct 2017 00:12:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 00:12:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 00:13:25 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 00:13:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 00:13:39 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 00:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 00:13:41 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:26:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:26:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:26:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:26:39 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:26:39 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 14:22:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 14:24:17 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 14:24:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 14:24:19 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 14:24:19 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 14:24:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 14:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 14:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 14:24:21 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 14:24:21 GMT
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
	-	`sha256:87f1bb684d365256ba980e8fad148595e66d36ff8dc52f13e96f576528e289e3`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 119.1 KB (119142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245b4df2a786d664f3735b60a3a7590f201bbaa29fe173146da11951a3e7a97`  
		Last Modified: Tue, 10 Oct 2017 00:16:18 GMT  
		Size: 14.9 MB (14850112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520d9f89437e6f826e9efb0619b01710e5ee3c8e534a08c14a4eb3d53ec8b01`  
		Last Modified: Tue, 10 Oct 2017 00:16:15 GMT  
		Size: 996.9 KB (996941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23409a9cf82847a0039c07df06566d6b9675ae9594284f4cf8690398e0fddd8`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ec33db8ef2454b4f9be13464c6f66f10445c445afa2576b6259a82279d656`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0ea7eba71f3463d9fbcc919c6ba5ea9e0906ad0a570ba4ed6f79fc97cda2`  
		Last Modified: Tue, 10 Oct 2017 02:29:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76dbf21c3eac4633a72cc014582d37a2bcb8e712f73b6af7fc971e458802f53`  
		Last Modified: Sat, 14 Oct 2017 14:24:47 GMT  
		Size: 32.7 MB (32671633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fcf3caa6e2ca4aebdd39880af62cb00522db9006bd2b7339d2bebcd1e6b4fb`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f0831d41d7d92b43f4393c2250ccb1f364d492794a9d6e0cef62cd27d0f4b`  
		Last Modified: Sat, 14 Oct 2017 14:24:40 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484fe966a322d8c689238c0c206bd3792218fa1fc63e188c4e981cf39ee2db0`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:92dbdb968d60e37e399acc3b91d8eed8c1ca0183a1203286cccb4e0bda88f80c
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
$ docker pull ghost@sha256:2d512cede100338e4a3b2cb84d3e5898fe868015f164a2d1360d76218bda555d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113680709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83976b2bcd295c305af957f1feb4010c483242089530d4bccda3f6016a30ea3d`
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
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:29:19 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 06:29:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:29:54 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 06:29:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:29:59 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:11:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 12:11:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 12:11:59 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:36:15 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:37:32 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:37:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:37:34 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:37:34 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:37:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Oct 2017 23:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:37:35 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:37:35 GMT
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
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bca85b329c3da5887544c28c8d76eaaa85df35062ac6f9d62cb0ab7a124d0`  
		Last Modified: Tue, 10 Oct 2017 07:14:01 GMT  
		Size: 14.7 MB (14716799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd41b4aac0d7b2fee194faff80ccdb75128292cb89e6afa80f75aceb65553fa`  
		Last Modified: Tue, 10 Oct 2017 07:13:57 GMT  
		Size: 996.9 KB (996938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b97c36b7882cca308394e9f1fad1132ecb0317fc6c44c46fc5f5273f632cd`  
		Last Modified: Tue, 10 Oct 2017 12:14:26 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a827f90b1e9cc851ad68b014f7d0529ddd162165c460bc72f2fc3c00f99bf4`  
		Last Modified: Tue, 10 Oct 2017 12:14:27 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab3ba474d3429069267e283bc24beceb0d015c61f3d3ed25f7549c0a303ed72`  
		Last Modified: Tue, 10 Oct 2017 12:14:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1016a7afe0425244ace2a91caa5f622b7f88453933a14ffae44e734e3b1fe35`  
		Last Modified: Fri, 13 Oct 2017 23:39:39 GMT  
		Size: 25.5 MB (25478139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117aabf2b729544e1981f8528a5909958c266066beb1962d5c5518a8c2ce53b`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ccf2f83738ad71d5cac7991b39125c950b9920d0bffbfb51b7596cf56f927e`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad98ad91e6c88bdeb2fa9de4572da87e0c1dac63d5841fbb7c2144616e8b287`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 121.0 B  
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
$ docker pull ghost@sha256:d1b02c355bf28cf970727a0c4b55d22d840113d037c43736ddb0c100ebbf8837
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121394271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd48faf5c4117a142095a0d17bcd9d97286034ef931530adca289371826832`
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
# Tue, 10 Oct 2017 00:12:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 00:12:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 00:13:25 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 00:13:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 00:13:39 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 00:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 00:13:41 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:26:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:26:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:26:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:26:39 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:26:39 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 14:22:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 14:24:17 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 14:24:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 14:24:19 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 14:24:19 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 14:24:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 14:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 14:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 14:24:21 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 14:24:21 GMT
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
	-	`sha256:87f1bb684d365256ba980e8fad148595e66d36ff8dc52f13e96f576528e289e3`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 119.1 KB (119142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245b4df2a786d664f3735b60a3a7590f201bbaa29fe173146da11951a3e7a97`  
		Last Modified: Tue, 10 Oct 2017 00:16:18 GMT  
		Size: 14.9 MB (14850112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520d9f89437e6f826e9efb0619b01710e5ee3c8e534a08c14a4eb3d53ec8b01`  
		Last Modified: Tue, 10 Oct 2017 00:16:15 GMT  
		Size: 996.9 KB (996941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23409a9cf82847a0039c07df06566d6b9675ae9594284f4cf8690398e0fddd8`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ec33db8ef2454b4f9be13464c6f66f10445c445afa2576b6259a82279d656`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0ea7eba71f3463d9fbcc919c6ba5ea9e0906ad0a570ba4ed6f79fc97cda2`  
		Last Modified: Tue, 10 Oct 2017 02:29:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76dbf21c3eac4633a72cc014582d37a2bcb8e712f73b6af7fc971e458802f53`  
		Last Modified: Sat, 14 Oct 2017 14:24:47 GMT  
		Size: 32.7 MB (32671633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fcf3caa6e2ca4aebdd39880af62cb00522db9006bd2b7339d2bebcd1e6b4fb`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f0831d41d7d92b43f4393c2250ccb1f364d492794a9d6e0cef62cd27d0f4b`  
		Last Modified: Sat, 14 Oct 2017 14:24:40 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484fe966a322d8c689238c0c206bd3792218fa1fc63e188c4e981cf39ee2db0`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12`

```console
$ docker pull ghost@sha256:92dbdb968d60e37e399acc3b91d8eed8c1ca0183a1203286cccb4e0bda88f80c
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
$ docker pull ghost@sha256:2d512cede100338e4a3b2cb84d3e5898fe868015f164a2d1360d76218bda555d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113680709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83976b2bcd295c305af957f1feb4010c483242089530d4bccda3f6016a30ea3d`
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
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:29:19 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 06:29:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:29:54 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 06:29:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:29:59 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:11:54 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 12:11:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:11:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:11:59 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 12:11:59 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:36:15 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:37:32 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:37:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:37:34 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:37:34 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:37:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Oct 2017 23:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:37:35 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:37:35 GMT
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
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bca85b329c3da5887544c28c8d76eaaa85df35062ac6f9d62cb0ab7a124d0`  
		Last Modified: Tue, 10 Oct 2017 07:14:01 GMT  
		Size: 14.7 MB (14716799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd41b4aac0d7b2fee194faff80ccdb75128292cb89e6afa80f75aceb65553fa`  
		Last Modified: Tue, 10 Oct 2017 07:13:57 GMT  
		Size: 996.9 KB (996938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b97c36b7882cca308394e9f1fad1132ecb0317fc6c44c46fc5f5273f632cd`  
		Last Modified: Tue, 10 Oct 2017 12:14:26 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a827f90b1e9cc851ad68b014f7d0529ddd162165c460bc72f2fc3c00f99bf4`  
		Last Modified: Tue, 10 Oct 2017 12:14:27 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab3ba474d3429069267e283bc24beceb0d015c61f3d3ed25f7549c0a303ed72`  
		Last Modified: Tue, 10 Oct 2017 12:14:24 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1016a7afe0425244ace2a91caa5f622b7f88453933a14ffae44e734e3b1fe35`  
		Last Modified: Fri, 13 Oct 2017 23:39:39 GMT  
		Size: 25.5 MB (25478139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117aabf2b729544e1981f8528a5909958c266066beb1962d5c5518a8c2ce53b`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ccf2f83738ad71d5cac7991b39125c950b9920d0bffbfb51b7596cf56f927e`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad98ad91e6c88bdeb2fa9de4572da87e0c1dac63d5841fbb7c2144616e8b287`  
		Last Modified: Fri, 13 Oct 2017 23:39:33 GMT  
		Size: 121.0 B  
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
$ docker pull ghost@sha256:d1b02c355bf28cf970727a0c4b55d22d840113d037c43736ddb0c100ebbf8837
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121394271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd48faf5c4117a142095a0d17bcd9d97286034ef931530adca289371826832`
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
# Tue, 10 Oct 2017 00:12:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 00:12:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 00:13:25 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 00:13:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 00:13:39 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 00:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 00:13:41 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:26:37 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 10 Oct 2017 02:26:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:26:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:26:39 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 10 Oct 2017 02:26:39 GMT
WORKDIR /usr/src/ghost
# Sat, 14 Oct 2017 14:22:29 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 14 Oct 2017 14:24:17 GMT
RUN set -ex; 		buildDeps=' 		g++ 		gcc 		libc6-dev 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 14 Oct 2017 14:24:18 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 14 Oct 2017 14:24:19 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 14 Oct 2017 14:24:19 GMT
VOLUME [/var/lib/ghost]
# Sat, 14 Oct 2017 14:24:20 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Sat, 14 Oct 2017 14:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Oct 2017 14:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 14:24:21 GMT
EXPOSE 2368/tcp
# Sat, 14 Oct 2017 14:24:21 GMT
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
	-	`sha256:87f1bb684d365256ba980e8fad148595e66d36ff8dc52f13e96f576528e289e3`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 119.1 KB (119142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245b4df2a786d664f3735b60a3a7590f201bbaa29fe173146da11951a3e7a97`  
		Last Modified: Tue, 10 Oct 2017 00:16:18 GMT  
		Size: 14.9 MB (14850112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520d9f89437e6f826e9efb0619b01710e5ee3c8e534a08c14a4eb3d53ec8b01`  
		Last Modified: Tue, 10 Oct 2017 00:16:15 GMT  
		Size: 996.9 KB (996941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23409a9cf82847a0039c07df06566d6b9675ae9594284f4cf8690398e0fddd8`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ec33db8ef2454b4f9be13464c6f66f10445c445afa2576b6259a82279d656`  
		Last Modified: Tue, 10 Oct 2017 02:29:09 GMT  
		Size: 486.8 KB (486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0ea7eba71f3463d9fbcc919c6ba5ea9e0906ad0a570ba4ed6f79fc97cda2`  
		Last Modified: Tue, 10 Oct 2017 02:29:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76dbf21c3eac4633a72cc014582d37a2bcb8e712f73b6af7fc971e458802f53`  
		Last Modified: Sat, 14 Oct 2017 14:24:47 GMT  
		Size: 32.7 MB (32671633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fcf3caa6e2ca4aebdd39880af62cb00522db9006bd2b7339d2bebcd1e6b4fb`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f0831d41d7d92b43f4393c2250ccb1f364d492794a9d6e0cef62cd27d0f4b`  
		Last Modified: Sat, 14 Oct 2017 14:24:40 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484fe966a322d8c689238c0c206bd3792218fa1fc63e188c4e981cf39ee2db0`  
		Last Modified: Sat, 14 Oct 2017 14:24:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.12-alpine`

```console
$ docker pull ghost@sha256:02e56e18feaa0186b8436814131bf09c1c384be840a56002f01392164de4abc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11.12-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:452e1b6133b7b16d2b7745e12da936e9b10c5c5c84c6a3551e520d8d7315d29c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45403710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb42c14d4e8e4da82c848f1bc00ad2e8e0ee981e2416fe524b02ecdb40ab4fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 04 Oct 2017 17:08:45 GMT
ENV NODE_VERSION=6.11.4
# Wed, 04 Oct 2017 17:20:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 04 Oct 2017 17:20:36 GMT
ENV YARN_VERSION=1.1.0
# Wed, 04 Oct 2017 17:20:45 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 04 Oct 2017 17:20:45 GMT
CMD ["node"]
# Wed, 04 Oct 2017 17:45:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Oct 2017 17:49:26 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 04 Oct 2017 17:49:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 04 Oct 2017 17:49:27 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:38:26 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:39:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:39:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:39:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:39:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:39:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:39:14 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:39:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b79b427dbd30683349ce35f989b5076288a6ff204c558ffb7ec58cfbc291d6c`  
		Last Modified: Wed, 04 Oct 2017 17:25:19 GMT  
		Size: 15.4 MB (15437868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea34b88591d828a50cead079541152975f679f3d6c3790808c2fd383e45d2a75`  
		Last Modified: Wed, 04 Oct 2017 17:25:16 GMT  
		Size: 1.0 MB (1005393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed0b664aaeb519166351313b5c60b50d2c193b04b1cbd02c2e86e5fbeb4bc6`  
		Last Modified: Wed, 04 Oct 2017 17:52:01 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01087c93ef4e691e668c1c585333870d83802910b8519f56a97a2d827539691c`  
		Last Modified: Wed, 04 Oct 2017 17:58:17 GMT  
		Size: 1.3 MB (1336096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47076571f8082fb15a7c631e543f4d27b7fc9c554af7a227ca379c27442241`  
		Last Modified: Wed, 04 Oct 2017 17:58:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a971461b383bbdf0cf9ab6868c8e72f8208ba5980ed08963d6ed368b5274da93`  
		Last Modified: Fri, 13 Oct 2017 23:40:16 GMT  
		Size: 25.2 MB (25230016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1e589e04df98a245f897725ef7b156e369fe98ceefebee3e6900465236323`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70832debcd994debcb11836f8fe5d4456750f5aa0f52acae0b3403247c9e1bf0`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:02e56e18feaa0186b8436814131bf09c1c384be840a56002f01392164de4abc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:452e1b6133b7b16d2b7745e12da936e9b10c5c5c84c6a3551e520d8d7315d29c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45403710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb42c14d4e8e4da82c848f1bc00ad2e8e0ee981e2416fe524b02ecdb40ab4fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 04 Oct 2017 17:08:45 GMT
ENV NODE_VERSION=6.11.4
# Wed, 04 Oct 2017 17:20:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 04 Oct 2017 17:20:36 GMT
ENV YARN_VERSION=1.1.0
# Wed, 04 Oct 2017 17:20:45 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 04 Oct 2017 17:20:45 GMT
CMD ["node"]
# Wed, 04 Oct 2017 17:45:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Oct 2017 17:49:26 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 04 Oct 2017 17:49:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 04 Oct 2017 17:49:27 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:38:26 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:39:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:39:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:39:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:39:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:39:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:39:14 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:39:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b79b427dbd30683349ce35f989b5076288a6ff204c558ffb7ec58cfbc291d6c`  
		Last Modified: Wed, 04 Oct 2017 17:25:19 GMT  
		Size: 15.4 MB (15437868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea34b88591d828a50cead079541152975f679f3d6c3790808c2fd383e45d2a75`  
		Last Modified: Wed, 04 Oct 2017 17:25:16 GMT  
		Size: 1.0 MB (1005393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed0b664aaeb519166351313b5c60b50d2c193b04b1cbd02c2e86e5fbeb4bc6`  
		Last Modified: Wed, 04 Oct 2017 17:52:01 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01087c93ef4e691e668c1c585333870d83802910b8519f56a97a2d827539691c`  
		Last Modified: Wed, 04 Oct 2017 17:58:17 GMT  
		Size: 1.3 MB (1336096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47076571f8082fb15a7c631e543f4d27b7fc9c554af7a227ca379c27442241`  
		Last Modified: Wed, 04 Oct 2017 17:58:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a971461b383bbdf0cf9ab6868c8e72f8208ba5980ed08963d6ed368b5274da93`  
		Last Modified: Fri, 13 Oct 2017 23:40:16 GMT  
		Size: 25.2 MB (25230016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1e589e04df98a245f897725ef7b156e369fe98ceefebee3e6900465236323`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70832debcd994debcb11836f8fe5d4456750f5aa0f52acae0b3403247c9e1bf0`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:02e56e18feaa0186b8436814131bf09c1c384be840a56002f01392164de4abc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:452e1b6133b7b16d2b7745e12da936e9b10c5c5c84c6a3551e520d8d7315d29c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45403710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb42c14d4e8e4da82c848f1bc00ad2e8e0ee981e2416fe524b02ecdb40ab4fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 04 Oct 2017 17:08:45 GMT
ENV NODE_VERSION=6.11.4
# Wed, 04 Oct 2017 17:20:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 04 Oct 2017 17:20:36 GMT
ENV YARN_VERSION=1.1.0
# Wed, 04 Oct 2017 17:20:45 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 04 Oct 2017 17:20:45 GMT
CMD ["node"]
# Wed, 04 Oct 2017 17:45:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Oct 2017 17:49:26 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 04 Oct 2017 17:49:27 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 04 Oct 2017 17:49:27 GMT
WORKDIR /usr/src/ghost
# Fri, 13 Oct 2017 23:38:26 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 13 Oct 2017 23:39:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 13 Oct 2017 23:39:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 13 Oct 2017 23:39:13 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 13 Oct 2017 23:39:13 GMT
VOLUME [/var/lib/ghost]
# Fri, 13 Oct 2017 23:39:13 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:39:14 GMT
EXPOSE 2368/tcp
# Fri, 13 Oct 2017 23:39:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b79b427dbd30683349ce35f989b5076288a6ff204c558ffb7ec58cfbc291d6c`  
		Last Modified: Wed, 04 Oct 2017 17:25:19 GMT  
		Size: 15.4 MB (15437868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea34b88591d828a50cead079541152975f679f3d6c3790808c2fd383e45d2a75`  
		Last Modified: Wed, 04 Oct 2017 17:25:16 GMT  
		Size: 1.0 MB (1005393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed0b664aaeb519166351313b5c60b50d2c193b04b1cbd02c2e86e5fbeb4bc6`  
		Last Modified: Wed, 04 Oct 2017 17:52:01 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01087c93ef4e691e668c1c585333870d83802910b8519f56a97a2d827539691c`  
		Last Modified: Wed, 04 Oct 2017 17:58:17 GMT  
		Size: 1.3 MB (1336096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47076571f8082fb15a7c631e543f4d27b7fc9c554af7a227ca379c27442241`  
		Last Modified: Wed, 04 Oct 2017 17:58:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a971461b383bbdf0cf9ab6868c8e72f8208ba5980ed08963d6ed368b5274da93`  
		Last Modified: Fri, 13 Oct 2017 23:40:16 GMT  
		Size: 25.2 MB (25230016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1e589e04df98a245f897725ef7b156e369fe98ceefebee3e6900465236323`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70832debcd994debcb11836f8fe5d4456750f5aa0f52acae0b3403247c9e1bf0`  
		Last Modified: Fri, 13 Oct 2017 23:40:10 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1`

```console
$ docker pull ghost@sha256:e6efefe33899f1e980e94b700969e925f3fd489bd7163d52db55f1b8e2cef0c5
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
$ docker pull ghost@sha256:b7fea675abff5eb72096c5dfecaa357088f2bb32dcb92681baddd9d53a1792c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214279059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80af62d19944d199573703a53a356a8945db632ec761e39e82a108c7b9efc32b`
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
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:29:19 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 06:29:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:29:54 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 06:29:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:29:59 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:10:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:10:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:10:15 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 12:10:15 GMT
ENV NODE_ENV=production
# Tue, 10 Oct 2017 19:38:50 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Tue, 10 Oct 2017 19:38:50 GMT
ENV GHOST_VERSION=1.13.0
# Tue, 10 Oct 2017 19:39:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 10 Oct 2017 19:39:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Oct 2017 19:39:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Oct 2017 19:40:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 10 Oct 2017 19:40:08 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Oct 2017 19:40:08 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Oct 2017 19:40:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 10 Oct 2017 19:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 19:40:09 GMT
EXPOSE 2368/tcp
# Tue, 10 Oct 2017 19:40:09 GMT
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
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bca85b329c3da5887544c28c8d76eaaa85df35062ac6f9d62cb0ab7a124d0`  
		Last Modified: Tue, 10 Oct 2017 07:14:01 GMT  
		Size: 14.7 MB (14716799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd41b4aac0d7b2fee194faff80ccdb75128292cb89e6afa80f75aceb65553fa`  
		Last Modified: Tue, 10 Oct 2017 07:13:57 GMT  
		Size: 996.9 KB (996938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0738ff7ccda7c21c646cc2d21cea879b940218aecd4c611c50ccd988d4076da4`  
		Last Modified: Tue, 10 Oct 2017 12:13:29 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b858c25f0178e5d2e881c653ee48167ef19bc3a552b1a6e367cc90a8253ec2`  
		Last Modified: Tue, 10 Oct 2017 19:41:58 GMT  
		Size: 32.2 MB (32162443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6996e4ddc8c330097c88c8e71b120347f939e88f7f1847001d3939738dde29`  
		Last Modified: Tue, 10 Oct 2017 19:42:15 GMT  
		Size: 93.9 MB (93919034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20c0fc2aadde2edcb1aef280b447a8c69cc6dd5fd1e4bd8d44ff4da3fb23fe9`  
		Last Modified: Tue, 10 Oct 2017 19:41:51 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:cb13e1c0fe61c0ac8f4327b3c9848356c3d8e2bd3608ae5827da85a5e2431300
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198537751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d2d9b61118f78e895d910b24951f6a8eedc149b5b2e4eebaed5ce1dfe37570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Oct 2017 02:12:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:13:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:13:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 02:13:04 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 11:55:30 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 11:55:30 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 11:56:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 11:56:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 11:56:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 11:57:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 11:57:54 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 11:57:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 11:57:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 11:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 11:57:55 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 11:57:55 GMT
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
	-	`sha256:8a7e4b5e2648089806d5db80867d8cbf9810e7ca2acecd3ca183224d3d40d8fc`  
		Last Modified: Tue, 10 Oct 2017 02:19:53 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e283bfd99f8374185a49549f645335718a1b4fc34d436515fe209dd02b792bd`  
		Last Modified: Wed, 11 Oct 2017 11:58:23 GMT  
		Size: 27.0 MB (26958522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3fb771497a0c17cafa6d96e6069357069785e2d20b765877bba244dca1d06`  
		Last Modified: Wed, 11 Oct 2017 11:58:46 GMT  
		Size: 89.2 MB (89155033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffb79412ec65e0af01484fbea754f95294670709e3511f4544d1e83afffe75`  
		Last Modified: Wed, 11 Oct 2017 11:58:13 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a864ccf5ed763de50863d71f6c5cc1e57c141686ee9e6849178d402b6cd1a4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201078391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938eae7651be303e49393befc99cfb7acf7cc47c4231ae26f3c113df11233d25`
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
# Tue, 10 Oct 2017 14:15:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:15:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 14:15:40 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 10:41:41 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 10:41:42 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 10:43:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 10:43:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 10:43:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 10:45:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 10:45:34 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 10:45:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 10:45:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 10:45:39 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 10:45:40 GMT
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
	-	`sha256:0ab18b451472db7e443429fbbfcf2caab71d7eecef293a9706339166dc52fb22`  
		Last Modified: Tue, 10 Oct 2017 14:26:05 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a537dbae072432fad18c20f80c39108ca81a6634068de8988cefcb0df55ac99`  
		Last Modified: Wed, 11 Oct 2017 10:46:14 GMT  
		Size: 27.0 MB (26959678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4beab5a86a28d0bbc29c19f07be2c21e319f33b2ab27e3803f595a4538bb4c`  
		Last Modified: Wed, 11 Oct 2017 10:46:41 GMT  
		Size: 89.2 MB (89153457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad8920ff94b28bd3bc016c4057314e8e93fd5cec8bcb382c1ffd48643655028`  
		Last Modified: Wed, 11 Oct 2017 10:46:02 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; ppc64le

```console
$ docker pull ghost@sha256:1d953118ab1e9dfb7c1e33338fe1d4170c92e6a69c57f0344d956eb6e75795cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203190731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53489dd4712232fdcb039a392429876b10147ef6606944bdb231fa80f045b148`
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
# Wed, 11 Oct 2017 01:26:37 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 01:27:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 01:28:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 01:28:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 01:29:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 01:29:44 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 01:29:46 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 01:29:49 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 01:29:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 01:29:57 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 01:30:06 GMT
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
	-	`sha256:090760193e216556990648689d6f541d7fe9b4afce56725cdce90d02e48c0700`  
		Last Modified: Wed, 11 Oct 2017 01:30:46 GMT  
		Size: 27.0 MB (26957799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4256a777dbeee59c4beac1d25b610536cdef9db62d0db15ac88dabf2bce45f89`  
		Last Modified: Wed, 11 Oct 2017 01:31:04 GMT  
		Size: 89.2 MB (89154126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb10841c61e25b3fa76f125a0149cd6cbca7cd65e37bc4c498ab5bd35f02b28`  
		Last Modified: Wed, 11 Oct 2017 01:30:38 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:1` - linux; s390x

```console
$ docker pull ghost@sha256:f7a1fd842b069ac9d69ba55cba17c9e31e698e013cca8e8194d3124dac5fb81c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205918805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d305c4058423871f7db6105da764f02c93a8c5eb05241649b65d4cb68d23f`
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
# Tue, 10 Oct 2017 00:12:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 00:12:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 00:13:25 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 00:13:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 00:13:39 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 00:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 00:13:41 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:25:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:25:17 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 02:25:17 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 14:22:29 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 14:22:29 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 14:22:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 14:22:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 14:22:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 14:23:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 14:23:45 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 14:23:45 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 14:23:45 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 14:23:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 14:23:46 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 14:23:46 GMT
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
	-	`sha256:87f1bb684d365256ba980e8fad148595e66d36ff8dc52f13e96f576528e289e3`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 119.1 KB (119142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245b4df2a786d664f3735b60a3a7590f201bbaa29fe173146da11951a3e7a97`  
		Last Modified: Tue, 10 Oct 2017 00:16:18 GMT  
		Size: 14.9 MB (14850112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520d9f89437e6f826e9efb0619b01710e5ee3c8e534a08c14a4eb3d53ec8b01`  
		Last Modified: Tue, 10 Oct 2017 00:16:15 GMT  
		Size: 996.9 KB (996941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a07874b149a2613bad5bac12739f746de6279c3e99e39be93ad016950bec620`  
		Last Modified: Tue, 10 Oct 2017 02:28:30 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303635a809c377d769a0d8f79d4b07d8b38ba26178119564534b4487a220207`  
		Last Modified: Wed, 11 Oct 2017 14:24:22 GMT  
		Size: 28.0 MB (28046322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdca910ec7ab22f72c93a556207eba5ddb0ef8611d24024a83454f785ba3988a`  
		Last Modified: Wed, 11 Oct 2017 14:24:28 GMT  
		Size: 89.2 MB (89154836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235f1565faac50bdc694e8510ed64fbe207524f7a05762216c4ca898c632476b`  
		Last Modified: Wed, 11 Oct 2017 14:24:11 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:1.14`

**does not exist** (yet?)

## `ghost:1.14.0`

**does not exist** (yet?)

## `ghost:1.14.0-alpine`

**does not exist** (yet?)

## `ghost:1.14-alpine`

**does not exist** (yet?)

## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:17f3c5f1c27e9801f63187a266656771c8cf5a3d2d2e2c917cc7411d44034618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5a6ead8ac7f9e3bfd7f052cafa3ab2b39a9f0be02d822010365e1bbb5081a20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146012279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d308c609498b8f061ac20b6fccbdd6ee64a86c4e265d03b4e03e3c1ea1f6a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 04 Oct 2017 17:08:45 GMT
ENV NODE_VERSION=6.11.4
# Wed, 04 Oct 2017 17:20:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 04 Oct 2017 17:20:36 GMT
ENV YARN_VERSION=1.1.0
# Wed, 04 Oct 2017 17:20:45 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 04 Oct 2017 17:20:45 GMT
CMD ["node"]
# Wed, 04 Oct 2017 17:45:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Oct 2017 17:45:20 GMT
RUN apk add --no-cache 		bash
# Wed, 04 Oct 2017 17:45:20 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 04 Oct 2017 17:45:20 GMT
ENV NODE_ENV=production
# Tue, 10 Oct 2017 19:40:18 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Tue, 10 Oct 2017 19:40:18 GMT
ENV GHOST_VERSION=1.13.0
# Tue, 10 Oct 2017 19:40:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 10 Oct 2017 19:40:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Oct 2017 19:40:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Oct 2017 19:41:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 10 Oct 2017 19:41:29 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Oct 2017 19:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Oct 2017 19:41:30 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 10 Oct 2017 19:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 19:41:30 GMT
EXPOSE 2368/tcp
# Tue, 10 Oct 2017 19:41:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b79b427dbd30683349ce35f989b5076288a6ff204c558ffb7ec58cfbc291d6c`  
		Last Modified: Wed, 04 Oct 2017 17:25:19 GMT  
		Size: 15.4 MB (15437868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea34b88591d828a50cead079541152975f679f3d6c3790808c2fd383e45d2a75`  
		Last Modified: Wed, 04 Oct 2017 17:25:16 GMT  
		Size: 1.0 MB (1005393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed0b664aaeb519166351313b5c60b50d2c193b04b1cbd02c2e86e5fbeb4bc6`  
		Last Modified: Wed, 04 Oct 2017 17:52:01 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3eafbd96a9462e98baa5decbcf9f275d998b26125f7bb620b965f1941b29acc`  
		Last Modified: Wed, 04 Oct 2017 17:52:07 GMT  
		Size: 1.1 MB (1095589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90910e0a0a019086a215095d3b93c1721eb90569d853430366d9dfd44108af`  
		Last Modified: Tue, 10 Oct 2017 19:43:09 GMT  
		Size: 32.2 MB (32161180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbef015fd269cac89130cea0bbdcfea7c1e93a7e67f9fee440d03c4bdb51218`  
		Last Modified: Tue, 10 Oct 2017 19:43:20 GMT  
		Size: 93.9 MB (93918325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6208036a9f48c050be34b3dc95da04463fe6628e184dcdcd2f26ac1bb55b83`  
		Last Modified: Tue, 10 Oct 2017 19:43:00 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:17f3c5f1c27e9801f63187a266656771c8cf5a3d2d2e2c917cc7411d44034618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:5a6ead8ac7f9e3bfd7f052cafa3ab2b39a9f0be02d822010365e1bbb5081a20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146012279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d308c609498b8f061ac20b6fccbdd6ee64a86c4e265d03b4e03e3c1ea1f6a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 04 Oct 2017 17:08:45 GMT
ENV NODE_VERSION=6.11.4
# Wed, 04 Oct 2017 17:20:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 04 Oct 2017 17:20:36 GMT
ENV YARN_VERSION=1.1.0
# Wed, 04 Oct 2017 17:20:45 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 04 Oct 2017 17:20:45 GMT
CMD ["node"]
# Wed, 04 Oct 2017 17:45:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Oct 2017 17:45:20 GMT
RUN apk add --no-cache 		bash
# Wed, 04 Oct 2017 17:45:20 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 04 Oct 2017 17:45:20 GMT
ENV NODE_ENV=production
# Tue, 10 Oct 2017 19:40:18 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Tue, 10 Oct 2017 19:40:18 GMT
ENV GHOST_VERSION=1.13.0
# Tue, 10 Oct 2017 19:40:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 10 Oct 2017 19:40:49 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Oct 2017 19:40:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Oct 2017 19:41:28 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 10 Oct 2017 19:41:29 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Oct 2017 19:41:30 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Oct 2017 19:41:30 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 10 Oct 2017 19:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 19:41:30 GMT
EXPOSE 2368/tcp
# Tue, 10 Oct 2017 19:41:30 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b79b427dbd30683349ce35f989b5076288a6ff204c558ffb7ec58cfbc291d6c`  
		Last Modified: Wed, 04 Oct 2017 17:25:19 GMT  
		Size: 15.4 MB (15437868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea34b88591d828a50cead079541152975f679f3d6c3790808c2fd383e45d2a75`  
		Last Modified: Wed, 04 Oct 2017 17:25:16 GMT  
		Size: 1.0 MB (1005393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed0b664aaeb519166351313b5c60b50d2c193b04b1cbd02c2e86e5fbeb4bc6`  
		Last Modified: Wed, 04 Oct 2017 17:52:01 GMT  
		Size: 8.4 KB (8363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3eafbd96a9462e98baa5decbcf9f275d998b26125f7bb620b965f1941b29acc`  
		Last Modified: Wed, 04 Oct 2017 17:52:07 GMT  
		Size: 1.1 MB (1095589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90910e0a0a019086a215095d3b93c1721eb90569d853430366d9dfd44108af`  
		Last Modified: Tue, 10 Oct 2017 19:43:09 GMT  
		Size: 32.2 MB (32161180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbef015fd269cac89130cea0bbdcfea7c1e93a7e67f9fee440d03c4bdb51218`  
		Last Modified: Tue, 10 Oct 2017 19:43:20 GMT  
		Size: 93.9 MB (93918325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6208036a9f48c050be34b3dc95da04463fe6628e184dcdcd2f26ac1bb55b83`  
		Last Modified: Tue, 10 Oct 2017 19:43:00 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:e6efefe33899f1e980e94b700969e925f3fd489bd7163d52db55f1b8e2cef0c5
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
$ docker pull ghost@sha256:b7fea675abff5eb72096c5dfecaa357088f2bb32dcb92681baddd9d53a1792c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214279059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80af62d19944d199573703a53a356a8945db632ec761e39e82a108c7b9efc32b`
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
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:29:19 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 06:29:54 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:29:54 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 06:29:59 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:29:59 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:10:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 12:10:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 12:10:15 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 12:10:15 GMT
ENV NODE_ENV=production
# Tue, 10 Oct 2017 19:38:50 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Tue, 10 Oct 2017 19:38:50 GMT
ENV GHOST_VERSION=1.13.0
# Tue, 10 Oct 2017 19:39:27 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 10 Oct 2017 19:39:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Oct 2017 19:39:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Oct 2017 19:40:07 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 10 Oct 2017 19:40:08 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Oct 2017 19:40:08 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Oct 2017 19:40:08 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 10 Oct 2017 19:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 19:40:09 GMT
EXPOSE 2368/tcp
# Tue, 10 Oct 2017 19:40:09 GMT
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
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bca85b329c3da5887544c28c8d76eaaa85df35062ac6f9d62cb0ab7a124d0`  
		Last Modified: Tue, 10 Oct 2017 07:14:01 GMT  
		Size: 14.7 MB (14716799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd41b4aac0d7b2fee194faff80ccdb75128292cb89e6afa80f75aceb65553fa`  
		Last Modified: Tue, 10 Oct 2017 07:13:57 GMT  
		Size: 996.9 KB (996938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0738ff7ccda7c21c646cc2d21cea879b940218aecd4c611c50ccd988d4076da4`  
		Last Modified: Tue, 10 Oct 2017 12:13:29 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b858c25f0178e5d2e881c653ee48167ef19bc3a552b1a6e367cc90a8253ec2`  
		Last Modified: Tue, 10 Oct 2017 19:41:58 GMT  
		Size: 32.2 MB (32162443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6996e4ddc8c330097c88c8e71b120347f939e88f7f1847001d3939738dde29`  
		Last Modified: Tue, 10 Oct 2017 19:42:15 GMT  
		Size: 93.9 MB (93919034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20c0fc2aadde2edcb1aef280b447a8c69cc6dd5fd1e4bd8d44ff4da3fb23fe9`  
		Last Modified: Tue, 10 Oct 2017 19:41:51 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:cb13e1c0fe61c0ac8f4327b3c9848356c3d8e2bd3608ae5827da85a5e2431300
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198537751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d2d9b61118f78e895d910b24951f6a8eedc149b5b2e4eebaed5ce1dfe37570`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Oct 2017 02:12:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:13:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:13:03 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 02:13:04 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 11:55:30 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 11:55:30 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 11:56:29 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 11:56:30 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 11:56:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 11:57:52 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 11:57:54 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 11:57:54 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 11:57:55 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 11:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 11:57:55 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 11:57:55 GMT
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
	-	`sha256:8a7e4b5e2648089806d5db80867d8cbf9810e7ca2acecd3ca183224d3d40d8fc`  
		Last Modified: Tue, 10 Oct 2017 02:19:53 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e283bfd99f8374185a49549f645335718a1b4fc34d436515fe209dd02b792bd`  
		Last Modified: Wed, 11 Oct 2017 11:58:23 GMT  
		Size: 27.0 MB (26958522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3fb771497a0c17cafa6d96e6069357069785e2d20b765877bba244dca1d06`  
		Last Modified: Wed, 11 Oct 2017 11:58:46 GMT  
		Size: 89.2 MB (89155033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ffb79412ec65e0af01484fbea754f95294670709e3511f4544d1e83afffe75`  
		Last Modified: Wed, 11 Oct 2017 11:58:13 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a864ccf5ed763de50863d71f6c5cc1e57c141686ee9e6849178d402b6cd1a4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201078391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938eae7651be303e49393befc99cfb7acf7cc47c4231ae26f3c113df11233d25`
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
# Tue, 10 Oct 2017 14:15:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 14:15:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 14:15:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 14:15:40 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 10:41:41 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 10:41:42 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 10:43:12 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 10:43:15 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 10:43:16 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 10:45:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 10:45:34 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 10:45:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 10:45:36 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 10:45:39 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 10:45:40 GMT
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
	-	`sha256:0ab18b451472db7e443429fbbfcf2caab71d7eecef293a9706339166dc52fb22`  
		Last Modified: Tue, 10 Oct 2017 14:26:05 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a537dbae072432fad18c20f80c39108ca81a6634068de8988cefcb0df55ac99`  
		Last Modified: Wed, 11 Oct 2017 10:46:14 GMT  
		Size: 27.0 MB (26959678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4beab5a86a28d0bbc29c19f07be2c21e319f33b2ab27e3803f595a4538bb4c`  
		Last Modified: Wed, 11 Oct 2017 10:46:41 GMT  
		Size: 89.2 MB (89153457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad8920ff94b28bd3bc016c4057314e8e93fd5cec8bcb382c1ffd48643655028`  
		Last Modified: Wed, 11 Oct 2017 10:46:02 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:1d953118ab1e9dfb7c1e33338fe1d4170c92e6a69c57f0344d956eb6e75795cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203190731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53489dd4712232fdcb039a392429876b10147ef6606944bdb231fa80f045b148`
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
# Wed, 11 Oct 2017 01:26:37 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 01:27:55 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 01:28:00 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 01:28:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 01:29:40 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 01:29:44 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 01:29:46 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 01:29:49 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 01:29:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 01:29:57 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 01:30:06 GMT
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
	-	`sha256:090760193e216556990648689d6f541d7fe9b4afce56725cdce90d02e48c0700`  
		Last Modified: Wed, 11 Oct 2017 01:30:46 GMT  
		Size: 27.0 MB (26957799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4256a777dbeee59c4beac1d25b610536cdef9db62d0db15ac88dabf2bce45f89`  
		Last Modified: Wed, 11 Oct 2017 01:31:04 GMT  
		Size: 89.2 MB (89154126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb10841c61e25b3fa76f125a0149cd6cbca7cd65e37bc4c498ab5bd35f02b28`  
		Last Modified: Wed, 11 Oct 2017 01:30:38 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; s390x

```console
$ docker pull ghost@sha256:f7a1fd842b069ac9d69ba55cba17c9e31e698e013cca8e8194d3124dac5fb81c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205918805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d305c4058423871f7db6105da764f02c93a8c5eb05241649b65d4cb68d23f`
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
# Tue, 10 Oct 2017 00:12:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 00:12:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 00:13:25 GMT
ENV NODE_VERSION=6.11.4
# Tue, 10 Oct 2017 00:13:39 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 00:13:39 GMT
ENV YARN_VERSION=1.1.0
# Tue, 10 Oct 2017 00:13:41 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 00:13:41 GMT
CMD ["node"]
# Tue, 10 Oct 2017 02:25:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 10 Oct 2017 02:25:17 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 10 Oct 2017 02:25:17 GMT
ENV NODE_ENV=production
# Wed, 11 Oct 2017 14:22:29 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 11 Oct 2017 14:22:29 GMT
ENV GHOST_VERSION=1.13.0
# Wed, 11 Oct 2017 14:22:54 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 11 Oct 2017 14:22:55 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Oct 2017 14:22:55 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Oct 2017 14:23:43 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 11 Oct 2017 14:23:45 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Oct 2017 14:23:45 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Oct 2017 14:23:45 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Wed, 11 Oct 2017 14:23:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Oct 2017 14:23:46 GMT
EXPOSE 2368/tcp
# Wed, 11 Oct 2017 14:23:46 GMT
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
	-	`sha256:87f1bb684d365256ba980e8fad148595e66d36ff8dc52f13e96f576528e289e3`  
		Last Modified: Tue, 10 Oct 2017 00:14:44 GMT  
		Size: 119.1 KB (119142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245b4df2a786d664f3735b60a3a7590f201bbaa29fe173146da11951a3e7a97`  
		Last Modified: Tue, 10 Oct 2017 00:16:18 GMT  
		Size: 14.9 MB (14850112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520d9f89437e6f826e9efb0619b01710e5ee3c8e534a08c14a4eb3d53ec8b01`  
		Last Modified: Tue, 10 Oct 2017 00:16:15 GMT  
		Size: 996.9 KB (996941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a07874b149a2613bad5bac12739f746de6279c3e99e39be93ad016950bec620`  
		Last Modified: Tue, 10 Oct 2017 02:28:30 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303635a809c377d769a0d8f79d4b07d8b38ba26178119564534b4487a220207`  
		Last Modified: Wed, 11 Oct 2017 14:24:22 GMT  
		Size: 28.0 MB (28046322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdca910ec7ab22f72c93a556207eba5ddb0ef8611d24024a83454f785ba3988a`  
		Last Modified: Wed, 11 Oct 2017 14:24:28 GMT  
		Size: 89.2 MB (89154836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235f1565faac50bdc694e8510ed64fbe207524f7a05762216c4ca898c632476b`  
		Last Modified: Wed, 11 Oct 2017 14:24:11 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
