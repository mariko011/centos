## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:2d823bc5c3d3739ea6a34438390a87fd5827a4fa4d3e58aeab1fe810ddb9776b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:f87a75c4ca3e41843adfcfb09ebf6852bd849e3a7e601bc3f6af24cd504fd53f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072fd22061aa1f91a3fbbfa905ce5a999e60d9eee28cd8d3a62678b3965e2977`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 20:50:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 12 Sep 2017 20:50:57 GMT
RUN apk add --no-cache libssl1.0
# Tue, 12 Sep 2017 20:50:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Sep 2017 20:50:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Sep 2017 20:50:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Sep 2017 20:51:14 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 12 Sep 2017 20:51:14 GMT
VOLUME [/spiped]
# Tue, 12 Sep 2017 20:51:14 GMT
WORKDIR /spiped
# Tue, 12 Sep 2017 20:51:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Sep 2017 20:51:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 20:51:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302c3f44a9f79018c2d10e328510745b0a5536a1c6c72899fa56b3cd85d600a4`  
		Last Modified: Tue, 12 Sep 2017 20:51:47 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92b935b93309a8bdccec0e6f934765c1315a82b08be9698ed376830355651f`  
		Last Modified: Tue, 12 Sep 2017 20:51:49 GMT  
		Size: 1.3 MB (1286003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54bf8ce88634d5745fe93df9e5c7ebc01eef7466c8a138a32f9be691d279f2`  
		Last Modified: Tue, 12 Sep 2017 20:51:47 GMT  
		Size: 467.8 KB (467803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced0d4dacbacf577a4206386cde20710e2e851e64751b8ac2fc1a648932a3607`  
		Last Modified: Tue, 12 Sep 2017 20:51:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38446293dec20e7741305ca6c7d41e9e597f34ba2910d24e86b94ef38fe0ec2b`  
		Last Modified: Tue, 12 Sep 2017 20:51:48 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
