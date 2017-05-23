## `golang:alpine`

```console
$ docker pull golang@sha256:1d45c59eb9fc5970ef6141adf3e2e3b08e93ffffc6d93bb49eca927e9aff88c6
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56145cfd09fc29f04222184981d6d36dd6e6f2a5a6a68eb825e181d217292772`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:21:56 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:21:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 23 May 2017 22:22:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:22:59 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:22:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:23:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:23:02 GMT
WORKDIR /go
# Tue, 23 May 2017 22:23:03 GMT
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
	-	`sha256:f02d26de1829b17329334132052d70b39d5f641ac9dba9ac888aa812fb294bc2`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85d6d1981f0c8e0aa9c6e87d6330d993ff6ec9c026f3fe0c3b0659e0436567`  
		Last Modified: Tue, 23 May 2017 22:35:22 GMT  
		Size: 75.6 MB (75570132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434f26f07fedd309993f234328beef428567c96ad326734b5fafeced95be01e5`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b362bd9d84a7cce2b9fb67f2cf136fd7f314ea429878dd296566ca26282a8e45`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
