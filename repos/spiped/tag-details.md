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
$ docker pull spiped@sha256:06202383bf616a4572534bcd6c6d471d9a9c5a44bbbe3d7678d8dcacfa7de0c6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

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

## `spiped:1.5`

```console
$ docker pull spiped@sha256:06202383bf616a4572534bcd6c6d471d9a9c5a44bbbe3d7678d8dcacfa7de0c6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

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

## `spiped:1`

```console
$ docker pull spiped@sha256:06202383bf616a4572534bcd6c6d471d9a9c5a44bbbe3d7678d8dcacfa7de0c6
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

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

## `spiped:latest`

```console
$ docker pull spiped@sha256:735e086351a164c442952cd326ecba74a02084d995473737f678046d993fae9f
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55615418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9148847d621008e3f460fb817c776a5212251f3cdf417a02ef8529172cefd70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 23:02:53 GMT
MAINTAINER Tim Düsterhus
# Wed, 14 Dec 2016 23:02:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 14 Dec 2016 23:03:09 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 23:03:09 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 14 Dec 2016 23:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 14 Dec 2016 23:03:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 14 Dec 2016 23:03:11 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 14 Dec 2016 23:03:35 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 23:03:36 GMT
VOLUME [/spiped]
# Wed, 14 Dec 2016 23:03:36 GMT
WORKDIR /spiped
# Wed, 14 Dec 2016 23:03:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 14 Dec 2016 23:03:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:03:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237839e70eb23031c1c2e58b54e1c5e55890dd198765b86ae48be8450beb89ed`  
		Last Modified: Wed, 21 Dec 2016 20:24:23 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3998b116a30e70745d775af2b5546990ce6782f007ae90f2adb40edf7741f3b4`  
		Last Modified: Wed, 21 Dec 2016 20:24:23 GMT  
		Size: 1.7 MB (1690906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f94430947d6a795ae70e3507064654282c9d5e95adbc118a47e58c37fe295e`  
		Last Modified: Wed, 21 Dec 2016 20:24:22 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e73fd170640c46cab8348f0f5e264644af4a3db56f2fdd50fffc261c414842d`  
		Last Modified: Wed, 21 Dec 2016 20:24:22 GMT  
		Size: 2.6 MB (2557677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b62f6dc116b8cbdfad2690635915d0988124921119407213d006f3e810ec86`  
		Last Modified: Wed, 21 Dec 2016 20:24:21 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c06bcb6b1325f0f0c9663f39a128ed6d7db523212690c087db8a228f2ed900a`  
		Last Modified: Wed, 21 Dec 2016 20:24:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5.0-alpine`

```console
$ docker pull spiped@sha256:233ea4e991883437497369310ea9905fc7a54723961d92718e720dff1cfbb784
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0-alpine` - linux; amd64

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

## `spiped:1.5-alpine`

```console
$ docker pull spiped@sha256:233ea4e991883437497369310ea9905fc7a54723961d92718e720dff1cfbb784
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5-alpine` - linux; amd64

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

## `spiped:alpine`

```console
$ docker pull spiped@sha256:233ea4e991883437497369310ea9905fc7a54723961d92718e720dff1cfbb784
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

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
