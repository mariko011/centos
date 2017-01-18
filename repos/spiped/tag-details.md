<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1.5.0`](#spiped150)
-	[`spiped:1.5`](#spiped15)
-	[`spiped:1`](#spiped1)
-	[`spiped:latest`](#spipedlatest)
-	[`spiped:1.5.0-alpine`](#spiped150-alpine)
-	[`spiped:1.5-alpine`](#spiped15-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)

## `spiped:1.5.0`

```console
$ docker pull spiped@sha256:2e8f20ce09f0aa5f603d1ce161e85d77605d7d2b4cfa26fa66c397b24cc1dfd6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55613394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3832e056d6fef9482e482a34864353464ddccd39928bc17d8e819906291e46f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:26:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 17 Jan 2017 20:26:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 17 Jan 2017 20:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 17 Jan 2017 20:26:46 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 17 Jan 2017 20:27:13 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:27:13 GMT
VOLUME [/spiped]
# Tue, 17 Jan 2017 20:27:14 GMT
WORKDIR /spiped
# Tue, 17 Jan 2017 20:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:27:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66cb9ab14d26b1ebc041ae972bf1fc2ffc2ac57cec0f843d14b93db4c184c3a`  
		Last Modified: Wed, 18 Jan 2017 07:42:27 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff01e7fc46bf54a7dd851b683b65d2f69246f6d24b6200fbddde2676db07208`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.7 MB (1690623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ba70ba31887310588c51afe9d8cd55f78fd771b2e5a9918b4163af99e83df1`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582d436912b50b9cc39ee5bbbd9a0f75e3cc74aa35956cfa9131629414e08b75`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 2.6 MB (2557854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf216d5836e2503bde99c2108e1ae3ef289c1a02d5b554d2644f1769c23b7bb`  
		Last Modified: Wed, 18 Jan 2017 07:42:25 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3601751b7921fb9af5c741ab3f15cad83b2e23328116733940633704873b6c6c`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5`

```console
$ docker pull spiped@sha256:2e8f20ce09f0aa5f603d1ce161e85d77605d7d2b4cfa26fa66c397b24cc1dfd6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55613394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3832e056d6fef9482e482a34864353464ddccd39928bc17d8e819906291e46f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:26:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 17 Jan 2017 20:26:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 17 Jan 2017 20:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 17 Jan 2017 20:26:46 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 17 Jan 2017 20:27:13 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:27:13 GMT
VOLUME [/spiped]
# Tue, 17 Jan 2017 20:27:14 GMT
WORKDIR /spiped
# Tue, 17 Jan 2017 20:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:27:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66cb9ab14d26b1ebc041ae972bf1fc2ffc2ac57cec0f843d14b93db4c184c3a`  
		Last Modified: Wed, 18 Jan 2017 07:42:27 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff01e7fc46bf54a7dd851b683b65d2f69246f6d24b6200fbddde2676db07208`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.7 MB (1690623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ba70ba31887310588c51afe9d8cd55f78fd771b2e5a9918b4163af99e83df1`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582d436912b50b9cc39ee5bbbd9a0f75e3cc74aa35956cfa9131629414e08b75`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 2.6 MB (2557854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf216d5836e2503bde99c2108e1ae3ef289c1a02d5b554d2644f1769c23b7bb`  
		Last Modified: Wed, 18 Jan 2017 07:42:25 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3601751b7921fb9af5c741ab3f15cad83b2e23328116733940633704873b6c6c`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:2e8f20ce09f0aa5f603d1ce161e85d77605d7d2b4cfa26fa66c397b24cc1dfd6
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55613394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3832e056d6fef9482e482a34864353464ddccd39928bc17d8e819906291e46f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:26:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 17 Jan 2017 20:26:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 17 Jan 2017 20:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 17 Jan 2017 20:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 17 Jan 2017 20:26:46 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 17 Jan 2017 20:27:13 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 20:27:13 GMT
VOLUME [/spiped]
# Tue, 17 Jan 2017 20:27:14 GMT
WORKDIR /spiped
# Tue, 17 Jan 2017 20:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 17 Jan 2017 20:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 20:27:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66cb9ab14d26b1ebc041ae972bf1fc2ffc2ac57cec0f843d14b93db4c184c3a`  
		Last Modified: Wed, 18 Jan 2017 07:42:27 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff01e7fc46bf54a7dd851b683b65d2f69246f6d24b6200fbddde2676db07208`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.7 MB (1690623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ba70ba31887310588c51afe9d8cd55f78fd771b2e5a9918b4163af99e83df1`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582d436912b50b9cc39ee5bbbd9a0f75e3cc74aa35956cfa9131629414e08b75`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 2.6 MB (2557854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf216d5836e2503bde99c2108e1ae3ef289c1a02d5b554d2644f1769c23b7bb`  
		Last Modified: Wed, 18 Jan 2017 07:42:25 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3601751b7921fb9af5c741ab3f15cad83b2e23328116733940633704873b6c6c`  
		Last Modified: Wed, 18 Jan 2017 07:42:24 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:06202383bf616a4572534bcd6c6d471d9a9c5a44bbbe3d7678d8dcacfa7de0c6
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55615489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fcd24ec354082c91dc47ed6bedf226fee3f5744a209659530dbe21b11907ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 10 Jan 2017 18:37:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Jan 2017 18:38:05 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Jan 2017 18:38:12 GMT
ENV SPIPED_VERSION=1.5.0
# Tue, 10 Jan 2017 18:38:12 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Tue, 10 Jan 2017 18:38:13 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Tue, 10 Jan 2017 18:38:14 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Tue, 10 Jan 2017 18:38:40 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Jan 2017 18:38:40 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2017 18:38:40 GMT
WORKDIR /spiped
# Tue, 10 Jan 2017 18:38:41 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Jan 2017 18:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2017 18:38:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b27f0eea48c8fc00bf3d00646fe5afcd6c0f7133ad64d202c73b2280a8b24d`  
		Last Modified: Tue, 10 Jan 2017 18:39:27 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f421dd0d74903f0849abb4107816ceaaf163eb13be759e0f2c96d2dca513ef3`  
		Last Modified: Tue, 10 Jan 2017 18:39:24 GMT  
		Size: 1.7 MB (1690923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7f94e7ddbaafc974d296a2429fe6eb74acdf2b76d80fe3c6c8c89fcf1fc614`  
		Last Modified: Tue, 10 Jan 2017 18:39:23 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfe1a39f8c4960fb4619ea3de351c09e77809fd23bba6a983cc35851977a067`  
		Last Modified: Tue, 10 Jan 2017 18:39:24 GMT  
		Size: 2.6 MB (2557730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3076220fe6ff0cec9b203727a539903546261b4268500b0b51fab2b9f910242e`  
		Last Modified: Tue, 10 Jan 2017 18:39:24 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e377143f2decca018afcc15061768bf80d039be01fe9eb01007d02e24471c09c`  
		Last Modified: Tue, 10 Jan 2017 18:39:23 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5.0-alpine`

```console
$ docker pull spiped@sha256:dc643d26dd22ad128adb98ad4c53935e9fabf8242b623e4ca06caa4d14b8bf44
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0-alpine` - linux; amd64

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

## `spiped:1.5-alpine`

```console
$ docker pull spiped@sha256:dc643d26dd22ad128adb98ad4c53935e9fabf8242b623e4ca06caa4d14b8bf44
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5-alpine` - linux; amd64

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

## `spiped:alpine`

```console
$ docker pull spiped@sha256:dc643d26dd22ad128adb98ad4c53935e9fabf8242b623e4ca06caa4d14b8bf44
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

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
