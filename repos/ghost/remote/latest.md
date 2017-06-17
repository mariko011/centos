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
