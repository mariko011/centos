<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.10`](#ghost01110)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:0.11.10-alpine`](#ghost01110-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:alpine`](#ghostalpine)

## `ghost:0.11.10`

```console
$ docker pull ghost@sha256:5add1a3045933c4025d7633bd79c32aa3e9ea0a2cab9112d56fd4e31357a1201
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112042942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708390792a1b07e384cfa46ce342824c288d126d008985a5da4e40fdd17dc37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 16:30:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 08 Jun 2017 16:30:58 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 08 Jun 2017 16:30:58 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 08 Jun 2017 17:13:14 GMT
ENV NODE_VERSION=4.8.3
# Thu, 08 Jun 2017 17:13:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Jun 2017 17:14:02 GMT
ENV YARN_VERSION=0.24.4
# Thu, 08 Jun 2017 17:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Jun 2017 17:14:07 GMT
CMD ["node"]
# Thu, 08 Jun 2017 19:09:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 08 Jun 2017 19:10:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:10:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Jun 2017 19:10:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 08 Jun 2017 19:10:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 22:13:17 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 22:14:21 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 22:14:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 22:14:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 22:14:26 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 22:14:27 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Jun 2017 22:14:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Jun 2017 22:14:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 22:14:30 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 22:14:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4fe3d757fe6bf0cb84cc7e817e2a65cefa7f8aa64f047aabf158b16991397a`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5497c1f62f70aab76c04ca76cefa31f1372f3f0f0eaf0cd4db2a71804a69cbd9`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 119.2 KB (119155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d7f18c743ffdd06d3d83d968ed35c9df7f88e29626c9051740e52ec86f9d18`  
		Last Modified: Thu, 08 Jun 2017 17:47:43 GMT  
		Size: 12.6 MB (12572525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98b4b635355ff799f74124844bf1e37b914d651e72cc0f75fda76738b6c9764`  
		Last Modified: Thu, 08 Jun 2017 17:47:38 GMT  
		Size: 900.6 KB (900595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0308bca9ada688673abde637f426f45597d74118c2627ec1e14b9fd3b44bc6`  
		Last Modified: Thu, 08 Jun 2017 19:14:12 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da87b7aa499558936f911aa63ae4f62c03a7874de838a206e5685661bfcf4b09`  
		Last Modified: Thu, 08 Jun 2017 19:14:09 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9949c0cb00b73ebea0d07fa11493552a3ad0765fa4c0d15a9a5082d9cc5a00`  
		Last Modified: Thu, 08 Jun 2017 19:14:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d92bcc9ea00be55ecfe764f1156de5a112a92b6d9ed8d78cebb2f82d7cc3580`  
		Last Modified: Fri, 16 Jun 2017 23:29:08 GMT  
		Size: 25.8 MB (25790801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d983ea3146affcb02da01c24c59a20f1c653c35477f7ea8673b8a755581f3`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03df9483b3a46ee2cdb554ea1e4f0b5bd83a11239450ee5c6685250a477d3ba`  
		Last Modified: Fri, 16 Jun 2017 23:28:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8063cf17f573e478e71a3c1159b5c2285ea24d44000f21454c084a7536b6fa`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:5add1a3045933c4025d7633bd79c32aa3e9ea0a2cab9112d56fd4e31357a1201
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112042942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708390792a1b07e384cfa46ce342824c288d126d008985a5da4e40fdd17dc37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 16:30:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 08 Jun 2017 16:30:58 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 08 Jun 2017 16:30:58 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 08 Jun 2017 17:13:14 GMT
ENV NODE_VERSION=4.8.3
# Thu, 08 Jun 2017 17:13:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Jun 2017 17:14:02 GMT
ENV YARN_VERSION=0.24.4
# Thu, 08 Jun 2017 17:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Jun 2017 17:14:07 GMT
CMD ["node"]
# Thu, 08 Jun 2017 19:09:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 08 Jun 2017 19:10:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:10:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Jun 2017 19:10:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 08 Jun 2017 19:10:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 22:13:17 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 22:14:21 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 22:14:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 22:14:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 22:14:26 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 22:14:27 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Jun 2017 22:14:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Jun 2017 22:14:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 22:14:30 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 22:14:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4fe3d757fe6bf0cb84cc7e817e2a65cefa7f8aa64f047aabf158b16991397a`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5497c1f62f70aab76c04ca76cefa31f1372f3f0f0eaf0cd4db2a71804a69cbd9`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 119.2 KB (119155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d7f18c743ffdd06d3d83d968ed35c9df7f88e29626c9051740e52ec86f9d18`  
		Last Modified: Thu, 08 Jun 2017 17:47:43 GMT  
		Size: 12.6 MB (12572525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98b4b635355ff799f74124844bf1e37b914d651e72cc0f75fda76738b6c9764`  
		Last Modified: Thu, 08 Jun 2017 17:47:38 GMT  
		Size: 900.6 KB (900595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0308bca9ada688673abde637f426f45597d74118c2627ec1e14b9fd3b44bc6`  
		Last Modified: Thu, 08 Jun 2017 19:14:12 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da87b7aa499558936f911aa63ae4f62c03a7874de838a206e5685661bfcf4b09`  
		Last Modified: Thu, 08 Jun 2017 19:14:09 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9949c0cb00b73ebea0d07fa11493552a3ad0765fa4c0d15a9a5082d9cc5a00`  
		Last Modified: Thu, 08 Jun 2017 19:14:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d92bcc9ea00be55ecfe764f1156de5a112a92b6d9ed8d78cebb2f82d7cc3580`  
		Last Modified: Fri, 16 Jun 2017 23:29:08 GMT  
		Size: 25.8 MB (25790801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d983ea3146affcb02da01c24c59a20f1c653c35477f7ea8673b8a755581f3`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03df9483b3a46ee2cdb554ea1e4f0b5bd83a11239450ee5c6685250a477d3ba`  
		Last Modified: Fri, 16 Jun 2017 23:28:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8063cf17f573e478e71a3c1159b5c2285ea24d44000f21454c084a7536b6fa`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:5add1a3045933c4025d7633bd79c32aa3e9ea0a2cab9112d56fd4e31357a1201
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112042942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708390792a1b07e384cfa46ce342824c288d126d008985a5da4e40fdd17dc37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 16:30:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 08 Jun 2017 16:30:58 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 08 Jun 2017 16:30:58 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 08 Jun 2017 17:13:14 GMT
ENV NODE_VERSION=4.8.3
# Thu, 08 Jun 2017 17:13:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Jun 2017 17:14:02 GMT
ENV YARN_VERSION=0.24.4
# Thu, 08 Jun 2017 17:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Jun 2017 17:14:07 GMT
CMD ["node"]
# Thu, 08 Jun 2017 19:09:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 08 Jun 2017 19:10:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:10:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Jun 2017 19:10:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 08 Jun 2017 19:10:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 22:13:17 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 22:14:21 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 22:14:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 22:14:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 22:14:26 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 22:14:27 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Jun 2017 22:14:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Jun 2017 22:14:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 22:14:30 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 22:14:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4fe3d757fe6bf0cb84cc7e817e2a65cefa7f8aa64f047aabf158b16991397a`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5497c1f62f70aab76c04ca76cefa31f1372f3f0f0eaf0cd4db2a71804a69cbd9`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 119.2 KB (119155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d7f18c743ffdd06d3d83d968ed35c9df7f88e29626c9051740e52ec86f9d18`  
		Last Modified: Thu, 08 Jun 2017 17:47:43 GMT  
		Size: 12.6 MB (12572525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98b4b635355ff799f74124844bf1e37b914d651e72cc0f75fda76738b6c9764`  
		Last Modified: Thu, 08 Jun 2017 17:47:38 GMT  
		Size: 900.6 KB (900595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0308bca9ada688673abde637f426f45597d74118c2627ec1e14b9fd3b44bc6`  
		Last Modified: Thu, 08 Jun 2017 19:14:12 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da87b7aa499558936f911aa63ae4f62c03a7874de838a206e5685661bfcf4b09`  
		Last Modified: Thu, 08 Jun 2017 19:14:09 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9949c0cb00b73ebea0d07fa11493552a3ad0765fa4c0d15a9a5082d9cc5a00`  
		Last Modified: Thu, 08 Jun 2017 19:14:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d92bcc9ea00be55ecfe764f1156de5a112a92b6d9ed8d78cebb2f82d7cc3580`  
		Last Modified: Fri, 16 Jun 2017 23:29:08 GMT  
		Size: 25.8 MB (25790801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d983ea3146affcb02da01c24c59a20f1c653c35477f7ea8673b8a755581f3`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03df9483b3a46ee2cdb554ea1e4f0b5bd83a11239450ee5c6685250a477d3ba`  
		Last Modified: Fri, 16 Jun 2017 23:28:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8063cf17f573e478e71a3c1159b5c2285ea24d44000f21454c084a7536b6fa`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:5add1a3045933c4025d7633bd79c32aa3e9ea0a2cab9112d56fd4e31357a1201
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112042942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708390792a1b07e384cfa46ce342824c288d126d008985a5da4e40fdd17dc37a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 16:30:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 08 Jun 2017 16:30:58 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 08 Jun 2017 16:30:58 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 08 Jun 2017 17:13:14 GMT
ENV NODE_VERSION=4.8.3
# Thu, 08 Jun 2017 17:13:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Jun 2017 17:14:02 GMT
ENV YARN_VERSION=0.24.4
# Thu, 08 Jun 2017 17:14:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Jun 2017 17:14:07 GMT
CMD ["node"]
# Thu, 08 Jun 2017 19:09:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 08 Jun 2017 19:10:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:10:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Jun 2017 19:10:55 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 08 Jun 2017 19:10:56 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 22:13:17 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 22:14:21 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 22:14:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 22:14:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 22:14:26 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 22:14:27 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 16 Jun 2017 22:14:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Jun 2017 22:14:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 22:14:30 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 22:14:31 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4fe3d757fe6bf0cb84cc7e817e2a65cefa7f8aa64f047aabf158b16991397a`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5497c1f62f70aab76c04ca76cefa31f1372f3f0f0eaf0cd4db2a71804a69cbd9`  
		Last Modified: Thu, 08 Jun 2017 17:23:30 GMT  
		Size: 119.2 KB (119155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d7f18c743ffdd06d3d83d968ed35c9df7f88e29626c9051740e52ec86f9d18`  
		Last Modified: Thu, 08 Jun 2017 17:47:43 GMT  
		Size: 12.6 MB (12572525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98b4b635355ff799f74124844bf1e37b914d651e72cc0f75fda76738b6c9764`  
		Last Modified: Thu, 08 Jun 2017 17:47:38 GMT  
		Size: 900.6 KB (900595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0308bca9ada688673abde637f426f45597d74118c2627ec1e14b9fd3b44bc6`  
		Last Modified: Thu, 08 Jun 2017 19:14:12 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da87b7aa499558936f911aa63ae4f62c03a7874de838a206e5685661bfcf4b09`  
		Last Modified: Thu, 08 Jun 2017 19:14:09 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9949c0cb00b73ebea0d07fa11493552a3ad0765fa4c0d15a9a5082d9cc5a00`  
		Last Modified: Thu, 08 Jun 2017 19:14:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d92bcc9ea00be55ecfe764f1156de5a112a92b6d9ed8d78cebb2f82d7cc3580`  
		Last Modified: Fri, 16 Jun 2017 23:29:08 GMT  
		Size: 25.8 MB (25790801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743d983ea3146affcb02da01c24c59a20f1c653c35477f7ea8673b8a755581f3`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03df9483b3a46ee2cdb554ea1e4f0b5bd83a11239450ee5c6685250a477d3ba`  
		Last Modified: Fri, 16 Jun 2017 23:28:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8063cf17f573e478e71a3c1159b5c2285ea24d44000f21454c084a7536b6fa`  
		Last Modified: Fri, 16 Jun 2017 23:28:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.10-alpine`

```console
$ docker pull ghost@sha256:af3b02ae12592ff88bbdc5b1932d0c1347aa73753251a28098f3834d322903e0
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41101832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765b1b27e0bff13ee27e0a8653d5b5baa5294b2487df971871deab4cce16e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:48:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:11:49 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:19:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 31 May 2017 20:19:55 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:20:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 31 May 2017 20:20:05 GMT
CMD ["node"]
# Wed, 31 May 2017 21:09:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 31 May 2017 21:09:40 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 31 May 2017 21:09:57 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:09:58 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 23:03:37 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 23:04:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 23:28:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 23:28:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 23:28:19 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 23:28:21 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 16 Jun 2017 23:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 23:28:22 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 23:28:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ab763b46cf3606ddc78f5f6c7c151b0b44a5e30f8c1190b67e43862594cea`  
		Last Modified: Wed, 31 May 2017 20:54:40 GMT  
		Size: 10.7 MB (10688589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a6d69019072cb89eb9dab98e201b3657a493846b02bde299a28777151c7f`  
		Last Modified: Wed, 31 May 2017 20:54:38 GMT  
		Size: 908.0 KB (907962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85c2f71480e7df35c7d735148e308cfd438652f7eedcb9b5485d5e9bbb91b3`  
		Last Modified: Wed, 31 May 2017 21:15:18 GMT  
		Size: 8.3 KB (8323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda10546ebc834c1a7da9b54581702a93d20eac25666619ec8105e342e1796af`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 1.3 MB (1340411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1195fd0c235a28fcc5362ea573080305bfa15f7d7e5a12e98588f72c911c6f`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c77748e7adc8926cdd5b36942e27799b6aedb59162023be6514dd94b43f95ad`  
		Last Modified: Sat, 17 Jun 2017 01:12:45 GMT  
		Size: 25.8 MB (25772542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ddfec3b79d7346eed62e9f170f2bceba3df6df209c811cd7ffd69268d5601c`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75dfa979340ecde2a635c1af91e7ab4c788c167f7f34190d3accf337447216a`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:af3b02ae12592ff88bbdc5b1932d0c1347aa73753251a28098f3834d322903e0
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41101832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765b1b27e0bff13ee27e0a8653d5b5baa5294b2487df971871deab4cce16e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:48:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:11:49 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:19:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 31 May 2017 20:19:55 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:20:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 31 May 2017 20:20:05 GMT
CMD ["node"]
# Wed, 31 May 2017 21:09:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 31 May 2017 21:09:40 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 31 May 2017 21:09:57 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:09:58 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 23:03:37 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 23:04:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 23:28:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 23:28:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 23:28:19 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 23:28:21 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 16 Jun 2017 23:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 23:28:22 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 23:28:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ab763b46cf3606ddc78f5f6c7c151b0b44a5e30f8c1190b67e43862594cea`  
		Last Modified: Wed, 31 May 2017 20:54:40 GMT  
		Size: 10.7 MB (10688589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a6d69019072cb89eb9dab98e201b3657a493846b02bde299a28777151c7f`  
		Last Modified: Wed, 31 May 2017 20:54:38 GMT  
		Size: 908.0 KB (907962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85c2f71480e7df35c7d735148e308cfd438652f7eedcb9b5485d5e9bbb91b3`  
		Last Modified: Wed, 31 May 2017 21:15:18 GMT  
		Size: 8.3 KB (8323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda10546ebc834c1a7da9b54581702a93d20eac25666619ec8105e342e1796af`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 1.3 MB (1340411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1195fd0c235a28fcc5362ea573080305bfa15f7d7e5a12e98588f72c911c6f`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c77748e7adc8926cdd5b36942e27799b6aedb59162023be6514dd94b43f95ad`  
		Last Modified: Sat, 17 Jun 2017 01:12:45 GMT  
		Size: 25.8 MB (25772542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ddfec3b79d7346eed62e9f170f2bceba3df6df209c811cd7ffd69268d5601c`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75dfa979340ecde2a635c1af91e7ab4c788c167f7f34190d3accf337447216a`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:af3b02ae12592ff88bbdc5b1932d0c1347aa73753251a28098f3834d322903e0
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41101832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765b1b27e0bff13ee27e0a8653d5b5baa5294b2487df971871deab4cce16e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:48:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:11:49 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:19:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 31 May 2017 20:19:55 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:20:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 31 May 2017 20:20:05 GMT
CMD ["node"]
# Wed, 31 May 2017 21:09:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 31 May 2017 21:09:40 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 31 May 2017 21:09:57 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:09:58 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 23:03:37 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 23:04:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 23:28:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 23:28:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 23:28:19 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 23:28:21 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 16 Jun 2017 23:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 23:28:22 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 23:28:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ab763b46cf3606ddc78f5f6c7c151b0b44a5e30f8c1190b67e43862594cea`  
		Last Modified: Wed, 31 May 2017 20:54:40 GMT  
		Size: 10.7 MB (10688589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a6d69019072cb89eb9dab98e201b3657a493846b02bde299a28777151c7f`  
		Last Modified: Wed, 31 May 2017 20:54:38 GMT  
		Size: 908.0 KB (907962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85c2f71480e7df35c7d735148e308cfd438652f7eedcb9b5485d5e9bbb91b3`  
		Last Modified: Wed, 31 May 2017 21:15:18 GMT  
		Size: 8.3 KB (8323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda10546ebc834c1a7da9b54581702a93d20eac25666619ec8105e342e1796af`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 1.3 MB (1340411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1195fd0c235a28fcc5362ea573080305bfa15f7d7e5a12e98588f72c911c6f`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c77748e7adc8926cdd5b36942e27799b6aedb59162023be6514dd94b43f95ad`  
		Last Modified: Sat, 17 Jun 2017 01:12:45 GMT  
		Size: 25.8 MB (25772542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ddfec3b79d7346eed62e9f170f2bceba3df6df209c811cd7ffd69268d5601c`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75dfa979340ecde2a635c1af91e7ab4c788c167f7f34190d3accf337447216a`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:af3b02ae12592ff88bbdc5b1932d0c1347aa73753251a28098f3834d322903e0
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41101832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765b1b27e0bff13ee27e0a8653d5b5baa5294b2487df971871deab4cce16e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:48:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:11:49 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:19:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 31 May 2017 20:19:55 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:20:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 31 May 2017 20:20:05 GMT
CMD ["node"]
# Wed, 31 May 2017 21:09:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 31 May 2017 21:09:40 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 31 May 2017 21:09:57 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:09:58 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 23:03:37 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 23:04:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 23:28:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 23:28:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 23:28:19 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 23:28:21 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 16 Jun 2017 23:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 23:28:22 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 23:28:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ab763b46cf3606ddc78f5f6c7c151b0b44a5e30f8c1190b67e43862594cea`  
		Last Modified: Wed, 31 May 2017 20:54:40 GMT  
		Size: 10.7 MB (10688589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a6d69019072cb89eb9dab98e201b3657a493846b02bde299a28777151c7f`  
		Last Modified: Wed, 31 May 2017 20:54:38 GMT  
		Size: 908.0 KB (907962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85c2f71480e7df35c7d735148e308cfd438652f7eedcb9b5485d5e9bbb91b3`  
		Last Modified: Wed, 31 May 2017 21:15:18 GMT  
		Size: 8.3 KB (8323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda10546ebc834c1a7da9b54581702a93d20eac25666619ec8105e342e1796af`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 1.3 MB (1340411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1195fd0c235a28fcc5362ea573080305bfa15f7d7e5a12e98588f72c911c6f`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c77748e7adc8926cdd5b36942e27799b6aedb59162023be6514dd94b43f95ad`  
		Last Modified: Sat, 17 Jun 2017 01:12:45 GMT  
		Size: 25.8 MB (25772542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ddfec3b79d7346eed62e9f170f2bceba3df6df209c811cd7ffd69268d5601c`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75dfa979340ecde2a635c1af91e7ab4c788c167f7f34190d3accf337447216a`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
