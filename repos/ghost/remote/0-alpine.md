## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:dbea730c234328ff73cb10533e86302d9700798d575ff4ed15188f78a2afb253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:19c97f9fdce4c480fd2df2bf91b54970c81ecc18febc77d9d48e1df8550ec6bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44996428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4bcabd8c83ac8eea7fa5cc9edbbbd63957df0b35431e4f9b3e7ff442a5497f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 20:28:24 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 12 Sep 2017 20:28:24 GMT
ENV NODE_VERSION=6.11.3
# Tue, 12 Sep 2017 20:41:59 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 12 Sep 2017 20:41:59 GMT
ENV YARN_VERSION=0.27.5
# Tue, 12 Sep 2017 20:42:08 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 12 Sep 2017 20:42:08 GMT
CMD ["node"]
# Tue, 12 Sep 2017 21:34:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 21:37:11 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 12 Sep 2017 21:37:11 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 12 Sep 2017 21:37:11 GMT
WORKDIR /usr/src/ghost
# Tue, 12 Sep 2017 21:37:11 GMT
ENV GHOST_VERSION=0.11.11
# Tue, 12 Sep 2017 21:37:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 12 Sep 2017 21:37:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 12 Sep 2017 21:37:55 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 12 Sep 2017 21:37:55 GMT
VOLUME [/var/lib/ghost]
# Tue, 12 Sep 2017 21:37:55 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:37:55 GMT
EXPOSE 2368/tcp
# Tue, 12 Sep 2017 21:37:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4627b9c4364be507d515216e9dc746f11868f40695952de14126988951e566b2`  
		Last Modified: Tue, 12 Sep 2017 20:58:46 GMT  
		Size: 15.4 MB (15438836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6535eca5c59a02baff76e78250e99f3de2f986442e45920557a7441925e74148`  
		Last Modified: Tue, 12 Sep 2017 20:58:42 GMT  
		Size: 945.5 KB (945488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6cbb82e05a5e8f45d6b660bf686339d92ecaa4a6e56c0fd77df29f48d6c7d8`  
		Last Modified: Tue, 12 Sep 2017 21:38:38 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d5174af52c21e748cfa3b9eebbc365d7cbfa9f7cd9306a606e0d3735857a4d`  
		Last Modified: Tue, 12 Sep 2017 21:39:30 GMT  
		Size: 1.3 MB (1336095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dacb8e4474c393e441b0db7ace08c73b7441a80f0c5c0dae7f7d94df2212efb`  
		Last Modified: Tue, 12 Sep 2017 21:39:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e045ce3ec6a6b5595aee3ee2dacdcf9e7707c58b866fae2a3638ce82ce3283`  
		Last Modified: Tue, 12 Sep 2017 21:39:36 GMT  
		Size: 24.9 MB (24881679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc445aa39a68d3a217486a4962fc5a049737beeb7c056099a6b6f11c97164f51`  
		Last Modified: Tue, 12 Sep 2017 21:39:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b404c1e462727bf6165cb3d684655a526480132a726aa2b4f8d5cf10d8c432`  
		Last Modified: Tue, 12 Sep 2017 21:39:31 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
