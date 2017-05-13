## `spiped:alpine`

```console
$ docker pull spiped@sha256:fa8aa6db5aaa797e474d5ab6369c0e05d0448d6922513b4d5052b7828daafffe
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3331883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359db421f2f77fef95b35fb75da38ce7c2b6b3a6c7a070e93cec1f62f4e29a58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:16:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 May 2017 23:16:13 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 May 2017 23:16:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 May 2017 23:16:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 May 2017 23:16:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 May 2017 23:16:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 May 2017 23:16:25 GMT
VOLUME [/spiped]
# Wed, 10 May 2017 23:16:26 GMT
WORKDIR /spiped
# Wed, 10 May 2017 23:16:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 May 2017 23:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:16:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93504cbf6a1c2b491778757ee99b61422bdcc6782d9997c77ae2a38b3efab25`  
		Last Modified: Sat, 13 May 2017 18:59:15 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b835e60636ae69c7c76a09f67e0a3b45ce94bea4b1316699fc66e0adce9b30`  
		Last Modified: Sat, 13 May 2017 18:59:16 GMT  
		Size: 1.3 MB (1284773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4967d837e31ed025e35ca05f0cfe42b2a8ca36e1c683cae927facabf191f27fc`  
		Last Modified: Sat, 13 May 2017 18:59:15 GMT  
		Size: 77.5 KB (77516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fd1e1644490443482700d65aa1d00d1c44ac0442919d2641c9fc7888dcaeec`  
		Last Modified: Sat, 13 May 2017 18:59:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f4939cfe4217f055530135d4fc08d6f3cbec7d3ff6982277ec094584c78a37`  
		Last Modified: Sat, 13 May 2017 18:59:16 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
