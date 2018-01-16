## `golang:rc-alpine`

```console
$ docker pull golang@sha256:4ac723742546ff60024be8538bd1470e184ae469028b6680686649163f361aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `golang:rc-alpine` - linux; amd64

```console
$ docker pull golang@sha256:b02e5489485b8ee8e4203910776c8d5b8b7564221e7a3cab6756e7e7c9befcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115082969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:299ee0102f5419e90a735007d643c593c029287d46064f4292e2a665d6c771db`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 15 Jan 2018 23:59:51 GMT
ENV GOLANG_VERSION=1.10beta2
# Mon, 15 Jan 2018 23:59:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 16 Jan 2018 00:01:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a77c130eabfdea21fca629276f509b18da925912509903102b49113bc7dede9d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 16 Jan 2018 00:09:03 GMT
ENV GOPATH=/go
# Tue, 16 Jan 2018 00:09:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 00:09:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Jan 2018 00:09:04 GMT
WORKDIR /go
# Tue, 16 Jan 2018 00:09:04 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8e7b866895b633e777f3401b6a1ca2dd64996f5c594babf204ddca96e9704e`  
		Last Modified: Tue, 16 Jan 2018 00:24:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f93ca78adb6d254acf41266bb90c39dd4d0316f0587a498c60b1942c1636dc6`  
		Last Modified: Tue, 16 Jan 2018 00:24:47 GMT  
		Size: 112.7 MB (112707450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b602d78919dec063f4cbb0a80e09d06698d8dc1b0d081268c4286facdbbf77f`  
		Last Modified: Tue, 16 Jan 2018 00:24:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e958d89c47adfb1c78631063e0a751b386b9e1ff2b6d300e212dcb0a7090f4e`  
		Last Modified: Tue, 16 Jan 2018 00:24:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0b1300541129f2e9c21a8612f22d04527ad051bb0d93d03a3fcc58a97adbb1fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110898977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c780a935c6f5da0d05621f75c299e4728358d5bc3235392a0b4d66d93ddaf1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 15 Jan 2018 20:54:29 GMT
ENV GOLANG_VERSION=1.10beta2
# Mon, 15 Jan 2018 20:54:30 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 15 Jan 2018 20:56:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a77c130eabfdea21fca629276f509b18da925912509903102b49113bc7dede9d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 15 Jan 2018 20:56:55 GMT
ENV GOPATH=/go
# Mon, 15 Jan 2018 20:56:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 Jan 2018 20:56:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 15 Jan 2018 20:56:58 GMT
WORKDIR /go
# Mon, 15 Jan 2018 20:56:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3907e016b02f823ee5416c839dcfebc97f6b81bb9ade02e6b5ea5ec099f609d3`  
		Last Modified: Mon, 15 Jan 2018 20:59:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcec5a714b8fff0614c9e5aaf72ee2bbdfdbb2a38a4b75d9b73cf9903df12059`  
		Last Modified: Mon, 15 Jan 2018 20:59:42 GMT  
		Size: 108.6 MB (108599761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abaa076e4aaf18982829ad6898bf2040733464ba69c996185f00f1649e38399c`  
		Last Modified: Mon, 15 Jan 2018 20:59:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2bba0d67a5940f2c91fccc0dfe4696858726e8188bf7ad8bed3ad12ece48df`  
		Last Modified: Mon, 15 Jan 2018 20:59:00 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine` - linux; 386

```console
$ docker pull golang@sha256:4ea8046498f017e70a5b21feb1ebc6d21f517bc32fb29b1d391f0f3d31ceb15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114668573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a70c16afa6c36e7aa7f8d771b199fac6bdc7312d8b7aeee7ac51de2b22e00dd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Tue, 16 Jan 2018 07:38:48 GMT
ENV GOLANG_VERSION=1.10beta2
# Tue, 16 Jan 2018 07:38:48 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 16 Jan 2018 07:41:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a77c130eabfdea21fca629276f509b18da925912509903102b49113bc7dede9d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 16 Jan 2018 07:50:34 GMT
ENV GOPATH=/go
# Tue, 16 Jan 2018 07:50:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 07:50:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Jan 2018 07:50:36 GMT
WORKDIR /go
# Tue, 16 Jan 2018 07:50:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2866a17a73e763f5fdcc0bf5825a3a56082e32fdfe7f4305427aa5cd85c125`  
		Last Modified: Tue, 16 Jan 2018 08:07:39 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ed22b2d73fc7f1d5751c359acca96073b73859b5f69f26ccf83b5153bca7b0`  
		Last Modified: Tue, 16 Jan 2018 08:08:25 GMT  
		Size: 112.2 MB (112231452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fe7d9379809a703dcd1c43c9dcbdfac9ef4d3576c1ed30642f62893e38c892`  
		Last Modified: Tue, 16 Jan 2018 08:07:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06839600c94a385c2b3010ff2f2a4d9cfe5b22bf79684156ccf4c9494048b80`  
		Last Modified: Tue, 16 Jan 2018 08:07:38 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:52e2798df0fc47a0676b221562fe45cc0a64af6196c6ca15ba222de8494e8d7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110973164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c4545bce0f2e88e5b53976313864310d73bb41ee9d4f002ff4aceaa4775c8f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 16 Jan 2018 05:21:20 GMT
ENV GOLANG_VERSION=1.10beta2
# Tue, 16 Jan 2018 05:21:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 16 Jan 2018 05:22:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a77c130eabfdea21fca629276f509b18da925912509903102b49113bc7dede9d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 16 Jan 2018 05:23:00 GMT
ENV GOPATH=/go
# Tue, 16 Jan 2018 05:23:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 05:23:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Jan 2018 05:23:05 GMT
WORKDIR /go
# Tue, 16 Jan 2018 05:23:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bb67f5911dceeed40dace215cf60cf066e07ed6f5c39e8421f43527e4a9101`  
		Last Modified: Tue, 16 Jan 2018 05:24:56 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9672158225235fcd4221e96891ec299056e0789bec9b249f214e361ef0e7987d`  
		Last Modified: Tue, 16 Jan 2018 05:25:25 GMT  
		Size: 108.6 MB (108578887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4264ce6ff5ced29009e9c95f3115854dfbf7670ead7a0eb2eeec672b9a38139f`  
		Last Modified: Tue, 16 Jan 2018 05:24:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dfc0b6fff6e2299f54fdae4bddb295529bd6dedf9c201929419169244a7843`  
		Last Modified: Tue, 16 Jan 2018 05:24:56 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
