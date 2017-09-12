## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:2da41c091d99f74d7f0cdb0b80b0459ef9340fc9f2aac1bb38b3ca292805ced8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:73b4c23e81ccfebef65f87b9aa174bb3dd13211d693fd13ac890a3314d0fa2b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148201495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b05d942ff745ee3d9ae658bf15db56ccab41468831df52fd2822e2482c07516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 12 Sep 2017 21:34:36 GMT
RUN apk add --no-cache 		bash
# Tue, 12 Sep 2017 21:34:36 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Tue, 12 Sep 2017 21:34:36 GMT
ENV NODE_ENV=production
# Tue, 12 Sep 2017 21:34:37 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 12 Sep 2017 21:34:37 GMT
ENV GHOST_VERSION=1.8.5
# Tue, 12 Sep 2017 21:35:09 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 12 Sep 2017 21:35:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 12 Sep 2017 21:35:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 12 Sep 2017 21:35:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 12 Sep 2017 21:35:45 GMT
WORKDIR /var/lib/ghost
# Tue, 12 Sep 2017 21:35:45 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 12 Sep 2017 21:35:46 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 12 Sep 2017 21:35:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:35:46 GMT
EXPOSE 2368/tcp
# Tue, 12 Sep 2017 21:35:46 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a39f98ba3ae45293c63f050b460fc24941c26c393dff58ebe079d8a648bcb90`  
		Last Modified: Tue, 12 Sep 2017 21:38:39 GMT  
		Size: 1.1 MB (1095630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374f431d1fb2e1e2a3727bf10fb368fb40646ba4968725060f52da6200a7afaa`  
		Last Modified: Tue, 12 Sep 2017 21:38:45 GMT  
		Size: 34.6 MB (34587494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1813c1ed523caf17a8f2514c5502d7728852146d6b299dc055d295f670cb5ba5`  
		Last Modified: Tue, 12 Sep 2017 21:38:55 GMT  
		Size: 93.7 MB (93740119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb4a0a9042b1dbf1faff87835b2483b3e907e579fa6b060625d8048659851df`  
		Last Modified: Tue, 12 Sep 2017 21:38:38 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
