## `ghost:alpine`

```console
$ docker pull ghost@sha256:b0a633a0400d1188d58d6f6a4611645b5587698774d5557bb3aeb57e81dec727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:764e01545a6403d69f0690149d84dcfbdecae6acad52d406e7d11d21d894c836
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145549823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3de1eefedc36ddce28339f1cd573d413ce5f7bc1def94a8e2a060773fb8cf8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Wed, 01 Nov 2017 20:16:56 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Nov 2017 20:16:56 GMT
ENV YARN_VERSION=1.2.1
# Wed, 01 Nov 2017 20:17:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 01 Nov 2017 20:17:05 GMT
CMD ["node"]
# Sat, 04 Nov 2017 01:51:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 01:51:21 GMT
RUN apk add --no-cache 		bash
# Sat, 04 Nov 2017 01:51:21 GMT
ENV NODE_ENV=production
# Sat, 04 Nov 2017 01:51:21 GMT
ENV GHOST_CLI_VERSION=1.2.0
# Sat, 04 Nov 2017 01:51:52 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION"
# Sat, 04 Nov 2017 01:51:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 04 Nov 2017 01:51:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 04 Nov 2017 01:51:53 GMT
ENV GHOST_VERSION=1.16.2
# Sat, 04 Nov 2017 01:52:36 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		su-exec node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 		for f in "$GHOST_INSTALL/current/node_modules/.bin/knex-migrator"*; do 		[ -x "$f" ]; 		ln -svf "$f" /usr/local/bin/; 	done
# Sat, 04 Nov 2017 01:52:37 GMT
WORKDIR /var/lib/ghost
# Sat, 04 Nov 2017 01:52:37 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 04 Nov 2017 01:52:37 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Sat, 04 Nov 2017 01:52:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:52:38 GMT
EXPOSE 2368/tcp
# Sat, 04 Nov 2017 01:52:38 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8e4a07de9aff16693362a002b0e0f53b57e55efec02c856f70f876c41de56`  
		Last Modified: Wed, 01 Nov 2017 21:17:48 GMT  
		Size: 15.4 MB (15438317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737fa5c726e82777d62e37cd45ac0b99fc12b99099ffb196da752fe1fd86ea50`  
		Last Modified: Wed, 01 Nov 2017 21:17:44 GMT  
		Size: 1.0 MB (1015542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537a3c56e602279032240ebd140debc342ba0d2a2fd53e4375846e19e373d8ad`  
		Last Modified: Sat, 04 Nov 2017 01:57:32 GMT  
		Size: 8.4 KB (8366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0389a7b397b37e26418de76b449f160cd137aefac041e6e90f53d05ccb3b9732`  
		Last Modified: Sat, 04 Nov 2017 01:57:37 GMT  
		Size: 1.1 MB (1112361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6266613080704eb9295e0f43e841e9e27cba585adf0dad8163db82341dac010`  
		Last Modified: Sat, 04 Nov 2017 01:58:02 GMT  
		Size: 28.9 MB (28883496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bafa962ad59be771d417f14416596141dbf5ac618e4cfccb0fd1ab180e53a68`  
		Last Modified: Sat, 04 Nov 2017 01:58:37 GMT  
		Size: 96.7 MB (96706171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246c97c137e327b7bfabb774e7a2dbf7a5cbf1c2d3f91ec94c53c88aafb1590`  
		Last Modified: Sat, 04 Nov 2017 01:57:32 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
