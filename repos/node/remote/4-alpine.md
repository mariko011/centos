## `node:4-alpine`

```console
$ docker pull node@sha256:0b23ccf4c10105321a4a27d105bda514fe1ee2c481e59ac31481f591a1d362be
```

-	Platforms:
	-	linux; amd64

### `node:4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13174068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332e0f8b831d5796ac21f7a4f6454cf6aab7438f94c792b1146be615d9dc1766`
-	Default Command: `["node"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Fri, 11 Nov 2016 20:26:52 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 11 Nov 2016 20:53:01 GMT
ENV NODE_VERSION=4.6.2
# Fri, 11 Nov 2016 21:00:12 GMT
RUN addgroup -S node     && adduser -D -S -h /var/cache/node -s /sbin/nologin -G node node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python         tar   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.gz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.gz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.gz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 11 Nov 2016 21:00:12 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7abd5107a5e6f53d92fe8446034c596eeb51e3c42269b62788aa64abc55f04c`  
		Last Modified: Fri, 11 Nov 2016 21:10:50 GMT  
		Size: 10.9 MB (10861110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
