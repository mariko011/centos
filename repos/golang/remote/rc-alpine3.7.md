## `golang:rc-alpine3.7`

```console
$ docker pull golang@sha256:7414c8164419aae7e371e75ff4f1c78a8ce5351aec4583b29af0b5ce5833cb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:rc-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:522fa7177a42dfbbbf18b5cd930db4420a7bc49a99b92e78ea48cdb96f4f5f02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf5dd270b80cee424d40f7bd970d28c8f7ac0f1f16e2d675a0716ba35de98fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 19:25:25 GMT
RUN apk add --no-cache ca-certificates
# Fri, 08 Dec 2017 19:25:25 GMT
ENV GOLANG_VERSION=1.10beta1
# Fri, 08 Dec 2017 19:25:26 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 08 Dec 2017 19:26:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Dec 2017 19:26:45 GMT
ENV GOPATH=/go
# Fri, 08 Dec 2017 19:26:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Dec 2017 19:26:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Dec 2017 19:26:46 GMT
WORKDIR /go
# Fri, 08 Dec 2017 19:26:46 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428d107915c315c897cf76585ffb1b0a98179b63d05f9a652853bcc842a86de7`  
		Last Modified: Fri, 08 Dec 2017 19:36:25 GMT  
		Size: 308.0 KB (308014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4a117f941fc712eb3fc94e86cd0b95d2188422a2c47d66a437a822485be060`  
		Last Modified: Fri, 08 Dec 2017 19:36:25 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab4ebf8f806e309b8e1a0d65dd3834986107853c26ee036e138d6de609d81de`  
		Last Modified: Fri, 08 Dec 2017 19:36:52 GMT  
		Size: 112.7 MB (112662900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c065706f41ba5a8a7f4ddaa0e7c6e8a8e3057b5169aaae4d1bbe9ed30732f6`  
		Last Modified: Fri, 08 Dec 2017 19:36:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304a3cf1edf0d548fc7627c41c80594923afc0ba475d6b51fbc3dc2979d19b8e`  
		Last Modified: Fri, 08 Dec 2017 19:36:24 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ac77bba9a42ab900ba17242a7b86ae0e88f19967bb6db243e013f6420d7c7e4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110852363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9fe8c931282a424f9dc9700457ce1267f6140d5f15329ed596d141c8a6fa26`
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
# Fri, 08 Dec 2017 20:56:00 GMT
ENV GOLANG_VERSION=1.10beta1
# Fri, 08 Dec 2017 20:56:01 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 08 Dec 2017 20:58:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Dec 2017 20:58:25 GMT
ENV GOPATH=/go
# Fri, 08 Dec 2017 20:58:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Dec 2017 20:58:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Dec 2017 20:58:28 GMT
WORKDIR /go
# Fri, 08 Dec 2017 20:58:29 GMT
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
	-	`sha256:bffe402b33d00e0372cb9e8768c6f493f63fe05b8e7fb2bae18739207ea05860`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d544d7cb67525052df27c68381c7d0c9467460aab9f958262c88fde9bdbedc32`  
		Last Modified: Fri, 08 Dec 2017 21:02:42 GMT  
		Size: 108.6 MB (108553144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5c5aa440281686d828635cdb59f20cf8b7f4dd3fad5178032a9e9a7a27a903`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4697b74f75a4eed589582c839a32d4ef572c5905fa139bd957dfc4247274bcf`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:6fe246db6e6e2144462eae6eff18c9747374a64e22af727c4073f732a1555ebd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114627355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8184a6abe430cc79fbea02b2d6254b208bc71d442eea9e480a8455bc88313dca`
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
# Sat, 09 Dec 2017 06:31:45 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 06:31:46 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 09 Dec 2017 06:33:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Dec 2017 06:33:52 GMT
ENV GOPATH=/go
# Sat, 09 Dec 2017 06:33:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Dec 2017 06:33:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Dec 2017 06:33:53 GMT
WORKDIR /go
# Sat, 09 Dec 2017 06:33:54 GMT
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
	-	`sha256:4a4274204c3eafaecdfe359498ca96975f1d93244502bec82405c7d73bd3bc64`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639de60aac3e841c736ddee2ecde28c62ac9ea61ec2f7a9033901071c29c804`  
		Last Modified: Sat, 09 Dec 2017 06:49:21 GMT  
		Size: 112.2 MB (112190235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11017eea721d25108d98160e42379355f400829bbf394826c21a34f5fb1b170a`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804d7948a5e10d196ed18a25c4bb01aef75d85dbd4a3f0c125e7e88bd8ca9dcc`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
