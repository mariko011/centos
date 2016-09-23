## `golang:1-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
