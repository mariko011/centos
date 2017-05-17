## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:fa40defbd413d13d01cfe650e2133e93ad0961d415adfd01a4e35433826ff6f8
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43132251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bbf2607308b052a1c4c1395fbc5b13754b43e200bfd601de057114964bbb4e`
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
# Wed, 17 May 2017 21:07:25 GMT
ENV GHOST_VERSION=0.11.9
# Wed, 17 May 2017 21:08:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 17 May 2017 21:08:13 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 May 2017 21:08:15 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 17 May 2017 21:08:16 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 May 2017 21:08:17 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Wed, 17 May 2017 21:08:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 May 2017 21:08:19 GMT
EXPOSE 2368/tcp
# Wed, 17 May 2017 21:08:20 GMT
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
	-	`sha256:f63cf85e3a14b7fcd070d2c0b639fa959424f18e2d2c4afdfd86db98efa55fbb`  
		Last Modified: Wed, 17 May 2017 21:10:42 GMT  
		Size: 27.8 MB (27807283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31111cc6dc3f19b1a67e93fc85209a738df59437d4d529eaa939ff8936cfdacb`  
		Last Modified: Wed, 17 May 2017 21:10:36 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0680541edf6520011710ea5af0c25d59a0e89ec2eb7bc6c6b83583c661772e70`  
		Last Modified: Wed, 17 May 2017 21:10:37 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
