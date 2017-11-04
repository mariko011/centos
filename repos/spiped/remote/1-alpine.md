## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:41aa1e4cc3b434b8041fd40f6e0c66f7a7ef5a6d44b918478857dab4b1f0747f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3241ffbb6eb9bc8bcd5956a3418d91aeebd248ce37fed07bfee9b4fd2a15a276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5469ad51b15f01094ab54238bbc7ba7f2ff50578f81ed3353a006d9db2ef3551`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 02:20:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 04 Nov 2017 02:20:10 GMT
RUN apk add --no-cache libssl1.0
# Sat, 04 Nov 2017 02:20:11 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 04 Nov 2017 02:20:11 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 04 Nov 2017 02:20:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 04 Nov 2017 02:20:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 04 Nov 2017 02:20:29 GMT
VOLUME [/spiped]
# Sat, 04 Nov 2017 02:20:30 GMT
WORKDIR /spiped
# Sat, 04 Nov 2017 02:20:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:20:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8396f0db160b5592c6e364df3834ecad1c06abec2803e78f4511e132fe297f8b`  
		Last Modified: Sat, 04 Nov 2017 02:20:58 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0bb357a6bdaa41d575b51aa432d7fd020287d55b907835c9039334bdc74614`  
		Last Modified: Sat, 04 Nov 2017 02:20:59 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd539fdd5f487d5fe368cf06a49773a16c54c233592b2c01285c80abcb22b0`  
		Last Modified: Sat, 04 Nov 2017 02:20:58 GMT  
		Size: 78.0 KB (77962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b473088b80c90b50f8a66b7e20f256ba44aad9b1e499a123442bad1fd0dc632`  
		Last Modified: Sat, 04 Nov 2017 02:20:58 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e51e35fb45a5a66f8603de8fbbab8e9e2bd44e4171136948e3a714796d4ee78`  
		Last Modified: Sat, 04 Nov 2017 02:20:58 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
