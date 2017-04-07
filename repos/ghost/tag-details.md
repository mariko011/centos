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
$ docker pull ghost@sha256:aed64b11a829971e6cb91726bd7627640106c224d579f27d797e5604e0e8d081
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111350557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8206c2a4ae6a307e51447bf2ecd5ee8233b73d2f4baaaa03b8bb1412ce7652`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:28:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Apr 2017 21:28:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 04 Apr 2017 21:28:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_VERSION=0.11.7
# Tue, 04 Apr 2017 21:29:48 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 04 Apr 2017 21:29:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Apr 2017 21:29:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Apr 2017 21:29:50 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Apr 2017 21:29:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Tue, 04 Apr 2017 21:29:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 21:29:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Apr 2017 21:29:52 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00149e9f791474f33920f753635a002e58aa1efcc307ff80ec5cc419de77578b`  
		Last Modified: Tue, 04 Apr 2017 21:30:15 GMT  
		Size: 4.4 KB (4381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9de2c818edf6e6b24208a57fc7ab72b5c722636f09a09829b85d1ec6669955`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d41afd6cb4bda8d5a36838c6628aea2030e6744e31c66c66f5f0e1c42b69b8`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa87bcfcf4ab7e592544e96691c0b7aa59ffa72a22e3dfd3bcca32838d0a71f`  
		Last Modified: Tue, 04 Apr 2017 21:30:22 GMT  
		Size: 27.2 MB (27241533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c4ec7b1ae5c6c26d6f862764604d6fa56b70c95ee4fc0dff6d4ca30a428a5`  
		Last Modified: Tue, 04 Apr 2017 21:30:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70bf0d80af247638a7443120231fc2480420712ecf82ce84131e23f2548482`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:aed64b11a829971e6cb91726bd7627640106c224d579f27d797e5604e0e8d081
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111350557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8206c2a4ae6a307e51447bf2ecd5ee8233b73d2f4baaaa03b8bb1412ce7652`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:28:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Apr 2017 21:28:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 04 Apr 2017 21:28:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_VERSION=0.11.7
# Tue, 04 Apr 2017 21:29:48 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 04 Apr 2017 21:29:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Apr 2017 21:29:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Apr 2017 21:29:50 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Apr 2017 21:29:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Tue, 04 Apr 2017 21:29:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 21:29:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Apr 2017 21:29:52 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00149e9f791474f33920f753635a002e58aa1efcc307ff80ec5cc419de77578b`  
		Last Modified: Tue, 04 Apr 2017 21:30:15 GMT  
		Size: 4.4 KB (4381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9de2c818edf6e6b24208a57fc7ab72b5c722636f09a09829b85d1ec6669955`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d41afd6cb4bda8d5a36838c6628aea2030e6744e31c66c66f5f0e1c42b69b8`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa87bcfcf4ab7e592544e96691c0b7aa59ffa72a22e3dfd3bcca32838d0a71f`  
		Last Modified: Tue, 04 Apr 2017 21:30:22 GMT  
		Size: 27.2 MB (27241533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c4ec7b1ae5c6c26d6f862764604d6fa56b70c95ee4fc0dff6d4ca30a428a5`  
		Last Modified: Tue, 04 Apr 2017 21:30:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70bf0d80af247638a7443120231fc2480420712ecf82ce84131e23f2548482`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:aed64b11a829971e6cb91726bd7627640106c224d579f27d797e5604e0e8d081
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111350557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8206c2a4ae6a307e51447bf2ecd5ee8233b73d2f4baaaa03b8bb1412ce7652`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:28:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Apr 2017 21:28:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 04 Apr 2017 21:28:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_VERSION=0.11.7
# Tue, 04 Apr 2017 21:29:48 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 04 Apr 2017 21:29:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Apr 2017 21:29:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Apr 2017 21:29:50 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Apr 2017 21:29:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Tue, 04 Apr 2017 21:29:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 21:29:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Apr 2017 21:29:52 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00149e9f791474f33920f753635a002e58aa1efcc307ff80ec5cc419de77578b`  
		Last Modified: Tue, 04 Apr 2017 21:30:15 GMT  
		Size: 4.4 KB (4381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9de2c818edf6e6b24208a57fc7ab72b5c722636f09a09829b85d1ec6669955`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d41afd6cb4bda8d5a36838c6628aea2030e6744e31c66c66f5f0e1c42b69b8`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa87bcfcf4ab7e592544e96691c0b7aa59ffa72a22e3dfd3bcca32838d0a71f`  
		Last Modified: Tue, 04 Apr 2017 21:30:22 GMT  
		Size: 27.2 MB (27241533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c4ec7b1ae5c6c26d6f862764604d6fa56b70c95ee4fc0dff6d4ca30a428a5`  
		Last Modified: Tue, 04 Apr 2017 21:30:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70bf0d80af247638a7443120231fc2480420712ecf82ce84131e23f2548482`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:aed64b11a829971e6cb91726bd7627640106c224d579f27d797e5604e0e8d081
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111350557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8206c2a4ae6a307e51447bf2ecd5ee8233b73d2f4baaaa03b8bb1412ce7652`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:28:45 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 04 Apr 2017 21:28:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 04 Apr 2017 21:28:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
WORKDIR /usr/src/ghost
# Tue, 04 Apr 2017 21:28:51 GMT
ENV GHOST_VERSION=0.11.7
# Tue, 04 Apr 2017 21:29:48 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 04 Apr 2017 21:29:49 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 04 Apr 2017 21:29:50 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 04 Apr 2017 21:29:50 GMT
VOLUME [/var/lib/ghost]
# Tue, 04 Apr 2017 21:29:51 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Tue, 04 Apr 2017 21:29:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 21:29:51 GMT
EXPOSE 2368/tcp
# Tue, 04 Apr 2017 21:29:52 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00149e9f791474f33920f753635a002e58aa1efcc307ff80ec5cc419de77578b`  
		Last Modified: Tue, 04 Apr 2017 21:30:15 GMT  
		Size: 4.4 KB (4381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9de2c818edf6e6b24208a57fc7ab72b5c722636f09a09829b85d1ec6669955`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d41afd6cb4bda8d5a36838c6628aea2030e6744e31c66c66f5f0e1c42b69b8`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa87bcfcf4ab7e592544e96691c0b7aa59ffa72a22e3dfd3bcca32838d0a71f`  
		Last Modified: Tue, 04 Apr 2017 21:30:22 GMT  
		Size: 27.2 MB (27241533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c4ec7b1ae5c6c26d6f862764604d6fa56b70c95ee4fc0dff6d4ca30a428a5`  
		Last Modified: Tue, 04 Apr 2017 21:30:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70bf0d80af247638a7443120231fc2480420712ecf82ce84131e23f2548482`  
		Last Modified: Tue, 04 Apr 2017 21:30:13 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.7-alpine`

**does not exist** (yet?)

## `ghost:0.11-alpine`

**does not exist** (yet?)

## `ghost:0-alpine`

**does not exist** (yet?)

## `ghost:alpine`

**does not exist** (yet?)
