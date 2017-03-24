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
$ docker pull spiped@sha256:db6e61c47044bd2700690ba57c047f958ed336b4d23ab3cdbc7e0445ad04e9bd
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55834627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04c596c08e9b85de274dd8d9a9999190ee677065525d119713ddbf9ee639ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 17:27:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 22 Mar 2017 17:27:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 22 Mar 2017 17:27:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 22 Mar 2017 17:27:16 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 22 Mar 2017 17:27:44 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 17:27:44 GMT
VOLUME [/spiped]
# Wed, 22 Mar 2017 17:27:44 GMT
WORKDIR /spiped
# Wed, 22 Mar 2017 17:27:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 22 Mar 2017 17:27:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 17:27:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae423c65a916996665892d5f8ee725eb14eaa30ebed011e603223c50303ea63f`  
		Last Modified: Fri, 24 Mar 2017 00:57:47 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c749a6e4c733f4300c5adfee8d8a472877164b66b9864edf4e2734037fe48`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.8 MB (1762921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0638f33dc635a0938a2d482455ee0aa98d143aaf36003d831884085bd72d4787`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f1735336b51cf45cb01428dee49421b8527086fcd7c3d08098189908212bf`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 2.6 MB (2629519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cbbfa4821a5ef2ee6eea4bec9c4bd5364607a9e7594efa30890cd7a2072925`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc90beec407c65c9f01a1211a022d3e1c101e28902a27c566d4d6a63230e8be`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5`

```console
$ docker pull spiped@sha256:db6e61c47044bd2700690ba57c047f958ed336b4d23ab3cdbc7e0445ad04e9bd
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55834627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04c596c08e9b85de274dd8d9a9999190ee677065525d119713ddbf9ee639ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 17:27:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 22 Mar 2017 17:27:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 22 Mar 2017 17:27:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 22 Mar 2017 17:27:16 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 22 Mar 2017 17:27:44 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 17:27:44 GMT
VOLUME [/spiped]
# Wed, 22 Mar 2017 17:27:44 GMT
WORKDIR /spiped
# Wed, 22 Mar 2017 17:27:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 22 Mar 2017 17:27:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 17:27:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae423c65a916996665892d5f8ee725eb14eaa30ebed011e603223c50303ea63f`  
		Last Modified: Fri, 24 Mar 2017 00:57:47 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c749a6e4c733f4300c5adfee8d8a472877164b66b9864edf4e2734037fe48`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.8 MB (1762921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0638f33dc635a0938a2d482455ee0aa98d143aaf36003d831884085bd72d4787`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f1735336b51cf45cb01428dee49421b8527086fcd7c3d08098189908212bf`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 2.6 MB (2629519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cbbfa4821a5ef2ee6eea4bec9c4bd5364607a9e7594efa30890cd7a2072925`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc90beec407c65c9f01a1211a022d3e1c101e28902a27c566d4d6a63230e8be`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:db6e61c47044bd2700690ba57c047f958ed336b4d23ab3cdbc7e0445ad04e9bd
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55834627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04c596c08e9b85de274dd8d9a9999190ee677065525d119713ddbf9ee639ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 17:27:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 22 Mar 2017 17:27:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 22 Mar 2017 17:27:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 22 Mar 2017 17:27:16 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 22 Mar 2017 17:27:44 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 17:27:44 GMT
VOLUME [/spiped]
# Wed, 22 Mar 2017 17:27:44 GMT
WORKDIR /spiped
# Wed, 22 Mar 2017 17:27:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 22 Mar 2017 17:27:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 17:27:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae423c65a916996665892d5f8ee725eb14eaa30ebed011e603223c50303ea63f`  
		Last Modified: Fri, 24 Mar 2017 00:57:47 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c749a6e4c733f4300c5adfee8d8a472877164b66b9864edf4e2734037fe48`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.8 MB (1762921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0638f33dc635a0938a2d482455ee0aa98d143aaf36003d831884085bd72d4787`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f1735336b51cf45cb01428dee49421b8527086fcd7c3d08098189908212bf`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 2.6 MB (2629519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cbbfa4821a5ef2ee6eea4bec9c4bd5364607a9e7594efa30890cd7a2072925`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc90beec407c65c9f01a1211a022d3e1c101e28902a27c566d4d6a63230e8be`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:db6e61c47044bd2700690ba57c047f958ed336b4d23ab3cdbc7e0445ad04e9bd
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55834627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04c596c08e9b85de274dd8d9a9999190ee677065525d119713ddbf9ee639ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 17:27:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 22 Mar 2017 17:27:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 22 Mar 2017 17:27:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 22 Mar 2017 17:27:16 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 22 Mar 2017 17:27:16 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 22 Mar 2017 17:27:44 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 17:27:44 GMT
VOLUME [/spiped]
# Wed, 22 Mar 2017 17:27:44 GMT
WORKDIR /spiped
# Wed, 22 Mar 2017 17:27:45 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 22 Mar 2017 17:27:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 17:27:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae423c65a916996665892d5f8ee725eb14eaa30ebed011e603223c50303ea63f`  
		Last Modified: Fri, 24 Mar 2017 00:57:47 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c749a6e4c733f4300c5adfee8d8a472877164b66b9864edf4e2734037fe48`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.8 MB (1762921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0638f33dc635a0938a2d482455ee0aa98d143aaf36003d831884085bd72d4787`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f1735336b51cf45cb01428dee49421b8527086fcd7c3d08098189908212bf`  
		Last Modified: Fri, 24 Mar 2017 00:57:46 GMT  
		Size: 2.6 MB (2629519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cbbfa4821a5ef2ee6eea4bec9c4bd5364607a9e7594efa30890cd7a2072925`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc90beec407c65c9f01a1211a022d3e1c101e28902a27c566d4d6a63230e8be`  
		Last Modified: Fri, 24 Mar 2017 00:57:45 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5.0-alpine`

