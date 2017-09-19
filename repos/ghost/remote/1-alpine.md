## `ghost:1-alpine`

```console
$ docker pull ghost@sha256:539c0fcd9fe6883613cff13e290ab5cb17547c23c4127dbbd8a74c77f370e093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:0416c285091cbb0c12e444c97d89ff8940a1fc6cfe057aeaafc2787eb5585674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148256806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b335a55ee1fca5d92a430e72da181ace3468349c65fd46061a856f4c996bba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 20:24:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:24:58 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:36:42 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 13 Sep 2017 20:36:42 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:36:50 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 13 Sep 2017 20:36:50 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:13:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 21:13:38 GMT
RUN apk add --no-cache 		bash
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:13:39 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:13:40 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 19 Sep 2017 21:37:33 GMT
ENV GHOST_VERSION=1.8.7
# Tue, 19 Sep 2017 21:38:10 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 19 Sep 2017 21:38:11 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 19 Sep 2017 21:38:11 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 19 Sep 2017 21:38:44 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 19 Sep 2017 21:38:45 GMT
WORKDIR /var/lib/ghost
# Tue, 19 Sep 2017 21:38:45 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 19 Sep 2017 21:38:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Tue, 19 Sep 2017 21:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 21:38:46 GMT
EXPOSE 2368/tcp
# Tue, 19 Sep 2017 21:38:46 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02e9bd0b129afc373209e2498ba6bd7157164b4a96de677a2e1224527558e3d`  
		Last Modified: Wed, 13 Sep 2017 20:51:01 GMT  
		Size: 15.4 MB (15438807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae02bb9be1084245b51165da53a51c16267d437758238436108e38b62ee73c83`  
		Last Modified: Wed, 13 Sep 2017 20:50:56 GMT  
		Size: 945.5 KB (945482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dd55024c52593c29fd34bf9e31b4442960627d5c074537ddb43b44c801685`  
		Last Modified: Wed, 13 Sep 2017 21:19:03 GMT  
		Size: 8.4 KB (8367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bea52f21d15abf9efa81d6d421474f05454334c0b6f6d271b714f31d813ba4`  
		Last Modified: Wed, 13 Sep 2017 21:19:06 GMT  
		Size: 1.1 MB (1095613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8555a39e5bc283285795ca7d77a78b88b74651206b7a5442e5d11007d8a53a`  
		Last Modified: Tue, 19 Sep 2017 21:39:52 GMT  
		Size: 34.8 MB (34795061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050bb0e454b0857713c458105418d056f23b79e7c8043869492e65589ffc71c`  
		Last Modified: Tue, 19 Sep 2017 21:40:01 GMT  
		Size: 93.6 MB (93587910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10395d4d78bc66f9fe7a00c5024fac91f62c5e6b13a19b6fb761903087d6c17b`  
		Last Modified: Tue, 19 Sep 2017 21:39:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
