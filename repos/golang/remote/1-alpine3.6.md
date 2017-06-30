## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:a109a15d4f5538cd2e45307fd71cafea85b9fd164ff53fe00f0b0d7bac590512
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78381694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f687d7d2a9618d12bf5b458db8f094bb77bc98ce2dd295398485f1838a9683c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:22:40 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:22:41 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:23:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:27:51 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:27:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:27:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:28:18 GMT
WORKDIR /go
# Tue, 27 Jun 2017 21:28:20 GMT
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
	-	`sha256:29aafb53833126b19e7319f0534d44b2760eb8432c33054f6c04473b58b8550f`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c75b9264d7f890c885174f8f1436a964c4f40d4a785ba4606836671b94785d`  
		Last Modified: Thu, 29 Jun 2017 20:50:00 GMT  
		Size: 76.0 MB (76038025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c035f37ef25bb28fd852b1915e842a040343a76f1164f25a487c539f320a4c`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146e96af308520db9cf5ead98c82bf58642909fb8a582f437d86e3a1195a12ab`  
		Last Modified: Thu, 29 Jun 2017 20:49:40 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
