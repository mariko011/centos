## `golang:alpine`

```console
$ docker pull golang@sha256:f71f38bdcf35dcb0fbe69730cb775bfd29662373d8c5ac1f6c684ee95f88e716
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77891719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32efc118745e4fc5f66ae43095efa8e93cb402839d151031681919aeeeb0fca4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 10 May 2017 21:24:08 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 10 May 2017 21:24:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 10 May 2017 21:25:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 May 2017 21:25:05 GMT
ENV GOPATH=/go
# Wed, 10 May 2017 21:25:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:25:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 May 2017 21:25:08 GMT
WORKDIR /go
# Wed, 10 May 2017 21:25:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a62b0235a60c0947241995d3a66c9e4e926a74ae7f09d7c8c1cfa885c0df75c`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c614fb8fc9673d7e03a9140c42d73853e7a5649721acafe0bf11611f0967c`  
		Last Modified: Sat, 13 May 2017 06:08:27 GMT  
		Size: 75.6 MB (75571234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d597756bf372c71fe3fe9d47dd97bc4ce9180479f6ae6f75a81eb348215fb`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa96bfc65001f7a702665d41b361cbbe5edf28457dd28ff21373cfe2bef796f`  
		Last Modified: Sat, 13 May 2017 06:08:03 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
