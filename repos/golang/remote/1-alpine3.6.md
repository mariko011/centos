## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:55cab3b180014123fe2b199e2cd7036963aebd44501723c2863a3e70e3ebf0f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:8d928d4423a4a45f863c6cf9152e5694fe825ca59704394dd18b5910058b0dcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82527262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3e1cda9dce7ec33f05bf3939e91e6aee3d08a143f90c27207b2e0e816c854d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 01:24:15 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 26 Oct 2017 01:25:22 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 01:25:22 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 01:25:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:25:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 01:25:23 GMT
WORKDIR /go
# Thu, 26 Oct 2017 01:25:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aef7d62cce20a731bc757da720a6780ff600ee453501be15578a84f12082d79`  
		Last Modified: Thu, 26 Oct 2017 01:30:40 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bf38fd8b36edc189fc70bde2f620ead18ecd1ba80b2f38071046670126070`  
		Last Modified: Thu, 26 Oct 2017 01:31:02 GMT  
		Size: 80.2 MB (80182856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b2f2e51ecb94e2073fda871aeaa143bf93d20973f3e5c2298fcdf96d50aa50`  
		Last Modified: Thu, 26 Oct 2017 01:30:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fa78a25fc7c0a591f5d74f00c20bec05a4c645133ea337611a49899170f001`  
		Last Modified: Thu, 26 Oct 2017 01:30:41 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
