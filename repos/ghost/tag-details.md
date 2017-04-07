<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.7`](#ghost0117)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:0.11.7-alpine`](#ghost0117-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:alpine`](#ghostalpine)

## `ghost:0.11.7`

```console
$ docker pull ghost@sha256:24e7a8f5d8d9315158fed48b70ee13bd83ed0e4749903a9a2d768073ed3b92e2
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111353160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729863bd99003c7c22fbd66d1ebdf7786906bf8aba41394c331deda064f5d73c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:07:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 07 Apr 2017 17:22:07 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Fri, 07 Apr 2017 17:22:08 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 07 Apr 2017 17:42:47 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 07 Apr 2017 17:42:57 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Fri, 07 Apr 2017 17:43:02 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:28:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Apr 2017 19:28:10 GMT
ENV GOSU_VERSION=1.7
# Fri, 07 Apr 2017 19:28:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Apr 2017 19:28:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:29:12 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:29:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:29:14 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:29:15 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:29:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:29:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:29:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:29:18 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:29:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c75255d33f781986e7e2731d7b17bf4675d02f4e956371310df4658cf1b1b2`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48deb3bd78b506d15abe7050a46deee302eb4f22d5adf606585294a27db959c`  
		Last Modified: Fri, 07 Apr 2017 17:48:00 GMT  
		Size: 119.1 KB (119061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed263e062728d3aa71f25aadd88fb7378277d7475e1a0a59a0a159bb45931a0f`  
		Last Modified: Fri, 07 Apr 2017 18:02:40 GMT  
		Size: 12.3 MB (12252077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830c66f08aac63dc5a2f729a2b9e2c4611211eab2a81f2ba35cf5693956a7917`  
		Last Modified: Fri, 07 Apr 2017 18:02:36 GMT  
		Size: 876.3 KB (876320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da8c3b84e54c96baf620ff696db0842924190921d55fa9e3eff1a2ccc14af5`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bae09346cec4c04ed2cbf27dee66dd4f74f7b30851bea4c0458cc366581f9`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edec35c18f01cd9afa1e041fd771decbdc26b2d252c68e4e48bd859bfcc54338`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2620a3e418a1c9daed3726f4eab1020a08f11b92360676e13582f95881e21fda`  
		Last Modified: Fri, 07 Apr 2017 19:30:56 GMT  
		Size: 27.2 MB (27243011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcc7aa0294a4fcd9aede5ed9c89b25e8d3e1e6477a4c93904101c531e75b12d`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221606e44d8a11d83c588dfa712fc59115c5e2d53f29ac5ef19a39dac949945a`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d3c7f7cca316ff75509d3ffa211d6e0cde3c686da4c750c82a2c66873683e`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:24e7a8f5d8d9315158fed48b70ee13bd83ed0e4749903a9a2d768073ed3b92e2
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111353160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729863bd99003c7c22fbd66d1ebdf7786906bf8aba41394c331deda064f5d73c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:07:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 07 Apr 2017 17:22:07 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Fri, 07 Apr 2017 17:22:08 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 07 Apr 2017 17:42:47 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 07 Apr 2017 17:42:57 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Fri, 07 Apr 2017 17:43:02 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:28:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Apr 2017 19:28:10 GMT
ENV GOSU_VERSION=1.7
# Fri, 07 Apr 2017 19:28:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Apr 2017 19:28:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:29:12 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:29:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:29:14 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:29:15 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:29:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:29:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:29:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:29:18 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:29:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c75255d33f781986e7e2731d7b17bf4675d02f4e956371310df4658cf1b1b2`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48deb3bd78b506d15abe7050a46deee302eb4f22d5adf606585294a27db959c`  
		Last Modified: Fri, 07 Apr 2017 17:48:00 GMT  
		Size: 119.1 KB (119061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed263e062728d3aa71f25aadd88fb7378277d7475e1a0a59a0a159bb45931a0f`  
		Last Modified: Fri, 07 Apr 2017 18:02:40 GMT  
		Size: 12.3 MB (12252077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830c66f08aac63dc5a2f729a2b9e2c4611211eab2a81f2ba35cf5693956a7917`  
		Last Modified: Fri, 07 Apr 2017 18:02:36 GMT  
		Size: 876.3 KB (876320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da8c3b84e54c96baf620ff696db0842924190921d55fa9e3eff1a2ccc14af5`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bae09346cec4c04ed2cbf27dee66dd4f74f7b30851bea4c0458cc366581f9`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edec35c18f01cd9afa1e041fd771decbdc26b2d252c68e4e48bd859bfcc54338`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2620a3e418a1c9daed3726f4eab1020a08f11b92360676e13582f95881e21fda`  
		Last Modified: Fri, 07 Apr 2017 19:30:56 GMT  
		Size: 27.2 MB (27243011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcc7aa0294a4fcd9aede5ed9c89b25e8d3e1e6477a4c93904101c531e75b12d`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221606e44d8a11d83c588dfa712fc59115c5e2d53f29ac5ef19a39dac949945a`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d3c7f7cca316ff75509d3ffa211d6e0cde3c686da4c750c82a2c66873683e`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:24e7a8f5d8d9315158fed48b70ee13bd83ed0e4749903a9a2d768073ed3b92e2
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111353160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729863bd99003c7c22fbd66d1ebdf7786906bf8aba41394c331deda064f5d73c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:07:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 07 Apr 2017 17:22:07 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Fri, 07 Apr 2017 17:22:08 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 07 Apr 2017 17:42:47 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 07 Apr 2017 17:42:57 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Fri, 07 Apr 2017 17:43:02 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:28:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Apr 2017 19:28:10 GMT
ENV GOSU_VERSION=1.7
# Fri, 07 Apr 2017 19:28:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Apr 2017 19:28:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:29:12 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:29:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:29:14 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:29:15 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:29:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:29:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:29:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:29:18 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:29:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c75255d33f781986e7e2731d7b17bf4675d02f4e956371310df4658cf1b1b2`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48deb3bd78b506d15abe7050a46deee302eb4f22d5adf606585294a27db959c`  
		Last Modified: Fri, 07 Apr 2017 17:48:00 GMT  
		Size: 119.1 KB (119061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed263e062728d3aa71f25aadd88fb7378277d7475e1a0a59a0a159bb45931a0f`  
		Last Modified: Fri, 07 Apr 2017 18:02:40 GMT  
		Size: 12.3 MB (12252077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830c66f08aac63dc5a2f729a2b9e2c4611211eab2a81f2ba35cf5693956a7917`  
		Last Modified: Fri, 07 Apr 2017 18:02:36 GMT  
		Size: 876.3 KB (876320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da8c3b84e54c96baf620ff696db0842924190921d55fa9e3eff1a2ccc14af5`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bae09346cec4c04ed2cbf27dee66dd4f74f7b30851bea4c0458cc366581f9`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edec35c18f01cd9afa1e041fd771decbdc26b2d252c68e4e48bd859bfcc54338`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2620a3e418a1c9daed3726f4eab1020a08f11b92360676e13582f95881e21fda`  
		Last Modified: Fri, 07 Apr 2017 19:30:56 GMT  
		Size: 27.2 MB (27243011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcc7aa0294a4fcd9aede5ed9c89b25e8d3e1e6477a4c93904101c531e75b12d`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221606e44d8a11d83c588dfa712fc59115c5e2d53f29ac5ef19a39dac949945a`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d3c7f7cca316ff75509d3ffa211d6e0cde3c686da4c750c82a2c66873683e`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:24e7a8f5d8d9315158fed48b70ee13bd83ed0e4749903a9a2d768073ed3b92e2
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111353160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729863bd99003c7c22fbd66d1ebdf7786906bf8aba41394c331deda064f5d73c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:07:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 07 Apr 2017 17:22:07 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Fri, 07 Apr 2017 17:22:08 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 07 Apr 2017 17:42:47 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 07 Apr 2017 17:42:57 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:43:01 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Fri, 07 Apr 2017 17:43:02 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:28:10 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 07 Apr 2017 19:28:10 GMT
ENV GOSU_VERSION=1.7
# Fri, 07 Apr 2017 19:28:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 07 Apr 2017 19:28:15 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:28:16 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:29:12 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:29:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:29:14 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:29:15 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:29:16 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:29:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:29:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:29:18 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:29:19 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c75255d33f781986e7e2731d7b17bf4675d02f4e956371310df4658cf1b1b2`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48deb3bd78b506d15abe7050a46deee302eb4f22d5adf606585294a27db959c`  
		Last Modified: Fri, 07 Apr 2017 17:48:00 GMT  
		Size: 119.1 KB (119061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed263e062728d3aa71f25aadd88fb7378277d7475e1a0a59a0a159bb45931a0f`  
		Last Modified: Fri, 07 Apr 2017 18:02:40 GMT  
		Size: 12.3 MB (12252077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830c66f08aac63dc5a2f729a2b9e2c4611211eab2a81f2ba35cf5693956a7917`  
		Last Modified: Fri, 07 Apr 2017 18:02:36 GMT  
		Size: 876.3 KB (876320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da8c3b84e54c96baf620ff696db0842924190921d55fa9e3eff1a2ccc14af5`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bae09346cec4c04ed2cbf27dee66dd4f74f7b30851bea4c0458cc366581f9`  
		Last Modified: Fri, 07 Apr 2017 19:30:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edec35c18f01cd9afa1e041fd771decbdc26b2d252c68e4e48bd859bfcc54338`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2620a3e418a1c9daed3726f4eab1020a08f11b92360676e13582f95881e21fda`  
		Last Modified: Fri, 07 Apr 2017 19:30:56 GMT  
		Size: 27.2 MB (27243011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcc7aa0294a4fcd9aede5ed9c89b25e8d3e1e6477a4c93904101c531e75b12d`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221606e44d8a11d83c588dfa712fc59115c5e2d53f29ac5ef19a39dac949945a`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d3c7f7cca316ff75509d3ffa211d6e0cde3c686da4c750c82a2c66873683e`  
		Last Modified: Fri, 07 Apr 2017 19:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.7-alpine`

```console
$ docker pull ghost@sha256:4021957d5470274e969dd4ec3dfecd83eb669a66e5b0c38a4f2edcc9ea3666f9
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42215049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42911913a63fa6772e733adaf3a3827b7db74270a59cebd9dce455ceaefaadab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 19:53:26 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:34 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 07 Apr 2017 17:42:35 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:42:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 07 Apr 2017 17:42:42 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:29:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Apr 2017 19:29:24 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 07 Apr 2017 19:29:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:30:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:30:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:30:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:30:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:30:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:30:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:30:14 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:30:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef19eb3aaa8d2dfabaf5c800ad7b6a47ba903ccbb83a3c5fc00e92724c17bf48`  
		Last Modified: Fri, 07 Apr 2017 17:59:51 GMT  
		Size: 10.5 MB (10484958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bae98c33d36fe10fcb84b044f5baa5ab6a685c4c11e909666dd0c0b4542fd8`  
		Last Modified: Fri, 07 Apr 2017 17:59:48 GMT  
		Size: 884.9 KB (884879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf2b561e92d4b23723181c5978f9afe01f26b1ad275ac0a5cf7359e6aacd3a`  
		Last Modified: Fri, 07 Apr 2017 19:32:27 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc57969a7f189ea69395a16eb41c32dd645bbe7935c5f2a22ac283eb8cdce68`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 1.3 MB (1303866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355359f29c3e659579e9f860e23d7e70aa2ca3e3f19a28033dd20bacddb35626`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1be1ec9de57271ada531fc6e32990c97f95be46a3eea6802a038ad8b86988f`  
		Last Modified: Fri, 07 Apr 2017 19:32:32 GMT  
		Size: 27.2 MB (27218798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f58c7173349b35b62ffb713458d0e6575fe2a763698531e360a70f3eb60676e`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466f492d8fca279628bf4597de3f08fcd41b9386902ef752fd95ad85d48e6484`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:4021957d5470274e969dd4ec3dfecd83eb669a66e5b0c38a4f2edcc9ea3666f9
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42215049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42911913a63fa6772e733adaf3a3827b7db74270a59cebd9dce455ceaefaadab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 19:53:26 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:34 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 07 Apr 2017 17:42:35 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:42:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 07 Apr 2017 17:42:42 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:29:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Apr 2017 19:29:24 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 07 Apr 2017 19:29:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:30:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:30:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:30:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:30:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:30:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:30:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:30:14 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:30:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef19eb3aaa8d2dfabaf5c800ad7b6a47ba903ccbb83a3c5fc00e92724c17bf48`  
		Last Modified: Fri, 07 Apr 2017 17:59:51 GMT  
		Size: 10.5 MB (10484958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bae98c33d36fe10fcb84b044f5baa5ab6a685c4c11e909666dd0c0b4542fd8`  
		Last Modified: Fri, 07 Apr 2017 17:59:48 GMT  
		Size: 884.9 KB (884879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf2b561e92d4b23723181c5978f9afe01f26b1ad275ac0a5cf7359e6aacd3a`  
		Last Modified: Fri, 07 Apr 2017 19:32:27 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc57969a7f189ea69395a16eb41c32dd645bbe7935c5f2a22ac283eb8cdce68`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 1.3 MB (1303866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355359f29c3e659579e9f860e23d7e70aa2ca3e3f19a28033dd20bacddb35626`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1be1ec9de57271ada531fc6e32990c97f95be46a3eea6802a038ad8b86988f`  
		Last Modified: Fri, 07 Apr 2017 19:32:32 GMT  
		Size: 27.2 MB (27218798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f58c7173349b35b62ffb713458d0e6575fe2a763698531e360a70f3eb60676e`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466f492d8fca279628bf4597de3f08fcd41b9386902ef752fd95ad85d48e6484`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:4021957d5470274e969dd4ec3dfecd83eb669a66e5b0c38a4f2edcc9ea3666f9
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42215049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42911913a63fa6772e733adaf3a3827b7db74270a59cebd9dce455ceaefaadab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 19:53:26 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:34 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 07 Apr 2017 17:42:35 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:42:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 07 Apr 2017 17:42:42 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:29:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Apr 2017 19:29:24 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 07 Apr 2017 19:29:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:30:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:30:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:30:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:30:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:30:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:30:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:30:14 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:30:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef19eb3aaa8d2dfabaf5c800ad7b6a47ba903ccbb83a3c5fc00e92724c17bf48`  
		Last Modified: Fri, 07 Apr 2017 17:59:51 GMT  
		Size: 10.5 MB (10484958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bae98c33d36fe10fcb84b044f5baa5ab6a685c4c11e909666dd0c0b4542fd8`  
		Last Modified: Fri, 07 Apr 2017 17:59:48 GMT  
		Size: 884.9 KB (884879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf2b561e92d4b23723181c5978f9afe01f26b1ad275ac0a5cf7359e6aacd3a`  
		Last Modified: Fri, 07 Apr 2017 19:32:27 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc57969a7f189ea69395a16eb41c32dd645bbe7935c5f2a22ac283eb8cdce68`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 1.3 MB (1303866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355359f29c3e659579e9f860e23d7e70aa2ca3e3f19a28033dd20bacddb35626`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1be1ec9de57271ada531fc6e32990c97f95be46a3eea6802a038ad8b86988f`  
		Last Modified: Fri, 07 Apr 2017 19:32:32 GMT  
		Size: 27.2 MB (27218798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f58c7173349b35b62ffb713458d0e6575fe2a763698531e360a70f3eb60676e`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466f492d8fca279628bf4597de3f08fcd41b9386902ef752fd95ad85d48e6484`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:4021957d5470274e969dd4ec3dfecd83eb669a66e5b0c38a4f2edcc9ea3666f9
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42215049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42911913a63fa6772e733adaf3a3827b7db74270a59cebd9dce455ceaefaadab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 19:53:26 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:34 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 07 Apr 2017 17:42:35 GMT
ENV YARN_VERSION=0.22.0
# Fri, 07 Apr 2017 17:42:42 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 07 Apr 2017 17:42:42 GMT
CMD ["node"]
# Fri, 07 Apr 2017 19:29:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 07 Apr 2017 19:29:24 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 07 Apr 2017 19:29:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
WORKDIR /usr/src/ghost
# Fri, 07 Apr 2017 19:29:26 GMT
ENV GHOST_VERSION=0.11.7
# Fri, 07 Apr 2017 19:30:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 07 Apr 2017 19:30:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 07 Apr 2017 19:30:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 07 Apr 2017 19:30:12 GMT
VOLUME [/var/lib/ghost]
# Fri, 07 Apr 2017 19:30:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:30:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:30:14 GMT
EXPOSE 2368/tcp
# Fri, 07 Apr 2017 19:30:14 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef19eb3aaa8d2dfabaf5c800ad7b6a47ba903ccbb83a3c5fc00e92724c17bf48`  
		Last Modified: Fri, 07 Apr 2017 17:59:51 GMT  
		Size: 10.5 MB (10484958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bae98c33d36fe10fcb84b044f5baa5ab6a685c4c11e909666dd0c0b4542fd8`  
		Last Modified: Fri, 07 Apr 2017 17:59:48 GMT  
		Size: 884.9 KB (884879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf2b561e92d4b23723181c5978f9afe01f26b1ad275ac0a5cf7359e6aacd3a`  
		Last Modified: Fri, 07 Apr 2017 19:32:27 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc57969a7f189ea69395a16eb41c32dd645bbe7935c5f2a22ac283eb8cdce68`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 1.3 MB (1303866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355359f29c3e659579e9f860e23d7e70aa2ca3e3f19a28033dd20bacddb35626`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1be1ec9de57271ada531fc6e32990c97f95be46a3eea6802a038ad8b86988f`  
		Last Modified: Fri, 07 Apr 2017 19:32:32 GMT  
		Size: 27.2 MB (27218798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f58c7173349b35b62ffb713458d0e6575fe2a763698531e360a70f3eb60676e`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466f492d8fca279628bf4597de3f08fcd41b9386902ef752fd95ad85d48e6484`  
		Last Modified: Fri, 07 Apr 2017 19:32:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
