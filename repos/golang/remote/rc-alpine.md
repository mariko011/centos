## `golang:rc-alpine`

```console
$ docker pull golang@sha256:7167647a6dba2a0f335d7ffff60aa4ed5f6005630d20cf457f457085fdb817f1
```

-	Platforms:
	-	linux; amd64

### `golang:rc-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cec5229d9d44d0d6eb24ef4c459ed8c077cdb57d6b8036194ad99c23d665293`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 08 Aug 2017 18:21:30 GMT
ENV GOLANG_VERSION=1.9rc2
# Tue, 08 Aug 2017 18:21:30 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Tue, 08 Aug 2017 18:22:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '12b09ea6cb3189ea5e4c057f7047b5709ae8edd14706421b188f7e4ae8d8d3e4 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 08 Aug 2017 18:22:27 GMT
ENV GOPATH=/go
# Tue, 08 Aug 2017 18:22:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 18:22:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Aug 2017 18:22:28 GMT
WORKDIR /go
# Tue, 08 Aug 2017 18:22:29 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bfb933ca2aa5735b2871e77005be5bd542bc55e3d99ea3d87272ae948d198c`  
		Last Modified: Tue, 08 Aug 2017 18:23:52 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adf4819f9204794e12131fcae6a834eb6a55d852b664eecd8966473a46ba941`  
		Last Modified: Tue, 08 Aug 2017 18:24:06 GMT  
		Size: 80.6 MB (80571384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18a244a5331a0ff6edb5e6ed0a6f983795d0d7127ce18d2bd23571bd792b04e`  
		Last Modified: Tue, 08 Aug 2017 18:23:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5c50ec305d6bd83ecb375f491d2e77242de1986479ac72b8198acc9563806`  
		Last Modified: Tue, 08 Aug 2017 18:23:51 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
