## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:233ea4e991883437497369310ea9905fc7a54723961d92718e720dff1cfbb784
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec305037646f57b2de8a15313bcb05d0bd54ae58235e998b10fb5bfa9a6fb96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:02:15 GMT
MAINTAINER Tim Düsterhus
# Tue, 27 Dec 2016 22:02:16 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 27 Dec 2016 22:02:28 GMT
RUN apk add --no-cache libssl1.0
# Tue, 27 Dec 2016 22:02:28 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 27 Dec 2016 22:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 27 Dec 2016 22:02:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 27 Dec 2016 22:02:41 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 27 Dec 2016 22:02:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 27 Dec 2016 22:02:54 GMT
VOLUME [/spiped]
# Tue, 27 Dec 2016 22:02:55 GMT
WORKDIR /spiped
# Tue, 27 Dec 2016 22:02:56 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 27 Dec 2016 22:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:03:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e629089114633ca988f3ab4552c32d70f132192749f8b4d23924154b67e4a4e`  
		Last Modified: Tue, 27 Dec 2016 22:19:30 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c664ec77e9d22917ba045c59af1db6ac242eb28813b32a2a5dfbcc80278f01ca`  
		Last Modified: Tue, 27 Dec 2016 22:19:28 GMT  
		Size: 5.3 KB (5258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94be3f1d01f38ab6a33f98044a9ca4aa3dd2826f25cd3a483dc445717b80a3e4`  
		Last Modified: Tue, 27 Dec 2016 22:19:28 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7afb68b5086c9a6afe370f0ee89ff121eada1ebfbadaf107e5666e99fc471`  
		Last Modified: Tue, 27 Dec 2016 22:19:28 GMT  
		Size: 66.6 KB (66615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efaca53ffe8fdf648963e14eefe77687c113c4e08f788ab7b07325286cd3216d`  
		Last Modified: Tue, 27 Dec 2016 22:19:28 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b246ecab9373ed19c7f58574537519f5bd51b5e9e559359194991c30f262fa`  
		Last Modified: Tue, 27 Dec 2016 22:19:28 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
