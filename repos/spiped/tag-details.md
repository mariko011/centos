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
$ docker pull spiped@sha256:6a58e83f1a53b2ff00eafb8604788b7f9c653aaf6c4dd09ce640195bfc3a52a1
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55608257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb68cedd04cf492731bb4dcf46ea7a32d37821c16ac02b68d85796e1bf91dc63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:38:57 GMT
MAINTAINER Tim Düsterhus
# Wed, 09 Nov 2016 01:38:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 09 Nov 2016 01:39:04 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 09 Nov 2016 01:39:06 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 09 Nov 2016 01:39:27 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:39:28 GMT
VOLUME [/spiped]
# Wed, 09 Nov 2016 01:39:28 GMT
WORKDIR /spiped
# Wed, 09 Nov 2016 01:39:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:39:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fec13fe8954ace8aae64fb6fbf7c497b318c058225f437598d62c79cfcdb78`  
		Last Modified: Wed, 09 Nov 2016 01:39:44 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bf9e9368e8208427ae3839cd6f093c593c497885aafa030a2e27decbebdfb6`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 1.7 MB (1690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1674e43b6c91dab7d69aca731e3e00ac555075799ab4a5dacf156678e06e064`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c535cb55af8ccb0d40ab4cf2e6003c11be44b247cd27db17fa35a1f85e17573a`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 2.6 MB (2557150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff506b16e18ee499980ac0dfdfc64ef46b115dd7db66dc417edea94421e3142a`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f7c44113b0eb0bd8e8cd7d047b8db420b06a603aa8c6f4d0fd8b947949db6`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5`

```console
$ docker pull spiped@sha256:6a58e83f1a53b2ff00eafb8604788b7f9c653aaf6c4dd09ce640195bfc3a52a1
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55608257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb68cedd04cf492731bb4dcf46ea7a32d37821c16ac02b68d85796e1bf91dc63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:38:57 GMT
MAINTAINER Tim Düsterhus
# Wed, 09 Nov 2016 01:38:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 09 Nov 2016 01:39:04 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 09 Nov 2016 01:39:06 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 09 Nov 2016 01:39:27 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:39:28 GMT
VOLUME [/spiped]
# Wed, 09 Nov 2016 01:39:28 GMT
WORKDIR /spiped
# Wed, 09 Nov 2016 01:39:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:39:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fec13fe8954ace8aae64fb6fbf7c497b318c058225f437598d62c79cfcdb78`  
		Last Modified: Wed, 09 Nov 2016 01:39:44 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bf9e9368e8208427ae3839cd6f093c593c497885aafa030a2e27decbebdfb6`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 1.7 MB (1690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1674e43b6c91dab7d69aca731e3e00ac555075799ab4a5dacf156678e06e064`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c535cb55af8ccb0d40ab4cf2e6003c11be44b247cd27db17fa35a1f85e17573a`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 2.6 MB (2557150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff506b16e18ee499980ac0dfdfc64ef46b115dd7db66dc417edea94421e3142a`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f7c44113b0eb0bd8e8cd7d047b8db420b06a603aa8c6f4d0fd8b947949db6`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:6a58e83f1a53b2ff00eafb8604788b7f9c653aaf6c4dd09ce640195bfc3a52a1
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55608257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb68cedd04cf492731bb4dcf46ea7a32d37821c16ac02b68d85796e1bf91dc63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:38:57 GMT
MAINTAINER Tim Düsterhus
# Wed, 09 Nov 2016 01:38:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 09 Nov 2016 01:39:04 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 09 Nov 2016 01:39:06 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 09 Nov 2016 01:39:27 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:39:28 GMT
VOLUME [/spiped]
# Wed, 09 Nov 2016 01:39:28 GMT
WORKDIR /spiped
# Wed, 09 Nov 2016 01:39:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:39:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fec13fe8954ace8aae64fb6fbf7c497b318c058225f437598d62c79cfcdb78`  
		Last Modified: Wed, 09 Nov 2016 01:39:44 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bf9e9368e8208427ae3839cd6f093c593c497885aafa030a2e27decbebdfb6`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 1.7 MB (1690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1674e43b6c91dab7d69aca731e3e00ac555075799ab4a5dacf156678e06e064`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c535cb55af8ccb0d40ab4cf2e6003c11be44b247cd27db17fa35a1f85e17573a`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 2.6 MB (2557150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff506b16e18ee499980ac0dfdfc64ef46b115dd7db66dc417edea94421e3142a`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f7c44113b0eb0bd8e8cd7d047b8db420b06a603aa8c6f4d0fd8b947949db6`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:6a58e83f1a53b2ff00eafb8604788b7f9c653aaf6c4dd09ce640195bfc3a52a1
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55608257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb68cedd04cf492731bb4dcf46ea7a32d37821c16ac02b68d85796e1bf91dc63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:38:57 GMT
MAINTAINER Tim Düsterhus
# Wed, 09 Nov 2016 01:38:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 09 Nov 2016 01:39:04 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 09 Nov 2016 01:39:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 09 Nov 2016 01:39:06 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 09 Nov 2016 01:39:27 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 09 Nov 2016 01:39:28 GMT
VOLUME [/spiped]
# Wed, 09 Nov 2016 01:39:28 GMT
WORKDIR /spiped
# Wed, 09 Nov 2016 01:39:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 09 Nov 2016 01:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Nov 2016 01:39:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fec13fe8954ace8aae64fb6fbf7c497b318c058225f437598d62c79cfcdb78`  
		Last Modified: Wed, 09 Nov 2016 01:39:44 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bf9e9368e8208427ae3839cd6f093c593c497885aafa030a2e27decbebdfb6`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 1.7 MB (1690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1674e43b6c91dab7d69aca731e3e00ac555075799ab4a5dacf156678e06e064`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c535cb55af8ccb0d40ab4cf2e6003c11be44b247cd27db17fa35a1f85e17573a`  
		Last Modified: Wed, 09 Nov 2016 01:39:42 GMT  
		Size: 2.6 MB (2557150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff506b16e18ee499980ac0dfdfc64ef46b115dd7db66dc417edea94421e3142a`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03f7c44113b0eb0bd8e8cd7d047b8db420b06a603aa8c6f4d0fd8b947949db6`  
		Last Modified: Wed, 09 Nov 2016 01:39:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5.0-alpine`

