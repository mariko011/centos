## `spiped:alpine`

```console
$ docker pull spiped@sha256:366473ff676278cfb95be7bc0e00f03514faeb4d9c0d3a13729819695555d7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:54f65b98b3db1e26f35466ca5457ee809ae1a604dd896771cf193c68f97997e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b635d2b6068d380f057e0d92145ff5f36a0c305d71d99b00f44fb134ae7f399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:12:03 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 26 Oct 2017 03:12:07 GMT
RUN apk add --no-cache libssl1.0
# Thu, 26 Oct 2017 03:12:07 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 26 Oct 2017 03:12:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 26 Oct 2017 03:12:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 26 Oct 2017 03:12:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 26 Oct 2017 03:12:22 GMT
VOLUME [/spiped]
# Thu, 26 Oct 2017 03:12:23 GMT
WORKDIR /spiped
# Thu, 26 Oct 2017 03:12:23 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:12:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d038b48b5ae4dfebd68361b3a24ee210efc1f308b961239f3b9fab8f10c9a5`  
		Last Modified: Thu, 26 Oct 2017 03:12:40 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0188682004446eddd8b8e949c5784d87f812cdfef0e5a531c3968a0465457b`  
		Last Modified: Thu, 26 Oct 2017 03:12:42 GMT  
		Size: 1.3 MB (1285997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd99e8dca59608dd8cf61954503eab44b7cbd808cf792d1f2e61ec63d53aff`  
		Last Modified: Thu, 26 Oct 2017 03:12:39 GMT  
		Size: 78.0 KB (77957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638837bcaac41f36f97b2dd410b928c8ef79f8d585570bdcb9602c719640cea4`  
		Last Modified: Thu, 26 Oct 2017 03:12:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6873fa4ff2a00bbbb8b26fb1e0b35ad3328ff5bc7e30ef28453687f64285d018`  
		Last Modified: Thu, 26 Oct 2017 03:12:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
