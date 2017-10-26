## `ghost:alpine`

```console
$ docker pull ghost@sha256:2ef888cef8617b8aa4e9e2e5d8dfa0fd18e1da7ac121f3c5127c07c5c65f149d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:8239b1b610aeb10291770bab539bf4e6bf952eca058dfdba520025dd4203e46f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153452931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98975fad2d9137410714f6948e113df10e61b3fa975687b5b0e209622b84f0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:54:46 GMT
ENV NODE_VERSION=6.11.5
# Thu, 26 Oct 2017 01:07:16 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 26 Oct 2017 01:08:01 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 01:08:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Thu, 26 Oct 2017 01:08:10 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:29:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:29:36 GMT
RUN apk add --no-cache 		bash
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Thu, 26 Oct 2017 04:29:40 GMT
ENV NODE_ENV=production
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_CLI_VERSION=1.1.3
# Thu, 26 Oct 2017 04:29:40 GMT
ENV GHOST_VERSION=1.15.1
# Thu, 26 Oct 2017 04:30:19 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 26 Oct 2017 04:30:20 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 26 Oct 2017 04:30:20 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 26 Oct 2017 04:31:03 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		su-exec node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	su-exec node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	su-exec node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 26 Oct 2017 04:31:04 GMT
WORKDIR /var/lib/ghost
# Thu, 26 Oct 2017 04:31:05 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 26 Oct 2017 04:31:05 GMT
COPY file:fe4f8ce065580d78daf2ea3ae3ab9174f3edd7740df8b95889926dc1cdfe77b0 in /usr/local/bin 
# Thu, 26 Oct 2017 04:31:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:31:05 GMT
EXPOSE 2368/tcp
# Thu, 26 Oct 2017 04:31:05 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05058a88cd04a1ce80e2d1b4d7c20c23055dfa0ea55ab6c094ba06719a6f381`  
		Last Modified: Thu, 26 Oct 2017 01:21:34 GMT  
		Size: 15.4 MB (15434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f27787230b3b81c43d03f83304563d10be1cee4f3b620f375391068e8dc6`  
		Last Modified: Thu, 26 Oct 2017 01:21:29 GMT  
		Size: 1.0 MB (1011044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9f7db51a967db740f17ba6d1d955e0249f44fb281df7d59c98967b5c84ef2a`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 8.4 KB (8364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdf8345b3ca320ebe212926a2cf5632e9ace106042829c5152d63166db0db3`  
		Last Modified: Thu, 26 Oct 2017 04:33:04 GMT  
		Size: 1.1 MB (1112351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863984ca80e2aae4efc368ab815c61a5e74c06fdc2c76c16bbb8e9f167a1ebf2`  
		Last Modified: Thu, 26 Oct 2017 04:33:45 GMT  
		Size: 39.6 MB (39581877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966bc59c9efc1f94212918b34f6660f34533a8c3980d91b81ea7ad3e7f78335`  
		Last Modified: Thu, 26 Oct 2017 04:34:08 GMT  
		Size: 93.9 MB (93919531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1279bb1313822741936a0a38ae01fb51c90ad49ea8c1f6c7c71382af6f99c03`  
		Last Modified: Thu, 26 Oct 2017 04:32:55 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
