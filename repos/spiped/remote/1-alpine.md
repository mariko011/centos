## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:74eefaf6c2cb339d4f70ec73967bbea049c2c956acf4042517365e954437cb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:304849994cb933d611c494844786ba143068a3d795cfd0a11294fa8213bc5c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb7e1ec8c10897a8b59aadc0601771bd5e24bbd1f3546ad351cb9ad845e1b7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:18:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Dec 2017 22:18:15 GMT
RUN apk add --no-cache libssl1.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Dec 2017 22:18:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Dec 2017 22:18:26 GMT
VOLUME [/spiped]
# Fri, 01 Dec 2017 22:18:27 GMT
WORKDIR /spiped
# Fri, 01 Dec 2017 22:18:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:18:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:18:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fb73222713ef230f3b6d8c8d93e981b5d0b4b0831b627b8b689b2f31d5913`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557406290b87ea0f7173da5398caab4bcef744e48dcc54389fa184955832008c`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 1.3 MB (1288347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef3dd7f41136c582768d077ed230ad5b78aef3464a9ab670a4db3ad31cbcd54`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 78.0 KB (77964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dccfeeb79ac36515caf9a394393a535cd4647b29533370f8d04ad66bfe388c`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7a002b8d52a6707442f8474bfc822c32fcc9bc62f980c9a6c9c9f723249c2`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
