## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:8f54ba1743c0e5afc63bb202d546f4c7163f9a7c40a86f18184f0e54f2a1dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3e069cdf415400b0aadae79a28b5e5d3433c24ccfa8c0064c13cc7b702a43554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8962c58938259837ad7572e32302b3adcf4b75c275d8e2f30e661842248ac75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:03:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Jan 2018 02:03:09 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Jan 2018 02:03:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Jan 2018 02:03:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Jan 2018 02:03:28 GMT
VOLUME [/spiped]
# Wed, 10 Jan 2018 02:03:29 GMT
WORKDIR /spiped
# Wed, 10 Jan 2018 02:03:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 Jan 2018 02:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:03:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304e2755d836bdc392798fd56036c664ecc07db6a2fbfa0bf8deacceed8bbda`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b5d2540f825fb71f0d12ebf6818a400fdd7fdb1200c6e93ae061d031b6da1`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 1.3 MB (1288349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a39f84747de41687a25dc06dc8b37b88f2f02530d517c86bf2dbd83c205a2c`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 78.0 KB (77963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20349696702c6b27214ece97baa838449eecec9a6635f29e452e48639080c602`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e443849a7d7024c1c48cc613cca57f3751405dcae6fea6f072adaa114ec6333f`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