```console
$ docker pull spiped@sha256:9d16e8848d4ca0e917f23f6d0396adba2249b131b834492b9d3b742cc99435d2
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcc6d59442e57301c1f2ef748ba6ebe4c03ff52decf113f5e2212a4774f3ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:22:31 GMT
MAINTAINER Tim Düsterhus
# Wed, 19 Oct 2016 00:22:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 19 Oct 2016 00:22:33 GMT
RUN apk add --no-cache libssl1.0
# Wed, 19 Oct 2016 00:22:33 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 19 Oct 2016 00:22:35 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 19 Oct 2016 00:22:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 19 Oct 2016 00:22:42 GMT
VOLUME [/spiped]
# Wed, 19 Oct 2016 00:22:42 GMT
WORKDIR /spiped
# Wed, 19 Oct 2016 00:22:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:22:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:22:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77dadcdb9af5b38eb1b3460fa8b66fef688e59a882f94e69bf4660e34616e26`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba2951306e553bee6006e2072072f2cc8fdbfb11b2b71433691f3cd01a4ad0`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 5.3 KB (5261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d3d69dccd8a298ee72093634f332203a23f63db97c5cf1f26b224e25313eb`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403d3eaff92e832240e68b1b75d3e879ff95a733309270a96aad0140381e069`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 66.6 KB (66626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602e1e3a19e70155b2442bce943ccca7725263b1f61dec83079b3db704ddc748`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd8b18e90c1daa69aba08ac9c9e7bfd8a145b2aeb2cbbe14beec0b4cd96cbf1`  
		Last Modified: Wed, 19 Oct 2016 00:22:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5-alpine`

