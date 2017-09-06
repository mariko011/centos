## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:65e4f579c053d60a5749e7f14a9ddaf61529d96b2dc0925dfcd4e52ed8a789b9
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44722287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d561cbb7be785fdaa6bb2a0a5bfe043b1feba69da9af934a870073cc547138a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 06 Sep 2017 17:40:50 GMT
ENV NODE_VERSION=6.11.3
# Wed, 06 Sep 2017 17:52:24 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 06 Sep 2017 17:52:24 GMT
ENV YARN_VERSION=0.27.5
# Wed, 06 Sep 2017 17:52:32 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 06 Sep 2017 17:52:32 GMT
CMD ["node"]
# Wed, 06 Sep 2017 20:57:23 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Sep 2017 20:57:25 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Sep 2017 20:57:25 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Sep 2017 20:57:26 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 06 Sep 2017 20:58:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Sep 2017 20:58:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Sep 2017 20:58:11 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Sep 2017 20:58:11 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Sep 2017 20:58:12 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Sep 2017 20:58:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Sep 2017 20:58:12 GMT
EXPOSE 2368/tcp
# Wed, 06 Sep 2017 20:58:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf3a755c7aeb349372fe8f85426ecd0fadcf2972c21468bddd7e47ea8d83f9`  
		Last Modified: Wed, 06 Sep 2017 17:54:43 GMT  
		Size: 15.4 MB (15390499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605663c4970f553f7d5c801734005df117ccee6fd6fc8a9f1ea60375263371e`  
		Last Modified: Wed, 06 Sep 2017 17:54:40 GMT  
		Size: 945.3 KB (945307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f410cdbc4d09b3de890f31bf0c43658e1feefa0e9e611e39fe49ed494adeb6e`  
		Last Modified: Wed, 06 Sep 2017 21:46:26 GMT  
		Size: 8.3 KB (8319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd761b78eb52a7759f4d02f4ec8a13b2901ff9612e1872f811ea5010dbf5bdea`  
		Last Modified: Wed, 06 Sep 2017 21:48:15 GMT  
		Size: 1.3 MB (1336049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f41c81731421ff6692636580aa18e9c1c79e70e1d774d57c8f9307923b042b`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb21b4ec9dbb878d84b4913073ad61191384fa3ea62d3cb9817f07cd4c7167fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:29 GMT  
		Size: 24.7 MB (24656165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabcbf2df52d71daae9d14e79e53d027ffaa13f9031450690b88c11b5aaca1fd`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ef899f134eb8f5b2b1d366b0569e4bd919ad53a9282fb87f2c9ce32cf6e3f`  
		Last Modified: Wed, 06 Sep 2017 21:48:14 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
