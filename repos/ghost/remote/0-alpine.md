## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d2d245ff597c7f7da9e70457582f887ec3a6cd256dab896af61729d17ba9f662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7efd99865d7ff7d9574e80e6b716d112a9c0c431b7216da7fa6902ce62e99759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88e6965c34cfe740143a3dcec42408fc13651cf36cf3624069a6bc782cb090e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 23:51:53 GMT
ENV NODE_VERSION=6.12.2
# Sat, 09 Dec 2017 00:03:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Sat, 09 Dec 2017 00:03:49 GMT
ENV YARN_VERSION=1.3.2
# Sat, 09 Dec 2017 00:11:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Sat, 09 Dec 2017 00:11:12 GMT
CMD ["node"]
# Sat, 09 Dec 2017 00:59:11 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 09 Dec 2017 01:08:26 GMT
RUN apk add --no-cache 		bash 		tar
# Sat, 09 Dec 2017 01:08:26 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
WORKDIR /usr/src/ghost
# Sat, 09 Dec 2017 01:08:27 GMT
ENV GHOST_VERSION=0.11.12
# Sat, 09 Dec 2017 01:09:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Sat, 09 Dec 2017 01:09:24 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 09 Dec 2017 01:09:25 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Sat, 09 Dec 2017 01:09:25 GMT
VOLUME [/var/lib/ghost]
# Sat, 09 Dec 2017 01:09:26 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:09:26 GMT
EXPOSE 2368/tcp
# Sat, 09 Dec 2017 01:09:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b0c488c86bd6985b7ba9c7b8223ea502b7283be4777e5a1b22971ccbd62913`  
		Last Modified: Sat, 09 Dec 2017 00:34:47 GMT  
		Size: 15.5 MB (15457929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7d2a67805eaf05a868166db5e1ad01865f17cf8d550fc8d334800e3c9df30`  
		Last Modified: Sat, 09 Dec 2017 00:34:42 GMT  
		Size: 1.0 MB (1017575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ada119180428ab8c2e358d2f758715e75a3765040861bc0745cf75141a54e`  
		Last Modified: Sat, 09 Dec 2017 01:15:35 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca06b30e618ac72d0e25124917eee0f1719833ae7a96ff24f9f7769da758a`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 1.4 MB (1353599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0159189367a8e39988636f2279874b01b0b94691d047378ee6f664ae0e02eb`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945fae2c25092533372e042e946c87c8e743f173c9acf881b5f8a0a39134da2b`  
		Last Modified: Sat, 09 Dec 2017 01:23:53 GMT  
		Size: 25.2 MB (25230787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5af1a8baaa57d167ad6e40a24aabffec62c3981b69d4c3748a954ed367087e`  
		Last Modified: Sat, 09 Dec 2017 01:23:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd473005ff460ad8530271a77f4e21d0b6096af7f88c40e22ab3f017d5e1e84`  
		Last Modified: Sat, 09 Dec 2017 01:23:40 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
