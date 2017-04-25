## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:247f7b0cc83a93e200c5b65ed0a501417478526a3f9d6b34eb487ab5c19879f1
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42790405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e82673a596fc720e0e57e3ae9e5d7c01f978d40bb2b64a06bbb3c325bb634f2`
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
# Tue, 25 Apr 2017 00:05:07 GMT
ENV GHOST_VERSION=0.11.8
# Tue, 25 Apr 2017 00:06:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Tue, 25 Apr 2017 00:06:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 25 Apr 2017 00:06:05 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Tue, 25 Apr 2017 00:06:05 GMT
VOLUME [/var/lib/ghost]
# Tue, 25 Apr 2017 00:06:07 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Tue, 25 Apr 2017 00:06:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 00:06:08 GMT
EXPOSE 2368/tcp
# Tue, 25 Apr 2017 00:06:09 GMT
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
	-	`sha256:84dd15c7caf1e7bb45570dcba370e4fabde313bae383850a0f1213bcc825bc1f`  
		Last Modified: Tue, 25 Apr 2017 00:08:17 GMT  
		Size: 27.7 MB (27746260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027bfb5eeb7c85b1081ddb5b056fa0b116a7c7ed982872deef185d6f720e51fc`  
		Last Modified: Tue, 25 Apr 2017 00:08:10 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7aadba6565e4a711b10c0e91ab74c45eb36912942f26b60e1aabe13bf503904`  
		Last Modified: Tue, 25 Apr 2017 00:08:10 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
