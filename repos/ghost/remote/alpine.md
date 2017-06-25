## `ghost:alpine`

```console
$ docker pull ghost@sha256:80dc2b9c6cd060540f6ec7e063990de39658bfbbdc8fef5a4f6e3f4ae34124c2
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41104064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870a8eb809c2b7f8090097f32ca1461fa4690cd6ddf9111b13bc5c35b607aca2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 19 Jun 2017 16:54:49 GMT
ADD file:cf1b74f7af8abcfbe58722467970b39b3ef9c8343665ef2d175f058f734a7f6e in / 
# Mon, 19 Jun 2017 16:55:12 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 21:16:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Mon, 19 Jun 2017 21:47:16 GMT
ENV NODE_VERSION=4.8.3
# Mon, 19 Jun 2017 22:04:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Mon, 19 Jun 2017 22:16:52 GMT
ENV YARN_VERSION=0.24.4
# Mon, 19 Jun 2017 22:17:24 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Mon, 19 Jun 2017 22:18:02 GMT
CMD ["node"]
# Tue, 20 Jun 2017 18:33:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 18:33:26 GMT
RUN apk add --no-cache 		bash 		tar
# Tue, 20 Jun 2017 18:33:48 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 20 Jun 2017 18:33:49 GMT
WORKDIR /usr/src/ghost
# Tue, 20 Jun 2017 18:33:50 GMT
ENV GHOST_VERSION=0.11.10
# Tue, 20 Jun 2017 18:34:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 20 Jun 2017 18:35:46 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 20 Jun 2017 18:35:48 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 20 Jun 2017 18:35:49 GMT
VOLUME [/var/lib/ghost]
# Tue, 20 Jun 2017 18:42:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:42:09 GMT
EXPOSE 2368/tcp
# Tue, 20 Jun 2017 18:42:33 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:acb474fa89565f9f79ee5ddaaaad12c59954e2694d005ec120d6b11825bad191`  
		Last Modified: Mon, 19 Jun 2017 17:06:54 GMT  
		Size: 2.4 MB (2385060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebaf3caf66563a6fab6f5c07c4b75b8587d7ffb0122e7e69be2eaf1ef30ee237`  
		Last Modified: Sat, 24 Jun 2017 15:28:45 GMT  
		Size: 10.7 MB (10688764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1b76222a87356e1a0e4748f3ec746d3a5a5522f5752b4d7d9f8ef09528466`  
		Last Modified: Sat, 24 Jun 2017 15:28:40 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2149b9c168ed4c9a969a38d6f028cbf0f752b4ac81603ad7e0ea5799dcb0fb`  
		Last Modified: Sun, 25 Jun 2017 09:08:25 GMT  
		Size: 8.3 KB (8315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761a22a7f07dde0e26d851883779220a3f1e71540f457006b72b9118fa16e229`  
		Last Modified: Sun, 25 Jun 2017 09:08:26 GMT  
		Size: 1.3 MB (1340410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb286c37ee22776c15641af00b504bc49d81f4342f78627a43e341ea5f26442`  
		Last Modified: Sun, 25 Jun 2017 09:08:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e83de150b84aaf878121a8d78162b57069c65090bc3174ff2fec8cf8cd4988d`  
		Last Modified: Sun, 25 Jun 2017 09:08:40 GMT  
		Size: 25.8 MB (25772603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c0ffa4fbdaa3a5e188ecf04843874d923ce271e12ae30b854759a13996653b`  
		Last Modified: Sun, 25 Jun 2017 09:08:24 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914192682f15169ce8347ebe1fa29bb2f705fac0e638c4307f0daec7ee19236`  
		Last Modified: Sun, 25 Jun 2017 09:08:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
