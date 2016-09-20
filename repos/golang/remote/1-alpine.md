## `golang:1-alpine`

```console
$ docker pull golang@sha256:3c8894f0b8975829f2cfaa91b763bd1f3f39cd8ec00a799c5d975880ce8127a9
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72886947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a3df059c908d152831cce3425c3b0831d58efaf2d8c04d218d5a91e4bef6ae`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:59:30 GMT
RUN apk add --no-cache ca-certificates
# Tue, 20 Sep 2016 00:02:14 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 20 Sep 2016 00:02:14 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Tue, 20 Sep 2016 00:02:14 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Tue, 20 Sep 2016 00:02:15 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 20 Sep 2016 00:03:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:03:21 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 00:03:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 00:03:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 00:03:22 GMT
WORKDIR /go
# Tue, 20 Sep 2016 00:03:22 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9694a61eee61f96dd0c18a8311a8ce381e7c9f204d1ce69de4e7d4767355230b`  
		Last Modified: Tue, 20 Sep 2016 00:01:20 GMT  
		Size: 343.9 KB (343943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f958b5d5a9223789c73703b1c786328e5f3de9e431d356519b13252ace0337c`  
		Last Modified: Tue, 20 Sep 2016 00:03:28 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ccb4f69918c4aca3679793eee37f5d65e96d3da15e76da8ab85725eeab1af`  
		Last Modified: Tue, 20 Sep 2016 00:03:55 GMT  
		Size: 70.2 MB (70230043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cebaa2d05147d6e4b89087d033d37aded640573d76919f7c22b565a86db8e17`  
		Last Modified: Tue, 20 Sep 2016 00:03:28 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da79afe1b132dec24f6cb749e27f3b891f8b0a7a0362dc4a9980a18a0098763`  
		Last Modified: Tue, 20 Sep 2016 00:03:28 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
