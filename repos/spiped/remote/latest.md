## `spiped:latest`

```console
$ docker pull spiped@sha256:1cc190d05903497bbd679dc0eed69bd6bfece27e18622adce695a29eb714caf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:2c132c9ab591a0fa444cc7609f329fd2e11908edd0e88c29cb838091e1464184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53998799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae1e48294e25b00a8e9409e48ede65c8d74e857bee62678b2c6bf6317579f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:47:01 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 04 Nov 2017 16:47:07 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:47:08 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 04 Nov 2017 16:47:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 04 Nov 2017 16:47:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 04 Nov 2017 16:47:31 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:47:31 GMT
VOLUME [/spiped]
# Sat, 04 Nov 2017 16:47:32 GMT
WORKDIR /spiped
# Sat, 04 Nov 2017 16:47:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:47:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3b55446582c43b7ca74c861a865e742b547c62cf06dee92042e6874cc65d1`  
		Last Modified: Sat, 04 Nov 2017 16:47:41 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb20d31aa64f1149ec0753d4401ef099edc7e93760d6dcb4a9dd440508f828c`  
		Last Modified: Sat, 04 Nov 2017 16:47:41 GMT  
		Size: 2.1 MB (2091893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca6065c784ce39a8e8b9b9e72d97c7ba7e0b2737ab7448a7900e14b77c60a7f`  
		Last Modified: Sat, 04 Nov 2017 16:47:42 GMT  
		Size: 6.8 MB (6775634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392631a76ca497df97a09d5170703dc2ac4cc09217c4fad47d3a43b09922512b`  
		Last Modified: Sat, 04 Nov 2017 16:47:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9657ec4b6b091d0790aa44a9284ad93310634c484eebe01d864e809c3584e5f`  
		Last Modified: Sat, 04 Nov 2017 16:47:41 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:04b3182aa64a492c247cd6b2962f252cae42da3391eb20255ae5c2b6edc31916
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51501889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ba18d0814ce8ad3b7f19312575909b669df8ef95ccc8d4ca2665df7dcc4952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:08:35 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:08:44 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:08:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:09:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:09:24 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:09:24 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:09:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:09:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af92f79db64e03e168350b85b9029dcda5ae0efdb7de26559b974f9cb1cb819`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56920e4c525c88b403d957f8f3018dd580660e2e7b48dccb79a66c686e2b9ada`  
		Last Modified: Mon, 09 Oct 2017 22:09:34 GMT  
		Size: 1.8 MB (1833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272787dbc322780837955708901e0c4f76c081140e820876b2f1be7405f5387`  
		Last Modified: Mon, 09 Oct 2017 22:09:35 GMT  
		Size: 5.9 MB (5850170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa3c42b4cc9b7f2974732a862bb8c59cdeab3e8d0cdb1c0bb7285aa64f652c0`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fda62f91da2ef4a10fddf4db2edea25d22f66b4aa5194d97e5e811472f7e50`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:629255b01d9677186a020f4a756e56fc5c796a5d03e115c1f431386ef82bd2e8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49223513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d5a026a9d3bf0c0889dd73ab3443caef3676c13fce50ad6c33a95e00cc264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:13:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:13:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:14:11 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:11 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:14:12 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:14:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13db9238bfa9ee7b2809157d4b2b1df0b3336b3dfafe5ce1a1fb90d9edcd9822`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4106f3e52252b4004ac7a95bbd0f0e1573997b59fea5003ba92a62bb73c865`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.8 MB (1774837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6b345f297dc7e967db32120cf1dd92b0ffc197b823da410d892b63ae288fb`  
		Last Modified: Mon, 09 Oct 2017 22:14:34 GMT  
		Size: 5.6 MB (5604520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378d3d248da13414bd4499007ff19a9c8244f748070cd7ed884143b9e2c728b6`  
		Last Modified: Mon, 09 Oct 2017 22:14:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e886800ce0a1106d2c87a2df8fd5def797ca3bafa2e45bec086d4b686c98402`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:06a88763a91c32ddf3177ccc8ff4785cc53818fb783612a6bcd211e36a7687c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50875097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c1e18866bc75217614d6a10c80124e943fbfa365c88c40f2f840bbefee390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:10:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 05:11:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:11:09 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 05:11:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 05:11:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 05:16:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:16:40 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 05:16:41 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 05:16:42 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:16:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace265ce216bff261364fac5576dbfa8ad989ed33addd10fa0f259055f9dcf22`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb7b48974f8c66bc143e6012d6ddf6c349123dc50aac1e705a769f926f3c0d`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 1.8 MB (1825778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021a2793daeba13e5fad8e15e5f36cf44056c847b0aecd6c032f9466f713b4d9`  
		Last Modified: Tue, 10 Oct 2017 05:17:15 GMT  
		Size: 6.1 MB (6135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1286e3a574db4f4a55d4dd6fa615cc78a09cd38e753a6745e04718c2bb9a945`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219e84f2f8501eb1227b42e0b7f2652472e8eaa6469ad7cd4c2909940275fcc1`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:01490a86fceee86faec1231b99d11ee20ec0f5b6765f67b4c14cdd563038834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58121899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b338d82d42cf578d0290d287e72e15303bfefc22a97481d071456c49e5fd4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:29:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 03:29:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 03:30:13 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 03:30:13 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 03:30:13 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 03:30:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 03:30:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e6914ce392c7b2d06aabfa3f659f295ae652a31390a8e1566508e5a090d29`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb07704ca3bf007a7da419a862b6ae55249dc2751b0b1181f689e7b627fbdee`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 2.1 MB (2084711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886092bd0aa3984219e0e944114e94348d03e7f54f763bc43162ce1b8f7a974`  
		Last Modified: Tue, 10 Oct 2017 03:30:30 GMT  
		Size: 10.2 MB (10201330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46464da46f977c050b75e39de13e1a9b47f91eab59b93f8d374001a549eb68`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e768bf5a71a9582f920632527a628914cc52f3039e260b8ed8bead76abdf6`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:2903734ba0e6eba717e26c3ec1ccedc330c896278cc457a16934468b151e14aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53888817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df91a6b9cebca73bea810e0141776813836fdae347dd9a000526e87144b29edf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:13:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 07:14:10 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:14:15 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 07:14:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 07:14:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 07:25:23 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 07:25:29 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 07:25:35 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 07:25:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:25:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:25:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6603bbedc0deb0e93ab68ca479d61b77796ca001363f738c8ae56390e5e921fe`  
		Last Modified: Tue, 10 Oct 2017 07:26:21 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415c2a80b65913312344b828ba87a63ce19f0a1562d542a1c4847ea043e21fc0`  
		Last Modified: Tue, 10 Oct 2017 07:26:22 GMT  
		Size: 1.8 MB (1763249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5640adfc5a3fcafe1ff7f59e3cadc7ee33829c356a6b771db80ff20b4545804f`  
		Last Modified: Tue, 10 Oct 2017 07:26:23 GMT  
		Size: 6.7 MB (6744966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f936dc84eb26de748f30ffa9a12c4b1ba78db911ce80e720b7df8336e13e6ccc`  
		Last Modified: Tue, 10 Oct 2017 07:26:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91206622a7d5b5989799a2cda2281a249eda5f2f05946043d5613e86ec31881`  
		Last Modified: Tue, 10 Oct 2017 07:26:21 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:a428fe2e69ce4ba30713c44547427920588d90bc2bbefe0c5b94dcf8c3cf1aba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54470610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c165df0881a7a47469404eca7089b3d97f26d2559116d907ec14245baee52e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:05:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:05:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:06:15 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:06:15 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:06:15 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:06:16 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:06:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:06:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2552b6a37c26f929a9282490858ccbf9c896a10d2a145fcac347c3c4330b9c15`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6cf21818efef4f6b6ce8a05c586c0f5da02b0521fe08704474bfe572b76313`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.8 MB (1825799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f9128de48b233e171ce3d1f9b6081312bce46fe6ce8565fccc54a48f672657`  
		Last Modified: Mon, 09 Oct 2017 22:06:30 GMT  
		Size: 7.7 MB (7669868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be35415d03daadefce7ea3ac26b3c19f6a9ee32861145ddde6d62a523d4a1692`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64468932cce5679c58b6205ec4c1b37b391ac511a50304b00388187f5a54504a`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
