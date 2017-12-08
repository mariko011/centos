## `golang:rc-alpine3.7`

```console
$ docker pull golang@sha256:9610c324b45e6cf5c80e837d6caded5beb10fa7f4d8f1053580ba2b800c61aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
