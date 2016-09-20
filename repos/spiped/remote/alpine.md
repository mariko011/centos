## `spiped:alpine`

```console
$ docker pull spiped@sha256:35e4c2005b108aebd892365926ca67ea489181336e3fa4d885904e1a37318560
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e5ca55104a8fbe7adfe4199e8f00e131c5be4fef969708b36fb78b5c75ed87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 03:03:35 GMT
MAINTAINER Tim Düsterhus
# Tue, 20 Sep 2016 03:03:36 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 20 Sep 2016 03:03:38 GMT
RUN apk add --no-cache libssl1.0
# Tue, 20 Sep 2016 03:03:38 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 20 Sep 2016 03:03:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 20 Sep 2016 03:03:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 20 Sep 2016 03:03:40 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 20 Sep 2016 03:03:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 20 Sep 2016 03:03:50 GMT
VOLUME [/spiped]
# Tue, 20 Sep 2016 03:03:51 GMT
WORKDIR /spiped
# Tue, 20 Sep 2016 03:03:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 20 Sep 2016 03:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 03:03:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6d4cd8744e54d96ef48f4e19799980fcb380e98f7507a864f1003eda0cd0da`  
		Last Modified: Tue, 20 Sep 2016 03:04:04 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54389786c4862971d69eca0774550d1d6276f4c7600865ac88a12e5f5f4cdaca`  
		Last Modified: Tue, 20 Sep 2016 03:04:01 GMT  
		Size: 5.3 KB (5270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb987ecf7e97da891994ab68f5b012b80b9dadba0f70db8b2f4f7497ed08b5e9`  
		Last Modified: Tue, 20 Sep 2016 03:04:01 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4919951c00d21c2820ff43bf513e5628a6275a5385ac327cdca096779d9bd8e`  
		Last Modified: Tue, 20 Sep 2016 03:04:01 GMT  
		Size: 66.6 KB (66628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0811454c6d8a8aeda7a4f4f59a6d1fa4333888ec57ec3ba73d6f5ce484c1f1c`  
		Last Modified: Tue, 20 Sep 2016 03:04:01 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a1f940700ab916f8673e8df98e65e20af6e0eb2b358174de3418ff09adaa2c`  
		Last Modified: Tue, 20 Sep 2016 03:04:01 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