```console
$ docker pull spiped@sha256:97237623a15e5a826c956d43cced8d599d8148366b8c02c0f89ea1b0e6470177
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61115d9e6f0b0d920994463f5f0d8fbeb50fa7139a31efbd978aaa07431bf132`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 03 Mar 2017 23:45:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 03 Mar 2017 23:45:08 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 03 Mar 2017 23:45:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 03 Mar 2017 23:45:16 GMT
VOLUME [/spiped]
# Fri, 03 Mar 2017 23:45:16 GMT
WORKDIR /spiped
# Fri, 03 Mar 2017 23:45:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d015104b60c65c0a2a876b9aa9c0ff7b30c1fd40f2f663d62db0304b38a4d1`  
		Last Modified: Sat, 04 Mar 2017 06:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae14cb430009771f266c5589715686ead97a85a71342f3285d1ecaa08f300a0`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 66.6 KB (66594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc92c3794e48f2b9e0b432e8f171e7e9e611ba45d95c48409f6e85186466c80`  
		Last Modified: Sat, 04 Mar 2017 06:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d879108953a17b1dd2917b64298a201af5e55797d1a58616d2971cd041ec1`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5-alpine`

```console
$ docker pull spiped@sha256:97237623a15e5a826c956d43cced8d599d8148366b8c02c0f89ea1b0e6470177
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61115d9e6f0b0d920994463f5f0d8fbeb50fa7139a31efbd978aaa07431bf132`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 03 Mar 2017 23:45:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 03 Mar 2017 23:45:08 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 03 Mar 2017 23:45:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 03 Mar 2017 23:45:16 GMT
VOLUME [/spiped]
# Fri, 03 Mar 2017 23:45:16 GMT
WORKDIR /spiped
# Fri, 03 Mar 2017 23:45:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d015104b60c65c0a2a876b9aa9c0ff7b30c1fd40f2f663d62db0304b38a4d1`  
		Last Modified: Sat, 04 Mar 2017 06:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae14cb430009771f266c5589715686ead97a85a71342f3285d1ecaa08f300a0`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 66.6 KB (66594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc92c3794e48f2b9e0b432e8f171e7e9e611ba45d95c48409f6e85186466c80`  
		Last Modified: Sat, 04 Mar 2017 06:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d879108953a17b1dd2917b64298a201af5e55797d1a58616d2971cd041ec1`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:97237623a15e5a826c956d43cced8d599d8148366b8c02c0f89ea1b0e6470177
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61115d9e6f0b0d920994463f5f0d8fbeb50fa7139a31efbd978aaa07431bf132`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 03 Mar 2017 23:45:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 03 Mar 2017 23:45:08 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 03 Mar 2017 23:45:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 03 Mar 2017 23:45:16 GMT
VOLUME [/spiped]
# Fri, 03 Mar 2017 23:45:16 GMT
WORKDIR /spiped
# Fri, 03 Mar 2017 23:45:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d015104b60c65c0a2a876b9aa9c0ff7b30c1fd40f2f663d62db0304b38a4d1`  
		Last Modified: Sat, 04 Mar 2017 06:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae14cb430009771f266c5589715686ead97a85a71342f3285d1ecaa08f300a0`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 66.6 KB (66594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc92c3794e48f2b9e0b432e8f171e7e9e611ba45d95c48409f6e85186466c80`  
		Last Modified: Sat, 04 Mar 2017 06:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d879108953a17b1dd2917b64298a201af5e55797d1a58616d2971cd041ec1`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:97237623a15e5a826c956d43cced8d599d8148366b8c02c0f89ea1b0e6470177
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61115d9e6f0b0d920994463f5f0d8fbeb50fa7139a31efbd978aaa07431bf132`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 03 Mar 2017 23:45:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 03 Mar 2017 23:45:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 03 Mar 2017 23:45:08 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 03 Mar 2017 23:45:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 03 Mar 2017 23:45:16 GMT
VOLUME [/spiped]
# Fri, 03 Mar 2017 23:45:16 GMT
WORKDIR /spiped
# Fri, 03 Mar 2017 23:45:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d015104b60c65c0a2a876b9aa9c0ff7b30c1fd40f2f663d62db0304b38a4d1`  
		Last Modified: Sat, 04 Mar 2017 06:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae14cb430009771f266c5589715686ead97a85a71342f3285d1ecaa08f300a0`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 66.6 KB (66594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc92c3794e48f2b9e0b432e8f171e7e9e611ba45d95c48409f6e85186466c80`  
		Last Modified: Sat, 04 Mar 2017 06:07:37 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d879108953a17b1dd2917b64298a201af5e55797d1a58616d2971cd041ec1`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
