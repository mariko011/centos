## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:2a95d2571d61e13202574c12abbb30ddefad70cd1b539c520cc8749b544cbaf8
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42302941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a218d29997a39f0f039def06eac0f9cd455786316d3b31e912d55168f0669a83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 19:53:26 GMT
ENV NODE_VERSION=4.8.2
# Fri, 07 Apr 2017 17:42:34 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 20 Apr 2017 14:41:29 GMT
ENV YARN_VERSION=0.23.2
# Thu, 20 Apr 2017 14:41:36 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Thu, 20 Apr 2017 14:41:37 GMT
CMD ["node"]
# Thu, 20 Apr 2017 20:09:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 20 Apr 2017 20:09:49 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 20 Apr 2017 20:09:50 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 20 Apr 2017 20:09:50 GMT
WORKDIR /usr/src/ghost
# Thu, 20 Apr 2017 20:09:51 GMT
ENV GHOST_VERSION=0.11.7
# Thu, 20 Apr 2017 20:10:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 20 Apr 2017 20:10:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 20 Apr 2017 20:10:37 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 20 Apr 2017 20:10:37 GMT
VOLUME [/var/lib/ghost]
# Thu, 20 Apr 2017 20:10:38 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 20 Apr 2017 20:10:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Apr 2017 20:10:39 GMT
EXPOSE 2368/tcp
# Thu, 20 Apr 2017 20:10:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef19eb3aaa8d2dfabaf5c800ad7b6a47ba903ccbb83a3c5fc00e92724c17bf48`  
		Last Modified: Fri, 07 Apr 2017 17:59:51 GMT  
		Size: 10.5 MB (10484958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da182fec9e38735c84aea5b3f3b95e998395ef29ab0aef25bbb0a8a78c7cb58`  
		Last Modified: Thu, 20 Apr 2017 14:56:46 GMT  
		Size: 896.1 KB (896142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd69751ca1220e3e5a9be7badab2da075cc4336ffc7cbfd07f5a427528427e86`  
		Last Modified: Thu, 20 Apr 2017 20:12:24 GMT  
		Size: 8.3 KB (8318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d400c0c941cefbcddccf18b2802b972dceaacad021b0e403623158fbe904cf`  
		Last Modified: Thu, 20 Apr 2017 20:12:22 GMT  
		Size: 1.3 MB (1340403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a50571167b9243164d6a9426027ad33c69261a25b12ce59b1cc6dd6b95eda`  
		Last Modified: Thu, 20 Apr 2017 20:12:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52bd0f5fcc76f3896bf1612a3df3914fd4a8d55c5be16012919ec6c2525525`  
		Last Modified: Thu, 20 Apr 2017 20:12:28 GMT  
		Size: 27.3 MB (27258795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345ef92805c54454c6f763913fa514ff59a1cce974e78c15198683d4b3af54ef`  
		Last Modified: Thu, 20 Apr 2017 20:12:21 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a278ec740a7ad3dedc42d6ec1122f6e1859c7becbcad755a4d75adf068d454`  
		Last Modified: Thu, 20 Apr 2017 20:12:21 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
