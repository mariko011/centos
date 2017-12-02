## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:d19960421e83e73aa51200c86f2ddfc8ba01f07f2eda64f66a4380440fa8b685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:78c2c8ff28643684c89dc7c7da67e5bf2576d475033defec597d78990d1a3a6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32068cef9e346a77a484df15cc2cf0a3b7a6df0378f2ea41f295645059326387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:44 GMT
ADD file:c05a199f603e2a97ea93d9f6cc210a1c8ab27eda35f3613722bfcf697da36483 in / 
# Fri, 01 Dec 2017 18:49:45 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:41:41 GMT
ENV NODE_VERSION=6.12.0
# Fri, 01 Dec 2017 21:55:14 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 01 Dec 2017 21:57:11 GMT
ENV YARN_VERSION=1.3.2
# Fri, 01 Dec 2017 21:57:19 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 01 Dec 2017 21:57:20 GMT
CMD ["node"]
# Fri, 01 Dec 2017 22:38:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 22:41:34 GMT
RUN apk add --no-cache 		bash 		tar
# Fri, 01 Dec 2017 22:41:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 01 Dec 2017 22:41:34 GMT
WORKDIR /usr/src/ghost
# Fri, 01 Dec 2017 22:41:35 GMT
ENV GHOST_VERSION=0.11.12
# Fri, 01 Dec 2017 22:42:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 01 Dec 2017 22:42:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 01 Dec 2017 22:42:21 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 01 Dec 2017 22:42:22 GMT
VOLUME [/var/lib/ghost]
# Fri, 01 Dec 2017 22:42:22 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:42:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:42:22 GMT
EXPOSE 2368/tcp
# Fri, 01 Dec 2017 22:42:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:ab7e51e37a183df284512426b1cb56d0404532b6011c823f35127c796fb97b13`  
		Last Modified: Fri, 01 Dec 2017 18:58:11 GMT  
		Size: 2.4 MB (2387532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370669bea92123d6cc7925b4d6a276c2c621c5b70a2fb0d8e2faeb485f939555`  
		Last Modified: Fri, 01 Dec 2017 22:09:07 GMT  
		Size: 15.5 MB (15457807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed845e808cec73ee14d3701ae8ceb627edc0288b99c1d48dfad9d21e18b535f3`  
		Last Modified: Fri, 01 Dec 2017 22:09:01 GMT  
		Size: 1.0 MB (1017564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022dd3627b4d710d3b20b0fdfeff1b2cf7db68bd9b519c734bab25091404520`  
		Last Modified: Fri, 01 Dec 2017 22:44:05 GMT  
		Size: 8.4 KB (8362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44454755a18cfd7b15bb2674cd389b09eda9b10e4293ef2a9941595d716050ba`  
		Last Modified: Fri, 01 Dec 2017 22:50:23 GMT  
		Size: 1.4 MB (1353588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116c8ecdcba55aa12b505f56da501d009360605cffee4bdb13304a35c00c1839`  
		Last Modified: Fri, 01 Dec 2017 22:50:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca74d945a18bba5423c8fec92763964fb42b2c97247e1d8008c9c33da677ab`  
		Last Modified: Fri, 01 Dec 2017 22:50:36 GMT  
		Size: 25.2 MB (25230941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d740164ffd4c0e3a044ab875da46caa157055f454bacd04bfff0c67da3b9857`  
		Last Modified: Fri, 01 Dec 2017 22:50:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c37d395198b4893fa2916e4866ae1e66d43437141d4b0f8bd1b0a11c4babab`  
		Last Modified: Fri, 01 Dec 2017 22:50:22 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
