## `node:6-alpine`

```console
$ docker pull node@sha256:dbbb79d6b6e90c2cfe8b3b6d8a648dcfbbfe57353eab885bca00c6467aa191f1
```

-	Platforms:
	-	linux; amd64

### `node:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18154509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6119609b0baa8123f6564c6df237b5ae445e59c3f98d8be2d7f776e1be377e1e`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 22 Feb 2017 19:59:49 GMT
ENV NODE_VERSION=6.10.0
# Wed, 22 Feb 2017 20:11:11 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Mar 2017 17:35:56 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:04 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 01 Mar 2017 17:36:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f898b2cceca51dbc0aa9c0394fece9e48cd9fc73f0b9a5091bce7e6197339a27`  
		Last Modified: Wed, 22 Feb 2017 20:26:47 GMT  
		Size: 15.0 MB (14968888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b6dc319cb9d09aacff739e8a51c9400f4d460bb7e576a8ab19cf79cb2d81f`  
		Last Modified: Wed, 01 Mar 2017 17:45:12 GMT  
		Size: 872.5 KB (872531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
