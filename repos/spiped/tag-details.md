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
$ docker pull spiped@sha256:a8a0a7d1b77d901a7d36b4085f754b47828fc59e20640af5469f1970c1a53d07
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc574df8e6717627dbedf6ea4b1b0601cceb0193dd8d07156b285587cf11be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Wed, 01 Mar 2017 01:09:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 01 Mar 2017 01:09:46 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 01 Mar 2017 01:09:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 01 Mar 2017 01:09:49 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 01 Mar 2017 01:10:14 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 01:10:15 GMT
VOLUME [/spiped]
# Wed, 01 Mar 2017 01:10:16 GMT
WORKDIR /spiped
# Wed, 01 Mar 2017 01:10:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 01 Mar 2017 01:10:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:10:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f631c1551095493941726171ba3b02cccbc29f5d61478bb7e3003f9ffa563e`  
		Last Modified: Thu, 02 Mar 2017 04:22:57 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c52ec29f44528c11d6842fa197fb7edb9a2a8aaee0120e759bfbb783b7fa9a`  
		Last Modified: Thu, 02 Mar 2017 04:22:55 GMT  
		Size: 1.7 MB (1691005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c9c220a789ba2ac51589c5194b0d2c34b1de500353a2328ea848666ab0214`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8152d975f70a065ebab0297cbc64bb1f1843b11c575737ef63e51a209905b`  
		Last Modified: Thu, 02 Mar 2017 04:22:56 GMT  
		Size: 2.6 MB (2558026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e375e6c1d213e52b8b97484bdb96dd0970aa490e310af22e17546fe0170d168c`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af82c7d947a5f5b12745a23e550aab092e8b32d6a58cab986a7a03025e84dc`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5`

```console
$ docker pull spiped@sha256:a8a0a7d1b77d901a7d36b4085f754b47828fc59e20640af5469f1970c1a53d07
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc574df8e6717627dbedf6ea4b1b0601cceb0193dd8d07156b285587cf11be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Wed, 01 Mar 2017 01:09:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 01 Mar 2017 01:09:46 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 01 Mar 2017 01:09:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 01 Mar 2017 01:09:49 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 01 Mar 2017 01:10:14 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 01:10:15 GMT
VOLUME [/spiped]
# Wed, 01 Mar 2017 01:10:16 GMT
WORKDIR /spiped
# Wed, 01 Mar 2017 01:10:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 01 Mar 2017 01:10:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:10:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f631c1551095493941726171ba3b02cccbc29f5d61478bb7e3003f9ffa563e`  
		Last Modified: Thu, 02 Mar 2017 04:22:57 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c52ec29f44528c11d6842fa197fb7edb9a2a8aaee0120e759bfbb783b7fa9a`  
		Last Modified: Thu, 02 Mar 2017 04:22:55 GMT  
		Size: 1.7 MB (1691005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c9c220a789ba2ac51589c5194b0d2c34b1de500353a2328ea848666ab0214`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8152d975f70a065ebab0297cbc64bb1f1843b11c575737ef63e51a209905b`  
		Last Modified: Thu, 02 Mar 2017 04:22:56 GMT  
		Size: 2.6 MB (2558026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e375e6c1d213e52b8b97484bdb96dd0970aa490e310af22e17546fe0170d168c`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af82c7d947a5f5b12745a23e550aab092e8b32d6a58cab986a7a03025e84dc`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:a8a0a7d1b77d901a7d36b4085f754b47828fc59e20640af5469f1970c1a53d07
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc574df8e6717627dbedf6ea4b1b0601cceb0193dd8d07156b285587cf11be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Wed, 01 Mar 2017 01:09:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 01 Mar 2017 01:09:46 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 01 Mar 2017 01:09:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 01 Mar 2017 01:09:49 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 01 Mar 2017 01:10:14 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 01:10:15 GMT
VOLUME [/spiped]
# Wed, 01 Mar 2017 01:10:16 GMT
WORKDIR /spiped
# Wed, 01 Mar 2017 01:10:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 01 Mar 2017 01:10:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:10:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f631c1551095493941726171ba3b02cccbc29f5d61478bb7e3003f9ffa563e`  
		Last Modified: Thu, 02 Mar 2017 04:22:57 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c52ec29f44528c11d6842fa197fb7edb9a2a8aaee0120e759bfbb783b7fa9a`  
		Last Modified: Thu, 02 Mar 2017 04:22:55 GMT  
		Size: 1.7 MB (1691005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c9c220a789ba2ac51589c5194b0d2c34b1de500353a2328ea848666ab0214`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8152d975f70a065ebab0297cbc64bb1f1843b11c575737ef63e51a209905b`  
		Last Modified: Thu, 02 Mar 2017 04:22:56 GMT  
		Size: 2.6 MB (2558026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e375e6c1d213e52b8b97484bdb96dd0970aa490e310af22e17546fe0170d168c`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af82c7d947a5f5b12745a23e550aab092e8b32d6a58cab986a7a03025e84dc`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:a8a0a7d1b77d901a7d36b4085f754b47828fc59e20640af5469f1970c1a53d07
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc574df8e6717627dbedf6ea4b1b0601cceb0193dd8d07156b285587cf11be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Wed, 01 Mar 2017 01:09:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 01 Mar 2017 01:09:46 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 01 Mar 2017 01:09:47 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 01 Mar 2017 01:09:48 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 01 Mar 2017 01:09:49 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 01 Mar 2017 01:10:14 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 01 Mar 2017 01:10:15 GMT
VOLUME [/spiped]
# Wed, 01 Mar 2017 01:10:16 GMT
WORKDIR /spiped
# Wed, 01 Mar 2017 01:10:17 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 01 Mar 2017 01:10:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:10:18 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f631c1551095493941726171ba3b02cccbc29f5d61478bb7e3003f9ffa563e`  
		Last Modified: Thu, 02 Mar 2017 04:22:57 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c52ec29f44528c11d6842fa197fb7edb9a2a8aaee0120e759bfbb783b7fa9a`  
		Last Modified: Thu, 02 Mar 2017 04:22:55 GMT  
		Size: 1.7 MB (1691005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c9c220a789ba2ac51589c5194b0d2c34b1de500353a2328ea848666ab0214`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8152d975f70a065ebab0297cbc64bb1f1843b11c575737ef63e51a209905b`  
		Last Modified: Thu, 02 Mar 2017 04:22:56 GMT  
		Size: 2.6 MB (2558026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e375e6c1d213e52b8b97484bdb96dd0970aa490e310af22e17546fe0170d168c`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88af82c7d947a5f5b12745a23e550aab092e8b32d6a58cab986a7a03025e84dc`  
		Last Modified: Thu, 02 Mar 2017 04:22:54 GMT  
		Size: 341.0 B  
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
