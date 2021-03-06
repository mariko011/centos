## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:42a5e73c830a2379e8f75b195cd53e43cb1c221ac1d75b91265ef0974de6482a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:5d4f1550e1d193e6d67b27ab0c2ff2dbab79a953929869b392b722806cf0cfa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82598806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c7ad5b90413b8a1be2079592407132db4d279d324597d9e87fa7a4525e5e2f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 Jan 2018 22:59:10 GMT
ENV GOLANG_VERSION=1.9.3
# Tue, 23 Jan 2018 22:59:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Tue, 23 Jan 2018 23:00:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 Jan 2018 23:01:26 GMT
ENV GOPATH=/go
# Tue, 23 Jan 2018 23:01:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 Jan 2018 23:01:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 Jan 2018 23:01:28 GMT
WORKDIR /go
# Tue, 23 Jan 2018 23:01:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3a151260390757123b4bfe7b111ec64bb0a90cdff5f1d311351af87c80c3f`  
		Last Modified: Tue, 09 Jan 2018 23:06:07 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64455c1aaa47eb7f27e700e4c5ac1924227f07be460c3218677e239a7b664864`  
		Last Modified: Wed, 24 Jan 2018 00:03:39 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc57526dc058ce932cd65dbdf1544ddec985e4ea66a8b12e29dec382a1576c4`  
		Last Modified: Wed, 24 Jan 2018 00:04:07 GMT  
		Size: 80.3 MB (80253462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b355b184ea65ddbbe1bb5d5d68083a52377b7f2559a0a9c18998cc038103a1`  
		Last Modified: Wed, 24 Jan 2018 00:03:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5463f1346a32b07db201136be18394b4ed3fd2977a8218362526beec035713`  
		Last Modified: Wed, 24 Jan 2018 00:03:39 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:0cdca508e063a56ec4a6a594edd3fadbcf0cc7f4ed9cf36c3313180f41032d94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80380173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be42ba9834e5f290ceba02bf83bfe69ba4fd4d140877ac852e71270259d424e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Sat, 20 Jan 2018 00:00:25 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 10:59:07 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 10:59:08 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 11:12:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 11:12:25 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 11:12:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 11:12:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 11:12:30 GMT
WORKDIR /go
# Wed, 24 Jan 2018 11:12:31 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560245ac50346556e12de3510743e072782a1d6c818aca417f3af08a71ff4c99`  
		Last Modified: Sat, 20 Jan 2018 00:37:29 GMT  
		Size: 352.2 KB (352155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca5a7bbca8f9f6157163921d67f8af14948fc764704ea43779b088cea627643`  
		Last Modified: Wed, 24 Jan 2018 11:27:37 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3010a58f757b1dc8497401262429480f145883854248945d8fbf13600ea76c4`  
		Last Modified: Wed, 24 Jan 2018 11:29:26 GMT  
		Size: 78.1 MB (78059195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8ab218e04ed86709cf7e5da6485ccdcaa59c51c83c1223adda6b87831963c0`  
		Last Modified: Wed, 24 Jan 2018 11:27:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa57c8f4d28b051f1634e50f68380c4cb9d4131367d13cee450df8d84ab300`  
		Last Modified: Wed, 24 Jan 2018 11:27:37 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8a2ad9fcc32f3ae8fb0c140cecf531a90c4b4092ca4ecb642aebf3614755b568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78718021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386f93abb9d2982e416ad3a3e6897957395d34d15ec53b99a3bcdb2d44085426`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 21:07:30 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 21:07:31 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 21:09:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 21:09:42 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 21:09:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 21:09:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 21:09:45 GMT
WORKDIR /go
# Wed, 24 Jan 2018 21:09:45 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc53239214f55ac98832e9971e6207796f242205b630580b42f076366bacb05`  
		Last Modified: Wed, 24 Jan 2018 21:22:03 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cbeab77959b85c58c790a4841ac2bf2ec55f46d8a4b9f5e7ccf702a6114d17`  
		Last Modified: Wed, 24 Jan 2018 21:23:02 GMT  
		Size: 76.4 MB (76449002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca10ab39537d9ffbd820595296497622e99f2521d6eddda92690b7f589f8c085`  
		Last Modified: Wed, 24 Jan 2018 21:22:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25366c61b8ac47176b4cec142dd273e4dd11eb6816d97246b78187df332f7890`  
		Last Modified: Wed, 24 Jan 2018 21:22:03 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:15fbe9efe3815219481431a640e8ead36d0371d7f2661bf28da6e0557b015944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81325028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c63a3cda897377b1c5aa6bc7449ce894148b2b46891a148ad7c2bf0d94af0e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 07:02:50 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 07:02:50 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 07:04:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 07:05:23 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 07:05:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 07:05:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 07:05:25 GMT
WORKDIR /go
# Wed, 24 Jan 2018 07:05:25 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a85bc9f67cff831f126a643f7ac5e2e8c1ae528deeba7b0c612bfce2e2fe55f`  
		Last Modified: Wed, 24 Jan 2018 08:19:02 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5202db8944b7fb33ce6230df1cec29edcf83715949c7e91443357eb3a3376`  
		Last Modified: Wed, 24 Jan 2018 08:19:31 GMT  
		Size: 78.9 MB (78924555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21483c5a4fdbcf1c6d1230ee9890682f2234fdf4332a2d87ad0ce137d7a9c8cf`  
		Last Modified: Wed, 24 Jan 2018 08:19:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c8977098474c3670f9c1d10bfe1ecfc86aa60799ee95fb7ed684968c80332f`  
		Last Modified: Wed, 24 Jan 2018 08:19:03 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:8b2b5084da64065dc4a6c1b970be0e4fb9208f62c054e9bdec0f0cc9d03520c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78279755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f49c0ccb26ec5d38773b38e7a2409a4605b2d3dabed2e71876108dd3ab96e5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 16:52:32 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 16:52:34 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 16:53:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 16:53:46 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 16:53:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 16:53:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 16:53:54 GMT
WORKDIR /go
# Wed, 24 Jan 2018 16:53:56 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e052c507c01e8d6219aaf8561bc59d495e552a5058cb4819f463d9684a7f86ab`  
		Last Modified: Wed, 24 Jan 2018 16:59:00 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87a9d2f3223b058ae79d7dcc54a12e665ff1ecbbfafc5e154d8ec75e6f1cb9`  
		Last Modified: Wed, 24 Jan 2018 16:59:23 GMT  
		Size: 75.9 MB (75914098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4aa233ed0d7458a3fc849288fb07df200c7a30e25dc4533c8106dfb46717ec`  
		Last Modified: Wed, 24 Jan 2018 16:59:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9238f203df2f119c22acfba7fbfb384b076a5250c0d659ec22b4f1088e5308`  
		Last Modified: Wed, 24 Jan 2018 16:59:00 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:dd877d5f86a57e98f5130bd48ed2e6032f6d429450d671fbfca76590475c6acc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82283074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f14bb463f6fa2aa0d83022d259dfddaae6ab0b6f3a0e303b1dd3120d04a0e8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 Jan 2018 11:41:22 GMT
ENV GOLANG_VERSION=1.9.3
# Wed, 24 Jan 2018 11:41:22 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 24 Jan 2018 11:42:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e3d0ad6e91e02efa77d54e86c8b9e34fbe1cbc2935b6d38784dca93331c47ae *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 Jan 2018 11:42:44 GMT
ENV GOPATH=/go
# Wed, 24 Jan 2018 11:42:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 11:42:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 Jan 2018 11:42:45 GMT
WORKDIR /go
# Wed, 24 Jan 2018 11:42:45 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b23a091cd76fac48e17f666188c7b5e518feb04d2d545dfb47f9edd975634e`  
		Last Modified: Wed, 24 Jan 2018 11:46:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59752f52be1cdf347a440e65760a38c7aaa18a2f3551aad91a031742da487c9`  
		Last Modified: Wed, 24 Jan 2018 11:46:46 GMT  
		Size: 79.9 MB (79862321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de6f04d1ddc43b05035a3afb48c15cec8277f7e4f6ed2da4e5eec65bebc1ff0`  
		Last Modified: Wed, 24 Jan 2018 11:46:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31295ca8fb3985e49b45ab6e96d19c0357b174db526ee4a95961ee7dc6b9f609`  
		Last Modified: Wed, 24 Jan 2018 11:46:24 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
