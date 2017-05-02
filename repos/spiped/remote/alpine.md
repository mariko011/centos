## `spiped:alpine`

```console
$ docker pull spiped@sha256:c18dface10d83c4d39d78cdcb89d8a03ac9afe959c1cf5e55571d023d3a7a5c2
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3226474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca514d633d9d22883ea7d3cd68a2ff7dc1c0e96b4cf83901b1c87e8f48da33b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Mon, 01 May 2017 17:26:38 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 01 May 2017 17:26:49 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:50 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1324b50301f3cad3e97455e23fee2b37876848fe8459129c97584f9b9d862`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 77.5 KB (77517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a34a1a1349c916c2b3e31b85689e984273161f8f9aa5b4611d751feeb38759`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794be17ab23d081e5ca413bbbde6bb31fe62a7739847d87a103f80b46ae42c50`  
		Last Modified: Mon, 01 May 2017 17:28:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
