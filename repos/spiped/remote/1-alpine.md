## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:dc643d26dd22ad128adb98ad4c53935e9fabf8242b623e4ca06caa4d14b8bf44
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3213142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffc573c388ca86fcfd70e3d14a57734828c10820531da0801c8c8c6363d7b36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 10 Jan 2017 18:38:44 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2017 18:38:45 GMT
RUN apk add --no-cache libssl1.0
# Tue, 10 Jan 2017 18:38:46 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 10 Jan 2017 18:38:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 10 Jan 2017 18:38:47 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 10 Jan 2017 18:38:47 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 10 Jan 2017 18:38:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 10 Jan 2017 18:39:04 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2017 18:39:05 GMT
WORKDIR /spiped
# Tue, 10 Jan 2017 18:39:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Jan 2017 18:39:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2017 18:39:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30040830e55ec70b60de19e6c51f50b9a3baffb5ed24a1396af030a3e1aca108`  
		Last Modified: Tue, 10 Jan 2017 18:40:53 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4a4ebd847b070d2b781bedc0f927b9547e8fc8427d799a92970a879db15831`  
		Last Modified: Tue, 10 Jan 2017 18:40:51 GMT  
		Size: 1.2 MB (1241563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b2b00bdc3602d0bdc7585932fa6c5694e48a8ab0ee9fbec07f3120f4530973`  
		Last Modified: Tue, 10 Jan 2017 18:40:50 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b7bd34bd403071ce4cb17e9ff9d6687fc3626f69ee9de15e67fe6db5fc1bff`  
		Last Modified: Tue, 10 Jan 2017 18:40:51 GMT  
		Size: 66.6 KB (66606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e0747aba57732d4d52b17ff387b1e071037f11d41917ac96b787d2a4ef5c03`  
		Last Modified: Tue, 10 Jan 2017 18:40:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f802fcd2cffd3399e08dc6312db9eb259623945fd82a42cc9e933fafdffcec1c`  
		Last Modified: Tue, 10 Jan 2017 18:40:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
