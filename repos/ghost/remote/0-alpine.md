## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:26a691bac954e9b8e07da7346e82d5ea14218361395c16e38793eec63c9957c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:4ad3d7e137160c04def7f214fcae86a03d473a76efc88af5f820bf194bd932f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44996427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ae23590f30dcbf59bd5464a61c9d637ebc7ff58820fd39e0aac46f08b9271f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Wed, 13 Sep 2017 21:16:34 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 13 Sep 2017 21:16:34 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 13 Sep 2017 21:16:34 GMT
WORKDIR /usr/src/ghost
# Wed, 13 Sep 2017 21:16:35 GMT
ENV GHOST_VERSION=0.11.11
# Wed, 13 Sep 2017 21:17:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 13 Sep 2017 21:17:23 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 13 Sep 2017 21:17:24 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 13 Sep 2017 21:17:24 GMT
VOLUME [/var/lib/ghost]
# Wed, 13 Sep 2017 21:17:25 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:25 GMT
EXPOSE 2368/tcp
# Wed, 13 Sep 2017 21:17:25 GMT
CMD ["npm" "start"]
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
	-	`sha256:cc6998b8eab62af074a96f5a68111c04090ff0a876b7a501917024948d84228a`  
		Last Modified: Wed, 13 Sep 2017 21:21:11 GMT  
		Size: 1.3 MB (1336092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0b83b60255add53275d283becad4dd2c65fbacccb6ba51342326cab98cde9`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940406319f692a95bc97b34410f9ad07b1ac5410b537fedf4bcef9cd1cf19f22`  
		Last Modified: Wed, 13 Sep 2017 21:21:20 GMT  
		Size: 24.9 MB (24881708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ebfd1db388965772b75bf1597d45b7d4cd3d8c591934d37ad09b94b5e43d2`  
		Last Modified: Wed, 13 Sep 2017 21:21:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a533120c862f1a83b05447d226be18d2af33f4860087d080db846d1360a05`  
		Last Modified: Wed, 13 Sep 2017 21:21:06 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
