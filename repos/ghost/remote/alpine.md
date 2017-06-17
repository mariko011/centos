## `ghost:alpine`

```console
$ docker pull ghost@sha256:af3b02ae12592ff88bbdc5b1932d0c1347aa73753251a28098f3834d322903e0
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41101832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765b1b27e0bff13ee27e0a8653d5b5baa5294b2487df971871deab4cce16e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:48:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:11:49 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:19:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 31 May 2017 20:19:55 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:20:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 31 May 2017 20:20:05 GMT
CMD ["node"]
# Wed, 31 May 2017 21:09:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 31 May 2017 21:09:40 GMT
RUN apk add --no-cache 		bash 		tar
# Wed, 31 May 2017 21:09:57 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:09:58 GMT
WORKDIR /usr/src/ghost
# Fri, 16 Jun 2017 23:03:37 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 16 Jun 2017 23:04:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 16 Jun 2017 23:28:17 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 16 Jun 2017 23:28:18 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 16 Jun 2017 23:28:19 GMT
VOLUME [/var/lib/ghost]
# Fri, 16 Jun 2017 23:28:21 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Fri, 16 Jun 2017 23:28:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 23:28:22 GMT
EXPOSE 2368/tcp
# Fri, 16 Jun 2017 23:28:23 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ab763b46cf3606ddc78f5f6c7c151b0b44a5e30f8c1190b67e43862594cea`  
		Last Modified: Wed, 31 May 2017 20:54:40 GMT  
		Size: 10.7 MB (10688589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a6d69019072cb89eb9dab98e201b3657a493846b02bde299a28777151c7f`  
		Last Modified: Wed, 31 May 2017 20:54:38 GMT  
		Size: 908.0 KB (907962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb85c2f71480e7df35c7d735148e308cfd438652f7eedcb9b5485d5e9bbb91b3`  
		Last Modified: Wed, 31 May 2017 21:15:18 GMT  
		Size: 8.3 KB (8323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda10546ebc834c1a7da9b54581702a93d20eac25666619ec8105e342e1796af`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 1.3 MB (1340411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1195fd0c235a28fcc5362ea573080305bfa15f7d7e5a12e98588f72c911c6f`  
		Last Modified: Wed, 31 May 2017 21:15:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c77748e7adc8926cdd5b36942e27799b6aedb59162023be6514dd94b43f95ad`  
		Last Modified: Sat, 17 Jun 2017 01:12:45 GMT  
		Size: 25.8 MB (25772542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ddfec3b79d7346eed62e9f170f2bceba3df6df209c811cd7ffd69268d5601c`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75dfa979340ecde2a635c1af91e7ab4c788c167f7f34190d3accf337447216a`  
		Last Modified: Sat, 17 Jun 2017 01:12:25 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
