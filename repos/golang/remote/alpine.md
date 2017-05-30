## `golang:alpine`

```console
$ docker pull golang@sha256:f8dc884e6d7b8b3cd2899efdc89d1a6949e9fe18df08be482bff5c2ae9a53548
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77948415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7baf3b1a3a56a214658c5cb102c54e393b4b41042b91e95245b6f1b6ca5aa44`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:54:40 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 May 2017 18:01:35 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 30 May 2017 18:01:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 30 May 2017 18:03:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 30 May 2017 18:03:59 GMT
ENV GOPATH=/go
# Tue, 30 May 2017 18:04:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 18:04:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 May 2017 18:05:02 GMT
WORKDIR /go
# Tue, 30 May 2017 18:05:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6555f92e77d3062fc8fc5a7d5f8b5899a9bf0e38f2624397ac502b300dc6dbf7`  
		Last Modified: Tue, 30 May 2017 18:07:55 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b259295eadd4bee43b57ca16ab840851277ac5fb15e77b34e2fa09efce5adb77`  
		Last Modified: Tue, 30 May 2017 18:09:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386c5224b191df547bd61e11fa8000b07c3bdaf669412855b307c764655a68b2`  
		Last Modified: Tue, 30 May 2017 18:10:09 GMT  
		Size: 75.6 MB (75627901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e73dfc64116fcf9fada3a2f372783ed0088812a107e26bf017dc9b2b96e7a38`  
		Last Modified: Tue, 30 May 2017 18:09:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b97decbceecab3c45982ba6fe6e2a44487fecafe5007c0af215bb76c392549d`  
		Last Modified: Tue, 30 May 2017 18:09:49 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
