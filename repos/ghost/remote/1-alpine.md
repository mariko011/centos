## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:fbb6bd71f3d9cea3a14de06550f2d6c70fd1beb9409b6dd735c08a5eb5f53a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:58533f921876108d123461de193a7a7b68f988beebfa86fe39175d7f05bca426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153379610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9c09bb6b5783a0d98131e582732c4d28bd454c56bf8c8d62eb87ca5cb33c8b`
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
# Wed, 18 Oct 2017 21:40:01 GMT
ENV GHOST_VERSION=1.14.1
# Wed, 18 Oct 2017 21:40:39 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 18 Oct 2017 21:40:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 18 Oct 2017 21:40:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 18 Oct 2017 21:41:22 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 18 Oct 2017 21:41:24 GMT
WORKDIR /var/lib/ghost
# Wed, 18 Oct 2017 21:41:24 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 18 Oct 2017 21:41:24 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 18 Oct 2017 21:41:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Oct 2017 21:41:25 GMT
EXPOSE 2368/tcp
# Wed, 18 Oct 2017 21:41:25 GMT
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
	-	`sha256:5629fe98a71d64efb551cb1e913b55ed2c34b4690ff5fcb1c906e7a38a54c6a8`  
		Last Modified: Wed, 18 Oct 2017 21:43:11 GMT  
		Size: 39.5 MB (39528367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db078cc56357513c315af7c6fd2e40662d72e8898ecd370f73ce6fa069b198`  
		Last Modified: Wed, 18 Oct 2017 21:43:21 GMT  
		Size: 93.9 MB (93918466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fda18feedfb00366d8697a6a0b497dd37e8a8618cdd55890fea71502876b3b`  
		Last Modified: Wed, 18 Oct 2017 21:43:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