```console
$ docker pull spiped@sha256:9d16e8848d4ca0e917f23f6d0396adba2249b131b834492b9d3b742cc99435d2
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcc6d59442e57301c1f2ef748ba6ebe4c03ff52decf113f5e2212a4774f3ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:22:31 GMT
MAINTAINER Tim Düsterhus
# Wed, 19 Oct 2016 00:22:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 19 Oct 2016 00:22:33 GMT
RUN apk add --no-cache libssl1.0
# Wed, 19 Oct 2016 00:22:33 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 19 Oct 2016 00:22:35 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 19 Oct 2016 00:22:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 19 Oct 2016 00:22:42 GMT
VOLUME [/spiped]
# Wed, 19 Oct 2016 00:22:42 GMT
WORKDIR /spiped
# Wed, 19 Oct 2016 00:22:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:22:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:22:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77dadcdb9af5b38eb1b3460fa8b66fef688e59a882f94e69bf4660e34616e26`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba2951306e553bee6006e2072072f2cc8fdbfb11b2b71433691f3cd01a4ad0`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 5.3 KB (5261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d3d69dccd8a298ee72093634f332203a23f63db97c5cf1f26b224e25313eb`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403d3eaff92e832240e68b1b75d3e879ff95a733309270a96aad0140381e069`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 66.6 KB (66626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602e1e3a19e70155b2442bce943ccca7725263b1f61dec83079b3db704ddc748`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd8b18e90c1daa69aba08ac9c9e7bfd8a145b2aeb2cbbe14beec0b4cd96cbf1`  
		Last Modified: Wed, 19 Oct 2016 00:22:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:9d16e8848d4ca0e917f23f6d0396adba2249b131b834492b9d3b742cc99435d2
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcc6d59442e57301c1f2ef748ba6ebe4c03ff52decf113f5e2212a4774f3ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:22:31 GMT
MAINTAINER Tim Düsterhus
# Wed, 19 Oct 2016 00:22:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 19 Oct 2016 00:22:33 GMT
RUN apk add --no-cache libssl1.0
# Wed, 19 Oct 2016 00:22:33 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 19 Oct 2016 00:22:35 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 19 Oct 2016 00:22:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 19 Oct 2016 00:22:42 GMT
VOLUME [/spiped]
# Wed, 19 Oct 2016 00:22:42 GMT
WORKDIR /spiped
# Wed, 19 Oct 2016 00:22:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:22:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:22:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77dadcdb9af5b38eb1b3460fa8b66fef688e59a882f94e69bf4660e34616e26`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba2951306e553bee6006e2072072f2cc8fdbfb11b2b71433691f3cd01a4ad0`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 5.3 KB (5261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d3d69dccd8a298ee72093634f332203a23f63db97c5cf1f26b224e25313eb`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403d3eaff92e832240e68b1b75d3e879ff95a733309270a96aad0140381e069`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 66.6 KB (66626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602e1e3a19e70155b2442bce943ccca7725263b1f61dec83079b3db704ddc748`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd8b18e90c1daa69aba08ac9c9e7bfd8a145b2aeb2cbbe14beec0b4cd96cbf1`  
		Last Modified: Wed, 19 Oct 2016 00:22:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:9d16e8848d4ca0e917f23f6d0396adba2249b131b834492b9d3b742cc99435d2
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcc6d59442e57301c1f2ef748ba6ebe4c03ff52decf113f5e2212a4774f3ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:22:31 GMT
MAINTAINER Tim Düsterhus
# Wed, 19 Oct 2016 00:22:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 19 Oct 2016 00:22:33 GMT
RUN apk add --no-cache libssl1.0
# Wed, 19 Oct 2016 00:22:33 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 19 Oct 2016 00:22:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 19 Oct 2016 00:22:35 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 19 Oct 2016 00:22:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 19 Oct 2016 00:22:42 GMT
VOLUME [/spiped]
# Wed, 19 Oct 2016 00:22:42 GMT
WORKDIR /spiped
# Wed, 19 Oct 2016 00:22:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 19 Oct 2016 00:22:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:22:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77dadcdb9af5b38eb1b3460fa8b66fef688e59a882f94e69bf4660e34616e26`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ba2951306e553bee6006e2072072f2cc8fdbfb11b2b71433691f3cd01a4ad0`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 5.3 KB (5261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d3d69dccd8a298ee72093634f332203a23f63db97c5cf1f26b224e25313eb`  
		Last Modified: Wed, 19 Oct 2016 00:22:55 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403d3eaff92e832240e68b1b75d3e879ff95a733309270a96aad0140381e069`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 66.6 KB (66626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602e1e3a19e70155b2442bce943ccca7725263b1f61dec83079b3db704ddc748`  
		Last Modified: Wed, 19 Oct 2016 00:22:53 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd8b18e90c1daa69aba08ac9c9e7bfd8a145b2aeb2cbbe14beec0b4cd96cbf1`  
		Last Modified: Wed, 19 Oct 2016 00:22:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
