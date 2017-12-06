## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:28b1131ac50e630d647c92a34f81867acce6faf0526d49d61c0c58c0e37cfaef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:aee5c34162297cf9ed19cc194cf680f9d929056449e5a1fbbe36b802329c733d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08196d00cdc6910e045455c914861c00ce04947c9a7e53f1d8dd00267aeda8a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 23:15:14 GMT
ENV NODE_VERSION=6.12.1
# Tue, 05 Dec 2017 23:27:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Tue, 05 Dec 2017 23:27:07 GMT
ENV YARN_VERSION=1.3.2
# Tue, 05 Dec 2017 23:27:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Tue, 05 Dec 2017 23:27:15 GMT
CMD ["node"]
# Tue, 05 Dec 2017 23:55:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 06 Dec 2017 00:03:37 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
WORKDIR /usr/src/ghost
# Wed, 06 Dec 2017 00:03:38 GMT
ENV GHOST_VERSION=0.11.12
# Wed, 06 Dec 2017 00:04:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 06 Dec 2017 00:04:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 06 Dec 2017 00:04:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 06 Dec 2017 00:04:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 06 Dec 2017 00:04:24 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 06 Dec 2017 00:04:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Dec 2017 00:04:24 GMT
EXPOSE 2368/tcp
# Wed, 06 Dec 2017 00:04:24 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d65738b47faecf6f8ba6c03cf0a7ed558f8d0854e508ff0849fac33c78cd9`  
		Last Modified: Tue, 05 Dec 2017 23:35:27 GMT  
		Size: 15.5 MB (15457816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c61e748e5c64e102a8ea8598609e95778470fce39304854ad55e97f09222c`  
		Last Modified: Tue, 05 Dec 2017 23:35:24 GMT  
		Size: 1.0 MB (1017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a49a142d2dce07a11a751eeec92d56caca0c99cd943bc83609245e5b9000`  
		Last Modified: Wed, 06 Dec 2017 00:11:34 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ee8b5c6a8de12bb902f7a884fd9da39098645d6cb6f168480d5a9f7918f48b`  
		Last Modified: Wed, 06 Dec 2017 00:13:49 GMT  
		Size: 1.4 MB (1353566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c288673dad761de223b7dc491bcb6140115d9f295ca6dbe8c198863e48b7`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5b3bfb9ab0a3759d829a14f788dbf1853283beccb05123ef31b4b1eba4c57c`  
		Last Modified: Wed, 06 Dec 2017 00:14:03 GMT  
		Size: 25.2 MB (25230723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2d82e05d034959ed7062037601d90c75e9281ae658988853ea542bec49d03`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c63a76af38be0347bf84a1e9f7ed4aaaee07f009c616cd233d94cc6d5a263e5`  
		Last Modified: Wed, 06 Dec 2017 00:13:48 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
