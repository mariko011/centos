## `golang:1-alpine`

```console
$ docker pull golang@sha256:c502cbf4608374447cef87d493047ca1a33fc02c0a100f29fe186653881c4b25
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016944b253114613794e305ad823160280d07f3f331e91e0cc5148b14ed893b7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:40:37 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Thu, 01 Dec 2016 23:40:39 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Thu, 01 Dec 2016 23:41:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:41:37 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:41:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:41:38 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:41:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89656d2b09accd216ecdd6ca921ad08f9ca5555ce848a491cde0bac7d3e1aad3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602314b9bf7b67e886ebe55b5c1240ef8e384ee6c6a0c6a9122fa1802eaa3cb`  
		Last Modified: Thu, 01 Dec 2016 23:50:13 GMT  
		Size: 70.6 MB (70621531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181529c471d299fc9d1c9b720dda93918dc43144c3965602589742971ecab8d3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561214ca853a289cfac4d72da52387d681e623ceb64d1c6b235f12b01b50ae5`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
