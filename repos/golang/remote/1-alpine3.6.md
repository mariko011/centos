## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:33043f95e624a83be456c43be0abf6fe1fc3838ed56fcab05b771c577f27835b
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc054a35557aa43f3fd4ef38a2568250d9e81647e739afaf9ffc915b5aefae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Thu, 24 Aug 2017 23:52:20 GMT
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
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a926a4c7811dc9a23adb8f374a896bd325b2a0ee4f914df16a64235571e2f6a9`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
