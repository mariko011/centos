## `golang:alpine`

```console
$ docker pull golang@sha256:328861d4d36d767d6b6a349d5beda7e5fd372a2b273b0332e9fb9c2ef7ecbac3
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f9778d3947538a71ef0006bad29edbeecb698142be6e2ed6b847aae1678d0`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:43 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:51:08 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:51:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:51:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:51:11 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:51:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c879fceda05cd3de6e5c96c25bc928628c9b4f7014a125b6dfce1549307a1d`  
		Last Modified: Wed, 26 Apr 2017 20:14:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b616d23b4b9759bc6312aecfa2bb91a0a71c2d1860b1d4aa7dd73337f175084`  
		Last Modified: Wed, 26 Apr 2017 23:02:14 GMT  
		Size: 75.6 MB (75571040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ca3fc2c25c38c0dc65efb04ce49cda960567dcd383bb115e798a2e4307024`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf895cdf2ed0ecb0a893a50635c5a29e5267cc939d203a9cee10a1ad14999a22`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
