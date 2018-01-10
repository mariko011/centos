## `node:argon-alpine`

```console
$ docker pull node@sha256:6eab176d2b3299509d20541757c2619f73ebd707d6b85f3e0ba994ae61e15861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `node:argon-alpine` - linux; amd64

```console
$ docker pull node@sha256:b75d97faec6cafe96590f29bcdb47985be1185477c248996672199ee776c1b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13994827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18522c053a8ae804ff2be1fe83169a34f7629eb53570a42e885cf1ec3110b715`
-	Default Command: `["node"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:02:27 GMT
ENV NODE_VERSION=4.8.7
# Wed, 10 Jan 2018 01:11:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 10 Jan 2018 01:15:37 GMT
ENV YARN_VERSION=1.3.2
# Wed, 10 Jan 2018 01:15:46 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 10 Jan 2018 01:15:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d0e93b7cbb3dc002c84d08f63b7e9434fc025805d7b4aa22cf672472b0cc26`  
		Last Modified: Wed, 10 Jan 2018 01:20:40 GMT  
		Size: 10.6 MB (10589683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c5e27002acb92011dcfcb2e8d8360266c3e74638a3a45f9645b55e3206500`  
		Last Modified: Wed, 10 Jan 2018 01:20:38 GMT  
		Size: 1.0 MB (1017574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
