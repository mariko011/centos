## `golang:alpine`

```console
$ docker pull golang@sha256:e653d2c77c9225d336bcc8d209100ef1b078047f4d6651f87e69c68f5d443513
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f63bb29285e331eedcbf6d7797c92b808045d900e3da632dd9a6c643d07ca`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.1.src.tar.gz
# Fri, 07 Apr 2017 21:59:57 GMT
ENV GOLANG_SRC_SHA256=33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57
# Fri, 07 Apr 2017 21:59:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 07 Apr 2017 22:00:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 07 Apr 2017 22:00:56 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 22:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 22:00:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 22:00:57 GMT
WORKDIR /go
# Fri, 07 Apr 2017 22:00:58 GMT
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
	-	`sha256:b6acb96fee14b46e190778268c18b3621457fe46e2dea0805b1e8a5dee807b1a`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be5afddf19763bfac86c67279aa6489c75b9e893d4b4a5ca5009a3c5f9a854`  
		Last Modified: Fri, 07 Apr 2017 22:10:15 GMT  
		Size: 74.8 MB (74763228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca17cdcfc93e8b6a16f18e37041b0f0ac05a9520af52ad8fa0597dbc7c3f0fd`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cf0844f5eee550fdb0ac950c21eb11cfa122d4dcd778140751cfe49bfcd68`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
