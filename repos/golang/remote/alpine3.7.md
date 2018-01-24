## `golang:alpine3.7`

```console
$ docker pull golang@sha256:b6b91f0ca8832120f959495c12c2683134fd7916db62bd30e89d270123ff0eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:fac09b70df69b832069f7b503d5448f7705dd223f0aab7cd6291f4342f3e9714
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82219419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dbdffe3b5f1db7b55ab7a5799655adee394574e0dc21824d825ff29c411d02`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 Jan 2018 22:46:38 GMT
ENV GOLANG_VERSION=1.9.3
# Tue, 23 Jan 2018 22:46:39 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Tue, 23 Jan 2018 22:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 Jan 2018 22:49:49 GMT
ENV GOPATH=/go
# Tue, 23 Jan 2018 22:49:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 Jan 2018 22:49:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 Jan 2018 22:49:51 GMT
WORKDIR /go
# Tue, 23 Jan 2018 22:49:51 GMT
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
	-	`sha256:1106a361a438955c84201490ea934065a9c970fe27a6d12940eebaaafc9cdb06`  
		Last Modified: Wed, 24 Jan 2018 00:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb2a7f46753dc625ab3b6991a30636e2b9f7146a72b529377a2db604b0d4441`  
		Last Modified: Wed, 24 Jan 2018 00:02:20 GMT  
		Size: 79.8 MB (79843269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7188bdf7ba91df0e614405ed516a9f82dd993ecf8a00ffe61db04d12a84dfba9`  
		Last Modified: Wed, 24 Jan 2018 00:01:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18811c70a05162aa1dea871adc2940050835da55f20529992e541b8b223c62`  
		Last Modified: Wed, 24 Jan 2018 00:01:52 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:165f9c922be4d90585efffdcd31d21808fdd7b51e2d23cdb411a90498a11ce3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79361572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a56f67039b6a176f2f85c981cfd79a8989fac3e0bff36aa8e42848f191627f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 23:25:37 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 10:46:22 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 10:46:23 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 10:58:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 10:58:53 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 10:58:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 10:58:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 10:58:58 GMT
WORKDIR /go
# Wed, 24 Jan 2018 10:58:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a0c6809b3d19f3e5652a04af63df39131ea6934d8c819c88e439591b8ebcc`  
		Last Modified: Sat, 20 Jan 2018 00:32:04 GMT  
		Size: 308.8 KB (308751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9410ffabe1ee864d528273821c97fef144ad57c67538b230b10d60b1b96955a`  
		Last Modified: Wed, 24 Jan 2018 11:25:21 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882489d4a5710991dd2e9aa88a3589e0b41005ff1f87701d2c0407ebb375b015`  
		Last Modified: Wed, 24 Jan 2018 11:27:06 GMT  
		Size: 77.0 MB (77011690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c054d9067489eea44dd3f0a62e9df185e5b65b9a4e1800c100c1b6c8406203`  
		Last Modified: Wed, 24 Jan 2018 11:25:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd511a8ab0c287c0523b5c62ba52ee4bdebfb68ba438cd61513a49449ee1edad`  
		Last Modified: Wed, 24 Jan 2018 11:25:21 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:08c84de7640d02925097f35bbe2cebf74065084944b8ae601fa0b009c7878a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80379666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca21a9b3dea909999fe28ce56716059f6c136bd108f98d7536133623af9f742`
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
# Wed, 24 Jan 2018 06:49:56 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 06:49:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 06:51:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 07:00:57 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 07:00:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 07:00:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 07:00:58 GMT
WORKDIR /go
# Wed, 24 Jan 2018 07:00:58 GMT
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
	-	`sha256:f87c779309330477b34f93aa36be372c1eea267c753192ab23f10299434b517c`  
		Last Modified: Wed, 24 Jan 2018 08:09:05 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a500f94d66ed193e3cef744953ddd0a0ccfed525f6b1f8744a85405fada8ca82`  
		Last Modified: Wed, 24 Jan 2018 08:09:37 GMT  
		Size: 77.9 MB (77941917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c11d1631f109ffe9ffd994eaa7c1678a1f210a27f3e964ed489024d10142457`  
		Last Modified: Wed, 24 Jan 2018 08:09:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ba38eeffb035eefc1c70b6e3cf7692791ef92166e8d458ccf974509c978a92`  
		Last Modified: Wed, 24 Jan 2018 08:09:05 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:c4b4d4a8d84e14a4b12cfddea979a5489e44176f7c7908cc0bc8a99135b4a694
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77268783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cfbfb530d55d6a88de375885723bfe69fd2536578ae1be007e49bb642a62a4`
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
# Wed, 24 Jan 2018 16:51:05 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 16:51:08 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 16:52:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 16:52:16 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 16:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 16:52:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 16:52:23 GMT
WORKDIR /go
# Wed, 24 Jan 2018 16:52:25 GMT
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
	-	`sha256:e8d818d7843508d865b340e95e582883b5b12895dfc3bc7afe3241d2963bc895`  
		Last Modified: Wed, 24 Jan 2018 16:58:18 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59518de4a390a64ecfeee28e951d93fb5cbbc492ee2bfcb3cacf1715e42b8a31`  
		Last Modified: Wed, 24 Jan 2018 16:58:38 GMT  
		Size: 74.9 MB (74873881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc865819f5ba58a79715e02177c038e96ccc88156ef7a7a96ae32f2b315e8234`  
		Last Modified: Wed, 24 Jan 2018 16:58:20 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a562d5743d4460ddf1ab9307472216600104a2e28d44bea7b1c6bb2828bc33`  
		Last Modified: Wed, 24 Jan 2018 16:58:18 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:2a12f744d23d9202a9f9109a0b45401306346417bf540d3136ea34b7f04741d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81513314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb32a2bec6408ff9ce29085939931590a7faf4fb6a9e297a50b0d259605eab66`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 11:39:51 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 11:39:51 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 11:41:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 11:41:13 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 11:41:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 11:41:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 11:41:14 GMT
WORKDIR /go
# Wed, 24 Jan 2018 11:41:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153ceaa90c1aebb89f586684749c12717702a1a1268db629324ba992236c0ca`  
		Last Modified: Wed, 24 Jan 2018 11:45:52 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9735f9939093f0e651f23d2666e1734b3f2acf77fd73a80b3b2de590b09aeed7`  
		Last Modified: Wed, 24 Jan 2018 11:46:12 GMT  
		Size: 79.0 MB (79016159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ef113bc9bb22e3af1497f6af5ed3b2b9cacead259319811fbe641f3ebae948`  
		Last Modified: Wed, 24 Jan 2018 11:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ce3b3f68a0d3e8146802fda955f8fe6fffc75dc26b77e3337689e6232056c9`  
		Last Modified: Wed, 24 Jan 2018 11:45:52 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
