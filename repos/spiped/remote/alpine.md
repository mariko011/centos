## `spiped:alpine`

```console
$ docker pull spiped@sha256:6b56a3985d92a6c90dd8c387fd5c75efc02f08ce0c413fc77de15b636e515a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:d5cd5b37ff6be6b0e14edaee1519186f410fcde1b9683f4d6b151e253bb8caa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba695b93e70f0f9a022e521e1d41c6e76a49aa780c5b847a8207c542dca2509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 20:33:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 18 Sep 2017 20:34:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 18 Sep 2017 20:34:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 18 Sep 2017 20:34:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 18 Sep 2017 20:34:12 GMT
VOLUME [/spiped]
# Mon, 18 Sep 2017 20:34:12 GMT
WORKDIR /spiped
# Mon, 18 Sep 2017 20:34:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 18 Sep 2017 20:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 20:34:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d205563e2d029926468c15b3364db40c111d2f405f8b65d428c928ba9d9387`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2630272b3a28f22738071985f4c6609d7059e9231b7e85782e33e21ba01499`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0b6898239af536fee2dab6d286d533baa963d3f5280eda5c257c4fc4091ea`  
		Last Modified: Mon, 18 Sep 2017 20:34:49 GMT  
		Size: 467.8 KB (467801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b55567ca85fe7dace6945ef21af8fef3f06f5a546b3e2f15f57f12c5f717f9`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4dd865d91c499db3f031f39c103f1352b16d6178a7257d73f4c0e4c0aca38f`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
