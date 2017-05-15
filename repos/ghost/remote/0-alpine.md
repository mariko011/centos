## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:5c238719901a022976252a3e3521a30ab8519e4ac611031984f586b4fddfac68
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43071216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a13dbe03a54b5498826217e8001be5d1f480c0ac39a31e2f5b93df6398c76e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:54:44 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 21:54:45 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 22:08:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 15 May 2017 17:50:58 GMT
ENV YARN_VERSION=0.24.4
# Mon, 15 May 2017 17:51:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Mon, 15 May 2017 17:51:21 GMT
CMD ["node"]
# Mon, 15 May 2017 19:39:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 15 May 2017 19:39:11 GMT
RUN apk add --no-cache 		bash 		tar
# Mon, 15 May 2017 19:39:28 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Mon, 15 May 2017 19:39:29 GMT
WORKDIR /usr/src/ghost
# Mon, 15 May 2017 19:39:30 GMT
ENV GHOST_VERSION=0.11.8
# Mon, 15 May 2017 19:40:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Mon, 15 May 2017 19:40:40 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Mon, 15 May 2017 19:40:41 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Mon, 15 May 2017 19:40:42 GMT
VOLUME [/var/lib/ghost]
# Mon, 15 May 2017 19:41:03 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Mon, 15 May 2017 19:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 19:41:05 GMT
EXPOSE 2368/tcp
# Mon, 15 May 2017 19:41:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfecd2fc3423e3e41a02b9b21d5a5658f98c5882f9f7d4f75ad347f2ad4919`  
		Last Modified: Sat, 13 May 2017 08:33:57 GMT  
		Size: 10.7 MB (10688478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209e8331e69574e821975a7b9d0eb706f5aabb494ae10cbcb20d6fc2a12e9fd`  
		Last Modified: Mon, 15 May 2017 18:18:55 GMT  
		Size: 903.8 KB (903789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adfdda9b8666957f7f9d439cdeea169809c313c124f1fdf9a8af7228cdd95a2`  
		Last Modified: Mon, 15 May 2017 19:43:21 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbe520ba924ee3c2e020185997fec4a91739ead0bd8b82e5397bcd50c8cdb25`  
		Last Modified: Mon, 15 May 2017 19:43:22 GMT  
		Size: 1.3 MB (1340400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36aab4a73ff731f84ff8421236ec032e3bf0243fd735ec5588c51028c24e19a0`  
		Last Modified: Mon, 15 May 2017 19:43:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66246cb1ce0e01f56e5ec49c9981e822e7357d109730bd8e79f2f43ea0145695`  
		Last Modified: Mon, 15 May 2017 19:43:29 GMT  
		Size: 27.7 MB (27746249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c406aa82ca6c601d4264186c3efdb08e03e5746c9cd74289ca93258166583d`  
		Last Modified: Mon, 15 May 2017 19:43:21 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb8c66f1d66f39cf681745cc5fa700d847fd0abca20c02cc20b9699ec66d95f`  
		Last Modified: Mon, 15 May 2017 19:43:21 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
