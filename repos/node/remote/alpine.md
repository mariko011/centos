## `node:alpine`

```console
$ docker pull node@sha256:6dcd183eaf2852dd8c1079642c04cc2d1f777e4b34f2a534cc0ad328a98d7f73
```

-	Platforms:
	-	linux; amd64

### `node:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19879429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b4a6de40c34589a8aa20ffc3fcb56aa358043f174539499fd394eedfcf3816`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 09 Mar 2017 21:53:56 GMT
ENV NODE_VERSION=7.7.2
# Thu, 09 Mar 2017 22:08:25 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Thu, 09 Mar 2017 22:08:25 GMT
ENV YARN_VERSION=0.21.3
# Thu, 09 Mar 2017 22:08:33 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Thu, 09 Mar 2017 22:08:34 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7746e437f7474504488d0d6e6a6e4883ead5446e8a2796737fb70487a87d61`  
		Last Modified: Thu, 09 Mar 2017 22:11:01 GMT  
		Size: 16.7 MB (16677574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ac7b95f9df96d167f6a7d213b1c849a549c39be09beb18e575b74cbc0525e`  
		Last Modified: Thu, 09 Mar 2017 22:10:57 GMT  
		Size: 888.5 KB (888471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
