<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.8`](#ghost0118)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:0.11.8-alpine`](#ghost0118-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:alpine`](#ghostalpine)

## `ghost:0.11.8`

```console
$ docker pull ghost@sha256:37badc2b61186bd5580ebeaa583eda8a5623a9a6d6924961a10551b138443eff
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114035423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bda731ddb93cc44e25e1fc42f06754b0c1510c4c66c3fc7e2953ac1f58191b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Thu, 11 May 2017 04:14:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 11 May 2017 04:14:50 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 04:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 04:14:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:14:57 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:14:58 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:15:59 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:16:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:16:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:16:03 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:16:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 11 May 2017 04:16:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 11 May 2017 04:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:16:08 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:16:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c008e523e16b943a19c7112eb43616ba9986e78cf5633c7c0785736289b486`  
		Last Modified: Sat, 13 May 2017 15:36:17 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca22eed45edecad5cf5b690b217d57a8468b52a30d12c97d5b8d61e592119a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55bbb723d718f8575bac3674411203f5dacf46ac79aed8ad591d47330c2c216`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e5148e6ff80757828079f90ca31ab641b6c67cf4c6ac12bb8eb06df48b90f`  
		Last Modified: Sat, 13 May 2017 15:36:35 GMT  
		Size: 27.8 MB (27771915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a12a72540b08a6f46c41013949e8fe1602d83fa6c9e0e5d70ac203c10268260`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf46896e4170c8c11127c095783f4da92a897c02998b37679728bfa0fecf83a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc093518bc7a3b3b75182422e898813db7e5c05b284adaf8e21700b09bf743`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:37badc2b61186bd5580ebeaa583eda8a5623a9a6d6924961a10551b138443eff
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114035423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bda731ddb93cc44e25e1fc42f06754b0c1510c4c66c3fc7e2953ac1f58191b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Thu, 11 May 2017 04:14:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 11 May 2017 04:14:50 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 04:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 04:14:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:14:57 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:14:58 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:15:59 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:16:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:16:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:16:03 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:16:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 11 May 2017 04:16:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 11 May 2017 04:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:16:08 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:16:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c008e523e16b943a19c7112eb43616ba9986e78cf5633c7c0785736289b486`  
		Last Modified: Sat, 13 May 2017 15:36:17 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca22eed45edecad5cf5b690b217d57a8468b52a30d12c97d5b8d61e592119a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55bbb723d718f8575bac3674411203f5dacf46ac79aed8ad591d47330c2c216`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e5148e6ff80757828079f90ca31ab641b6c67cf4c6ac12bb8eb06df48b90f`  
		Last Modified: Sat, 13 May 2017 15:36:35 GMT  
		Size: 27.8 MB (27771915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a12a72540b08a6f46c41013949e8fe1602d83fa6c9e0e5d70ac203c10268260`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf46896e4170c8c11127c095783f4da92a897c02998b37679728bfa0fecf83a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc093518bc7a3b3b75182422e898813db7e5c05b284adaf8e21700b09bf743`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:37badc2b61186bd5580ebeaa583eda8a5623a9a6d6924961a10551b138443eff
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114035423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bda731ddb93cc44e25e1fc42f06754b0c1510c4c66c3fc7e2953ac1f58191b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Thu, 11 May 2017 04:14:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 11 May 2017 04:14:50 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 04:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 04:14:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:14:57 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:14:58 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:15:59 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:16:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:16:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:16:03 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:16:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 11 May 2017 04:16:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 11 May 2017 04:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:16:08 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:16:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c008e523e16b943a19c7112eb43616ba9986e78cf5633c7c0785736289b486`  
		Last Modified: Sat, 13 May 2017 15:36:17 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca22eed45edecad5cf5b690b217d57a8468b52a30d12c97d5b8d61e592119a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55bbb723d718f8575bac3674411203f5dacf46ac79aed8ad591d47330c2c216`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e5148e6ff80757828079f90ca31ab641b6c67cf4c6ac12bb8eb06df48b90f`  
		Last Modified: Sat, 13 May 2017 15:36:35 GMT  
		Size: 27.8 MB (27771915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a12a72540b08a6f46c41013949e8fe1602d83fa6c9e0e5d70ac203c10268260`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf46896e4170c8c11127c095783f4da92a897c02998b37679728bfa0fecf83a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc093518bc7a3b3b75182422e898813db7e5c05b284adaf8e21700b09bf743`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:37badc2b61186bd5580ebeaa583eda8a5623a9a6d6924961a10551b138443eff
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114035423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bda731ddb93cc44e25e1fc42f06754b0c1510c4c66c3fc7e2953ac1f58191b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Thu, 11 May 2017 04:14:49 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 11 May 2017 04:14:50 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 04:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 04:14:56 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:14:57 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:14:58 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:15:59 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:16:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:16:02 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:16:03 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:16:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 11 May 2017 04:16:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 11 May 2017 04:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:16:08 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:16:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c008e523e16b943a19c7112eb43616ba9986e78cf5633c7c0785736289b486`  
		Last Modified: Sat, 13 May 2017 15:36:17 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca22eed45edecad5cf5b690b217d57a8468b52a30d12c97d5b8d61e592119a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55bbb723d718f8575bac3674411203f5dacf46ac79aed8ad591d47330c2c216`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e5148e6ff80757828079f90ca31ab641b6c67cf4c6ac12bb8eb06df48b90f`  
		Last Modified: Sat, 13 May 2017 15:36:35 GMT  
		Size: 27.8 MB (27771915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a12a72540b08a6f46c41013949e8fe1602d83fa6c9e0e5d70ac203c10268260`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf46896e4170c8c11127c095783f4da92a897c02998b37679728bfa0fecf83a`  
		Last Modified: Sat, 13 May 2017 15:36:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc093518bc7a3b3b75182422e898813db7e5c05b284adaf8e21700b09bf743`  
		Last Modified: Sat, 13 May 2017 15:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.8-alpine`

```console
$ docker pull ghost@sha256:7ebf0524d879802694cba5f429de64f45c96d0b934dbe34f44e925297ff85ac5
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43063644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce13036ec92506c578dbbb684ea4eb527645e322d4269aa48970f75d523cec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:54:44 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 21:54:45 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 22:08:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 May 2017 22:08:12 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 22:08:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 10 May 2017 22:08:21 GMT
CMD ["node"]
# Thu, 11 May 2017 04:16:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 04:16:35 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 11 May 2017 04:16:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:16:37 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:16:38 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:17:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:17:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:17:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:17:31 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:17:32 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 11 May 2017 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:17:34 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:17:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfecd2fc3423e3e41a02b9b21d5a5658f98c5882f9f7d4f75ad347f2ad4919`  
		Last Modified: Sat, 13 May 2017 08:33:57 GMT  
		Size: 10.7 MB (10688478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843a5f674fb89db3d552f2d9a44511165c8f3abe8ff2e354658cb5db85f0648e`  
		Last Modified: Sat, 13 May 2017 08:33:52 GMT  
		Size: 896.2 KB (896246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6ddd446f9c2fe95bc76aea8464df00bfb3f13ef3cbba97c1b6c7d746f50fc`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0d3e3ee1351b30a43f148c0128dd0748637889a401b9b312aad8c4ff0650b`  
		Last Modified: Sat, 13 May 2017 15:38:10 GMT  
		Size: 1.3 MB (1340420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a17cca5be8968a3d05201802578ca7525ef36c966b265a74fa66151a7c470d`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57dcd3a4086260aaf5b9a670eb2a3a5c7dc60a18cbb4381a8c5fc0ae89fe7e4`  
		Last Modified: Sat, 13 May 2017 15:38:26 GMT  
		Size: 27.7 MB (27746201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939d9e04fc5ef3287557b80bf86a571d79d118af56be01e7386a6a14c0dc1aa6`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a84548baab8abbdff50a074d9e00121bd6e1608a9ec1931d09d60c2ff89aa0`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:7ebf0524d879802694cba5f429de64f45c96d0b934dbe34f44e925297ff85ac5
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43063644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce13036ec92506c578dbbb684ea4eb527645e322d4269aa48970f75d523cec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:54:44 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 21:54:45 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 22:08:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 May 2017 22:08:12 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 22:08:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 10 May 2017 22:08:21 GMT
CMD ["node"]
# Thu, 11 May 2017 04:16:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 04:16:35 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 11 May 2017 04:16:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:16:37 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:16:38 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:17:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:17:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:17:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:17:31 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:17:32 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 11 May 2017 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:17:34 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:17:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfecd2fc3423e3e41a02b9b21d5a5658f98c5882f9f7d4f75ad347f2ad4919`  
		Last Modified: Sat, 13 May 2017 08:33:57 GMT  
		Size: 10.7 MB (10688478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843a5f674fb89db3d552f2d9a44511165c8f3abe8ff2e354658cb5db85f0648e`  
		Last Modified: Sat, 13 May 2017 08:33:52 GMT  
		Size: 896.2 KB (896246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6ddd446f9c2fe95bc76aea8464df00bfb3f13ef3cbba97c1b6c7d746f50fc`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0d3e3ee1351b30a43f148c0128dd0748637889a401b9b312aad8c4ff0650b`  
		Last Modified: Sat, 13 May 2017 15:38:10 GMT  
		Size: 1.3 MB (1340420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a17cca5be8968a3d05201802578ca7525ef36c966b265a74fa66151a7c470d`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57dcd3a4086260aaf5b9a670eb2a3a5c7dc60a18cbb4381a8c5fc0ae89fe7e4`  
		Last Modified: Sat, 13 May 2017 15:38:26 GMT  
		Size: 27.7 MB (27746201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939d9e04fc5ef3287557b80bf86a571d79d118af56be01e7386a6a14c0dc1aa6`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a84548baab8abbdff50a074d9e00121bd6e1608a9ec1931d09d60c2ff89aa0`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:7ebf0524d879802694cba5f429de64f45c96d0b934dbe34f44e925297ff85ac5
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43063644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce13036ec92506c578dbbb684ea4eb527645e322d4269aa48970f75d523cec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:54:44 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 21:54:45 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 22:08:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 May 2017 22:08:12 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 22:08:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 10 May 2017 22:08:21 GMT
CMD ["node"]
# Thu, 11 May 2017 04:16:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 04:16:35 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 11 May 2017 04:16:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:16:37 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:16:38 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:17:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:17:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:17:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:17:31 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:17:32 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 11 May 2017 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:17:34 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:17:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfecd2fc3423e3e41a02b9b21d5a5658f98c5882f9f7d4f75ad347f2ad4919`  
		Last Modified: Sat, 13 May 2017 08:33:57 GMT  
		Size: 10.7 MB (10688478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843a5f674fb89db3d552f2d9a44511165c8f3abe8ff2e354658cb5db85f0648e`  
		Last Modified: Sat, 13 May 2017 08:33:52 GMT  
		Size: 896.2 KB (896246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6ddd446f9c2fe95bc76aea8464df00bfb3f13ef3cbba97c1b6c7d746f50fc`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0d3e3ee1351b30a43f148c0128dd0748637889a401b9b312aad8c4ff0650b`  
		Last Modified: Sat, 13 May 2017 15:38:10 GMT  
		Size: 1.3 MB (1340420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a17cca5be8968a3d05201802578ca7525ef36c966b265a74fa66151a7c470d`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57dcd3a4086260aaf5b9a670eb2a3a5c7dc60a18cbb4381a8c5fc0ae89fe7e4`  
		Last Modified: Sat, 13 May 2017 15:38:26 GMT  
		Size: 27.7 MB (27746201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939d9e04fc5ef3287557b80bf86a571d79d118af56be01e7386a6a14c0dc1aa6`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a84548baab8abbdff50a074d9e00121bd6e1608a9ec1931d09d60c2ff89aa0`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:7ebf0524d879802694cba5f429de64f45c96d0b934dbe34f44e925297ff85ac5
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43063644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce13036ec92506c578dbbb684ea4eb527645e322d4269aa48970f75d523cec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:54:44 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 21:54:45 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 22:08:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 May 2017 22:08:12 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 22:08:20 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 10 May 2017 22:08:21 GMT
CMD ["node"]
# Thu, 11 May 2017 04:16:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 04:16:35 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 11 May 2017 04:16:36 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 11 May 2017 04:16:37 GMT
WORKDIR /usr/src/ghost
# Thu, 11 May 2017 04:16:38 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 11 May 2017 04:17:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 11 May 2017 04:17:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 11 May 2017 04:17:30 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 11 May 2017 04:17:31 GMT
VOLUME [/var/lib/ghost]
# Thu, 11 May 2017 04:17:32 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 11 May 2017 04:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 04:17:34 GMT
EXPOSE 2368/tcp
# Thu, 11 May 2017 04:17:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfecd2fc3423e3e41a02b9b21d5a5658f98c5882f9f7d4f75ad347f2ad4919`  
		Last Modified: Sat, 13 May 2017 08:33:57 GMT  
		Size: 10.7 MB (10688478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843a5f674fb89db3d552f2d9a44511165c8f3abe8ff2e354658cb5db85f0648e`  
		Last Modified: Sat, 13 May 2017 08:33:52 GMT  
		Size: 896.2 KB (896246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6ddd446f9c2fe95bc76aea8464df00bfb3f13ef3cbba97c1b6c7d746f50fc`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0d3e3ee1351b30a43f148c0128dd0748637889a401b9b312aad8c4ff0650b`  
		Last Modified: Sat, 13 May 2017 15:38:10 GMT  
		Size: 1.3 MB (1340420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a17cca5be8968a3d05201802578ca7525ef36c966b265a74fa66151a7c470d`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57dcd3a4086260aaf5b9a670eb2a3a5c7dc60a18cbb4381a8c5fc0ae89fe7e4`  
		Last Modified: Sat, 13 May 2017 15:38:26 GMT  
		Size: 27.7 MB (27746201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939d9e04fc5ef3287557b80bf86a571d79d118af56be01e7386a6a14c0dc1aa6`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a84548baab8abbdff50a074d9e00121bd6e1608a9ec1931d09d60c2ff89aa0`  
		Last Modified: Sat, 13 May 2017 15:38:08 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
