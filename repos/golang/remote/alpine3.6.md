## `golang:alpine3.6`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
