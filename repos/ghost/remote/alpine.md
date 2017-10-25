## `ghost:alpine`

```console
$ docker pull ghost@sha256:cdef8cfa5509e9dc44c1644fbf08c2ab3a9aa6bf3f9bddf546746815fff8bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:67d69e9eff9fe40237708a9b6174abc5911c2bb9f8eba8228b0573d53e7a7b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153788702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8896ec053c713835fd2357763266f7e42b2c9b96f779895bc0f5e972f667bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 14:52:27 GMT
ENV NODE_VERSION=6.11.5
# Wed, 25 Oct 2017 15:04:53 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 25 Oct 2017 15:07:00 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:07:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 25 Oct 2017 15:07:15 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:53:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 25 Oct 2017 15:53:48 GMT
RUN apk add --no-cache 		bash
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 25 Oct 2017 15:53:52 GMT
ENV NODE_ENV=production
# Wed, 25 Oct 2017 15:53:53 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Wed, 25 Oct 2017 18:48:09 GMT
ENV GHOST_VERSION=1.15.1
# Wed, 25 Oct 2017 18:48:49 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 25 Oct 2017 18:48:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 25 Oct 2017 18:49:35 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Wed, 25 Oct 2017 18:49:39 GMT
WORKDIR /var/lib/ghost
# Wed, 25 Oct 2017 18:49:39 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 25 Oct 2017 18:49:45 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Wed, 25 Oct 2017 18:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:49:45 GMT
EXPOSE 2368/tcp
# Wed, 25 Oct 2017 18:49:45 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87685d26c6c21ebee9e6ff22ceed7b171bad071a083f55b56e9888372379d79d`  
		Last Modified: Wed, 25 Oct 2017 15:28:55 GMT  
		Size: 15.8 MB (15820273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15776a724df07c9019a7350dbed0f8bfc429709c7f473a141b2bd42d904b2`  
		Last Modified: Wed, 25 Oct 2017 15:28:50 GMT  
		Size: 1.0 MB (1011034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba735f0f7d02b7636be068c461f1c7246e2abd7931b048fdd550cef679de5`  
		Last Modified: Wed, 25 Oct 2017 15:59:52 GMT  
		Size: 8.4 KB (8365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d2e411961354e08af0976507f94b054e1434c6ba4fdecb5c8fc966c8b5ff76`  
		Last Modified: Wed, 25 Oct 2017 15:59:55 GMT  
		Size: 1.1 MB (1112374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14a21f1283754f332a93938b6a7c7d47a32df66322e4f570377fdd1937256c`  
		Last Modified: Wed, 25 Oct 2017 18:58:16 GMT  
		Size: 39.5 MB (39531791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac7db30d265ced0ff10097c5047e824690c0597777bab532d6bdf5c797735fe`  
		Last Modified: Wed, 25 Oct 2017 18:58:37 GMT  
		Size: 93.9 MB (93919303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be52b483006e40bd3fc7ccc6539704a65b6f4b4e845aa6e639e7ab4a09c837e`  
		Last Modified: Wed, 25 Oct 2017 18:57:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
