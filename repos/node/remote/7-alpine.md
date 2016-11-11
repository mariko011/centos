## `node:7-alpine`

```console
$ docker pull node@sha256:dad2f53e80a3d1f0920f6d58ffe8a675979160519232a0c6cf37563c6f4e1f56
```

-	Platforms:
	-	linux; amd64

### `node:7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19148797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b3e6b6395f740bdfe60b964d4ccd7563e6b2c744e745f45180232495bdf4b1`
-	Default Command: `["node"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 11 Nov 2016 20:26:52 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 11 Nov 2016 20:26:52 GMT
ENV NODE_VERSION=7.1.0
# Fri, 11 Nov 2016 20:41:10 GMT
RUN addgroup -S node     && adduser -D -S -h /var/cache/node -s /sbin/nologin -G node node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python         tar   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.gz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.gz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 11 Nov 2016 20:41:10 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc5c88aafef17aa7ffd6f1d92f153509937275a05bdc977417673da958ad6ed`  
		Last Modified: Fri, 11 Nov 2016 21:01:27 GMT  
		Size: 16.8 MB (16835839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
