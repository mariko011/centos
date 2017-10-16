<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1`](#golang1)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8.4`](#golang184)
-	[`golang:1.8.4-alpine`](#golang184-alpine)
-	[`golang:1.8.4-alpine3.5`](#golang184-alpine35)
-	[`golang:1.8.4-alpine3.6`](#golang184-alpine36)
-	[`golang:1.8.4-jessie`](#golang184-jessie)
-	[`golang:1.8.4-nanoserver`](#golang184-nanoserver)
-	[`golang:1.8.4-onbuild`](#golang184-onbuild)
-	[`golang:1.8.4-stretch`](#golang184-stretch)
-	[`golang:1.8.4-windowsservercore`](#golang184-windowsservercore)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8-alpine3.5`](#golang18-alpine35)
-	[`golang:1.8-alpine3.6`](#golang18-alpine36)
-	[`golang:1.8-jessie`](#golang18-jessie)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.9`](#golang19)
-	[`golang:1.9.1`](#golang191)
-	[`golang:1.9.1-alpine`](#golang191-alpine)
-	[`golang:1.9.1-alpine3.6`](#golang191-alpine36)
-	[`golang:1.9.1-nanoserver`](#golang191-nanoserver)
-	[`golang:1.9.1-stretch`](#golang191-stretch)
-	[`golang:1.9.1-windowsservercore`](#golang191-windowsservercore)
-	[`golang:1.9-alpine`](#golang19-alpine)
-	[`golang:1.9-alpine3.6`](#golang19-alpine36)
-	[`golang:1.9-nanoserver`](#golang19-nanoserver)
-	[`golang:1.9-stretch`](#golang19-stretch)
-	[`golang:1.9-windowsservercore`](#golang19-windowsservercore)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:1-alpine3.6`](#golang1-alpine36)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:alpine`](#golangalpine)
-	[`golang:alpine3.6`](#golangalpine36)
-	[`golang:latest`](#golanglatest)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:stretch`](#golangstretch)
-	[`golang:windowsservercore`](#golangwindowsservercore)

## `golang:1`

```console
$ docker pull golang@sha256:e2be086d86eeb789460bcb48bc26e95c5b04a61fe8cf720ae1b2195d6f40edc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:f3e1a8ba85c0b3165461264a465d1f8068841afa23af8dd2ea23fcd9da524cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8` - linux; amd64

```console
$ docker pull golang@sha256:f6e019e3aa1280d36f1e3376ff2fe60c63b836852e977dceaf8be4bc34767e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e4acbfaba6fd5df1a0085e231915736ddb2dfe5825adeb0cea37f8390ab0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; arm variant v7

```console
$ docker pull golang@sha256:4aefd741ae8ab8dea41126bdc039b62dbce3403a861fdafbf297f4458accab1f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815da5ad0f810896b80ca2fdbc0656669367b2c6b1d95f8f6ef16992a6262e33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; 386

```console
$ docker pull golang@sha256:6c6ec4d6630be7a768b48a808eaa960b6994b557c91198a62ab03ea22781fe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ab7b63623ed7c414e0a24d2e58973a96a5c004dac8a8f18a329ac1d615a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; ppc64le

```console
$ docker pull golang@sha256:1490cbe58d7bc43ef0ca731285ceab155cc1d1eda43ad107d4d2fcd73b5cac4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70047a85d87188bfa60827e1a6470d0b5f8311e3f9110c737d6d1491f15d173d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; s390x

```console
$ docker pull golang@sha256:59411ea45feeef251dac66f3d00b50089b7d8f773e59c5b243297a2c9b74c99b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240702940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6b541127f3255a2772d7da743576e185521cde0c7ffdf01da2ff97c1b3daa2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:4ec8b83d3e4987d57c2153d2a5c3912ef30b93a65cd6415091975f421501cd4f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494762472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ca9104a236815409fe0b04ca16d80011805069c242c6ce999c807cb2c541b7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:22:38 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:25:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:26:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e5b1d4bd9bb840a0ee3e3cb5cb3ae195d36dc97ee6770c222bdc26423ca54`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b284e4ed0efad231292d7fc07be4b92730e992f1b02f41cdce3e7844573ca`  
		Last Modified: Wed, 11 Oct 2017 02:31:27 GMT  
		Size: 110.2 MB (110153946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6cbd07542501633f88539470a964b5b56ec9eb1fdedb59dee9937bf362752f`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4`

```console
$ docker pull golang@sha256:f3e1a8ba85c0b3165461264a465d1f8068841afa23af8dd2ea23fcd9da524cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8.4` - linux; amd64

```console
$ docker pull golang@sha256:f6e019e3aa1280d36f1e3376ff2fe60c63b836852e977dceaf8be4bc34767e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e4acbfaba6fd5df1a0085e231915736ddb2dfe5825adeb0cea37f8390ab0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; arm variant v7

```console
$ docker pull golang@sha256:4aefd741ae8ab8dea41126bdc039b62dbce3403a861fdafbf297f4458accab1f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815da5ad0f810896b80ca2fdbc0656669367b2c6b1d95f8f6ef16992a6262e33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; 386

```console
$ docker pull golang@sha256:6c6ec4d6630be7a768b48a808eaa960b6994b557c91198a62ab03ea22781fe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ab7b63623ed7c414e0a24d2e58973a96a5c004dac8a8f18a329ac1d615a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; ppc64le

```console
$ docker pull golang@sha256:1490cbe58d7bc43ef0ca731285ceab155cc1d1eda43ad107d4d2fcd73b5cac4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70047a85d87188bfa60827e1a6470d0b5f8311e3f9110c737d6d1491f15d173d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; s390x

```console
$ docker pull golang@sha256:59411ea45feeef251dac66f3d00b50089b7d8f773e59c5b243297a2c9b74c99b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240702940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6b541127f3255a2772d7da743576e185521cde0c7ffdf01da2ff97c1b3daa2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:4ec8b83d3e4987d57c2153d2a5c3912ef30b93a65cd6415091975f421501cd4f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494762472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ca9104a236815409fe0b04ca16d80011805069c242c6ce999c807cb2c541b7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:22:38 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:25:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:26:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e5b1d4bd9bb840a0ee3e3cb5cb3ae195d36dc97ee6770c222bdc26423ca54`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b284e4ed0efad231292d7fc07be4b92730e992f1b02f41cdce3e7844573ca`  
		Last Modified: Wed, 11 Oct 2017 02:31:27 GMT  
		Size: 110.2 MB (110153946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6cbd07542501633f88539470a964b5b56ec9eb1fdedb59dee9937bf362752f`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-alpine`

```console
$ docker pull golang@sha256:7416f27a9fbe6ff260adc3aa0a9bf77423ce3c5ff163cd6acf760c572d8d08ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.4-alpine` - linux; amd64

```console
$ docker pull golang@sha256:36b87287e2cc83feeb5a0cc3d0da891c9da7c6974f6e5ee9b4763c96b04f5ebb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77951998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3737804750352c7c9b8ea55eb3e4899884abc442d8bc1b18750938dcb8fb7052`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:39:54 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:50:09 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:50:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:51:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:51:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:51:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:51:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:51:16 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:51:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d66f22e465695b615519ecadd270115f85462b8554570d8349e1e74c3bfb3`  
		Last Modified: Thu, 14 Sep 2017 01:45:36 GMT  
		Size: 350.7 KB (350670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada0354b66713841af99ecc977a1c22473c429c7e97e4d80a761f59b7469b11`  
		Last Modified: Wed, 04 Oct 2017 22:03:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d77d279c36d2e0b651b83cd95a8639ed1cf40c63778342c99920166c7d303b`  
		Last Modified: Wed, 04 Oct 2017 22:03:39 GMT  
		Size: 75.6 MB (75629087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c99719da2d8516996ae5f8646c7bf71c2904ebabb354d688458f7025b76df53`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622aaed80be1706490249492dbb0db0a3f7b41647ee956135cb23ec7c3d42307`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-alpine3.5`

```console
$ docker pull golang@sha256:7416f27a9fbe6ff260adc3aa0a9bf77423ce3c5ff163cd6acf760c572d8d08ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.4-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:36b87287e2cc83feeb5a0cc3d0da891c9da7c6974f6e5ee9b4763c96b04f5ebb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77951998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3737804750352c7c9b8ea55eb3e4899884abc442d8bc1b18750938dcb8fb7052`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:39:54 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:50:09 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:50:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:51:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:51:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:51:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:51:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:51:16 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:51:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d66f22e465695b615519ecadd270115f85462b8554570d8349e1e74c3bfb3`  
		Last Modified: Thu, 14 Sep 2017 01:45:36 GMT  
		Size: 350.7 KB (350670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada0354b66713841af99ecc977a1c22473c429c7e97e4d80a761f59b7469b11`  
		Last Modified: Wed, 04 Oct 2017 22:03:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d77d279c36d2e0b651b83cd95a8639ed1cf40c63778342c99920166c7d303b`  
		Last Modified: Wed, 04 Oct 2017 22:03:39 GMT  
		Size: 75.6 MB (75629087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c99719da2d8516996ae5f8646c7bf71c2904ebabb354d688458f7025b76df53`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622aaed80be1706490249492dbb0db0a3f7b41647ee956135cb23ec7c3d42307`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-alpine3.6`

```console
$ docker pull golang@sha256:c21963f3a84d7ffb93a2fc60c8426db810abc372e95995d933c06170b897cba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.4-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:d5d292c40a80e3097565e01c21f7a98e96571d783c2da5d74b35281173df6f2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78786427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237dd9db2960ca01e9e3e38c34b23b19569e7f3064b0972e79d6323eaa6769fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:44:00 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:45:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:13 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:14 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102255e55471548cc319a762d115a2d50c636d2e4a007716774e0e5fda32aa50`  
		Last Modified: Wed, 04 Oct 2017 22:02:22 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa88d0dbe5f3b6064a1cf64ae555c44769d89e428612b0fb19875dfb7116d89`  
		Last Modified: Wed, 04 Oct 2017 22:02:49 GMT  
		Size: 76.4 MB (76442700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab85760b4bd2472ef2fc2c2e4826f558409ccfa635c8b947afa623aba1423f`  
		Last Modified: Wed, 04 Oct 2017 22:02:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa44aa219fdc5f64f7564f5fbfb653dd4e1ef329b501778e049deb665d5e3ec8`  
		Last Modified: Wed, 04 Oct 2017 22:02:22 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-jessie`

```console
$ docker pull golang@sha256:e8ff3ea3c2666f85c2f7576914a3c15b9f71f7ab92507882b71f1b5a2c49c203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.4-jessie` - linux; amd64

```console
$ docker pull golang@sha256:f6e019e3aa1280d36f1e3376ff2fe60c63b836852e977dceaf8be4bc34767e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e4acbfaba6fd5df1a0085e231915736ddb2dfe5825adeb0cea37f8390ab0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:4aefd741ae8ab8dea41126bdc039b62dbce3403a861fdafbf297f4458accab1f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815da5ad0f810896b80ca2fdbc0656669367b2c6b1d95f8f6ef16992a6262e33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; 386

```console
$ docker pull golang@sha256:6c6ec4d6630be7a768b48a808eaa960b6994b557c91198a62ab03ea22781fe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ab7b63623ed7c414e0a24d2e58973a96a5c004dac8a8f18a329ac1d615a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:1490cbe58d7bc43ef0ca731285ceab155cc1d1eda43ad107d4d2fcd73b5cac4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70047a85d87188bfa60827e1a6470d0b5f8311e3f9110c737d6d1491f15d173d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; s390x

```console
$ docker pull golang@sha256:59411ea45feeef251dac66f3d00b50089b7d8f773e59c5b243297a2c9b74c99b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240702940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6b541127f3255a2772d7da743576e185521cde0c7ffdf01da2ff97c1b3daa2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-nanoserver`

```console
$ docker pull golang@sha256:ad77c6877b8b52a74a2cb38d9e64002e9bdff51bba4dc370c94bfc21e2715a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8.4-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ba15fe034e2847aea7158212f4811f0653953ec818a2220531970d3dd27b48c7
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.1 MB (500069099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2220bc00f2e567bf06e4366fe5f13fe9c51eb7ed7fa8db300f9f1019d7c7f746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:26:05 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:29:01 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:29:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476c57236c80d40292e1a9ce2c1576984bf8aec992125d321cfc0d097883200c`  
		Last Modified: Wed, 11 Oct 2017 02:31:38 GMT  
		Size: 970.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed282622df418dbd3ee17721f90fb1b50690c4a050b5df0cf6801fa97bd255b5`  
		Last Modified: Wed, 11 Oct 2017 02:31:57 GMT  
		Size: 104.7 MB (104724333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28f9b78ec2c080c4ba0084a1af54c04f7e729435c46db0380a0fe4536018088`  
		Last Modified: Wed, 11 Oct 2017 02:31:39 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-onbuild`

```console
$ docker pull golang@sha256:8003d8eb134466b3360de1efcef7df0b21d268dbd0d966f215a2dae8749f8c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.4-onbuild` - linux; amd64

```console
$ docker pull golang@sha256:837a254e9ef1836c5e6931e019034d5acce9453ad2000993c2b07b18d02857ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290dcfa6bfcabd99c1480207a73407480aef070acb775c3cd3e19f78ec9015cf`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:54:42 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172b7e031f38a106ae386bce6a4252ece61efcf345aad162a7ff2d3c6b798560`  
		Last Modified: Tue, 10 Oct 2017 06:08:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:c7740289a42376e55249c38590b63b757b8bb515392c1b24516c90a10eeffe5d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a96926147098e4655338c0f86acbe9f7ae8ef2ece09cc0f1e33b495c7e6383e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:50:43 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 00:50:43 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 00:50:44 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 00:50:44 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 00:50:44 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 00:50:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a78af4e23ee0fa14cfa3580f49dad701a38e8c306a5a6087c624845b68662b9`  
		Last Modified: Tue, 10 Oct 2017 00:53:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; 386

```console
$ docker pull golang@sha256:78a52ee9b84f69e307e138a636d482191df13673cb7a5e68a1e0b4b92d62464b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f925ef5e30faf0e2092dec2319cf0531e48fcf15eb2cf9833fbc48d3263dad`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:48:37 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 03:48:37 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 03:48:37 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 03:48:37 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 03:48:38 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 03:48:38 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faedb586d3d4f211b66310086788b38c77c499a3734702f9880e520451af9ec5`  
		Last Modified: Tue, 10 Oct 2017 04:04:00 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:4fcf08cb1f37fe48760a878190dc44a5cd9cea77bc39c7fb4a43a302a48d0ba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478c7880f504dff686777e26631b276a5228369bad1a053e273bde009afec73a`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 08:59:33 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 08:59:36 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 08:59:38 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 08:59:41 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 08:59:43 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 08:59:46 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a98f9c36624ff2b94eea91a59e6c534f1a6b4f2a9e9b57b522c425350ebdddf`  
		Last Modified: Tue, 10 Oct 2017 09:02:47 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:00e3a1a25ca7b70e41ba7b36ad30382216403387fb245bb8c0d75d95e7c729fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240703074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f713d75478e45daf624e1f0bba5d510a39db9c99d07b4764a485f22b1cf67849`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:22:03 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 00:22:03 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 00:22:03 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34da0c99658bdc9977cb30207eb4f66957d2e1ad6182b46963bbec7c37085b25`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-stretch`

```console
$ docker pull golang@sha256:737f323858a314d1c88815c7346fec6a708eaa9cbd3ec83cfa3a26047d7ebbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.4-stretch` - linux; amd64

```console
$ docker pull golang@sha256:da2d92ef5d8115be0bd078c0858dd811fa140e96d15f1a498014d88130c1abcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.5 MB (267452028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76d3b8683c460a1e6a0ac53c7c40ff0e47035238743183b7cab43deae641252`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:40:48 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:41:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:41:14 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:41:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:41:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:41:15 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:41:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373d5b9bde59a68bd75f3f0500dbb4d3dcd45d256fffe540541d505159fabaa2`  
		Last Modified: Tue, 10 Oct 2017 05:59:44 GMT  
		Size: 99.1 MB (99076737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb75fbea17708049350d04a9983b1fb9529d7a667fad8672e2a02fdf4e22c74`  
		Last Modified: Tue, 10 Oct 2017 05:58:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8cbb59e7bdd466843b7f368a60f3c48a1d47b38ec856ce4e351c0a0e63a922`  
		Last Modified: Tue, 10 Oct 2017 05:58:23 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:f076130e642ee2b64ec3fdca5233d500df1e2113e43da3f6541e7045cf886ff9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233778352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce69d7b880937e38f496e229297eabb4a37756945cc9516d15b63bbd0cb7042`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:03 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:49:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:49:19 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:49:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:49:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:49:22 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:49:22 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d29e818ee33c548a4a63b64b9b25e5876974dbec431e95be5947a857d0c107b`  
		Last Modified: Tue, 10 Oct 2017 00:52:34 GMT  
		Size: 85.7 MB (85700208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae89d6fd5c4636f20ff59b2edc2d2c0203e44a1f60523ed7d640ab85dee608a`  
		Last Modified: Tue, 10 Oct 2017 00:52:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a535ec608d2cf0d5df8b5c994d921084595fba8192ee494b1ad038c8b8047d`  
		Last Modified: Tue, 10 Oct 2017 00:52:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; 386

```console
$ docker pull golang@sha256:1cc013041c15799f591057a39ce2b5f02fe57e5d67545d31241c72dbf7a7ebea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262204413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e8b3847adb7b0e918d825b022fb096d4344395537233ca6af70868d0f65fc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:39:19 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:39:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:39:31 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:39:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:39:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:39:33 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:39:33 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4eca861bf12c8c3b16c0b0dea95f55b2504c53d365ba5adddc6a2a0b87f9030`  
		Last Modified: Tue, 10 Oct 2017 03:57:59 GMT  
		Size: 86.8 MB (86801010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8e32efaf6467c4a164580f68e217cb53eb30aa5e538dcccb82a3d904e965ad`  
		Last Modified: Tue, 10 Oct 2017 03:57:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fa71d9b43f1f02a2d3595f6f615905ab332d6203cdb6c7145f47e66ade167`  
		Last Modified: Tue, 10 Oct 2017 03:57:37 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:596facdef6e0651c144b73c890a6591e425385a4be4e30d0b9edc543ea07489f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247359972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d19516e1f06749010c5e07b0bd7c4668afb65a450c37c82ce3fcd341b64aaa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:16 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:54:42 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:54:48 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:55:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:55:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:55:20 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:55:23 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0736db40a5ec54ea9322e4d83f0e5e297579bdd7484c421955b8eaba50dd46e7`  
		Last Modified: Tue, 10 Oct 2017 09:01:46 GMT  
		Size: 84.3 MB (84332702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376fe70611dee508a1be30ba7dd76095973830c452017fd1d9fa67e1c28defb`  
		Last Modified: Tue, 10 Oct 2017 09:01:26 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6c38d9898ed7b19d6f57c1f60ff6d71638d4a104678636047ef54316b9bf4c`  
		Last Modified: Tue, 10 Oct 2017 09:01:26 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; s390x

```console
$ docker pull golang@sha256:7e57755eb25ba7755eabb7a88eb79cdb062c6c5237da6f6c8cf4ac7894c4a9ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239588747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb362602b3922b09a3955063538f7b6daa948dc497eae1429825a397a85a178`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:07 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:15 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:16 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8233a19ae55fd01ebe409bdf17eb13f6da697b61568a7e2e915e1bee20f9b5`  
		Last Modified: Tue, 10 Oct 2017 00:23:54 GMT  
		Size: 83.0 MB (83042084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2390508cbfbcd654b98c4b0cda453f3b8e434111ee268cbe04cd625d2439170b`  
		Last Modified: Tue, 10 Oct 2017 00:23:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322b80b18c6ce6d8afc8d7df48106db6085400e7cb20a847c165241934f72af`  
		Last Modified: Tue, 10 Oct 2017 00:23:23 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-windowsservercore`

```console
$ docker pull golang@sha256:f647e01213f4035747c459e006dc7cd07eb85851764bbcca17b519c11456daac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8.4-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:4ec8b83d3e4987d57c2153d2a5c3912ef30b93a65cd6415091975f421501cd4f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494762472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ca9104a236815409fe0b04ca16d80011805069c242c6ce999c807cb2c541b7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:22:38 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:25:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:26:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e5b1d4bd9bb840a0ee3e3cb5cb3ae195d36dc97ee6770c222bdc26423ca54`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b284e4ed0efad231292d7fc07be4b92730e992f1b02f41cdce3e7844573ca`  
		Last Modified: Wed, 11 Oct 2017 02:31:27 GMT  
		Size: 110.2 MB (110153946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6cbd07542501633f88539470a964b5b56ec9eb1fdedb59dee9937bf362752f`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:7416f27a9fbe6ff260adc3aa0a9bf77423ce3c5ff163cd6acf760c572d8d08ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

```console
$ docker pull golang@sha256:36b87287e2cc83feeb5a0cc3d0da891c9da7c6974f6e5ee9b4763c96b04f5ebb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77951998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3737804750352c7c9b8ea55eb3e4899884abc442d8bc1b18750938dcb8fb7052`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:39:54 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:50:09 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:50:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:51:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:51:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:51:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:51:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:51:16 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:51:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d66f22e465695b615519ecadd270115f85462b8554570d8349e1e74c3bfb3`  
		Last Modified: Thu, 14 Sep 2017 01:45:36 GMT  
		Size: 350.7 KB (350670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada0354b66713841af99ecc977a1c22473c429c7e97e4d80a761f59b7469b11`  
		Last Modified: Wed, 04 Oct 2017 22:03:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d77d279c36d2e0b651b83cd95a8639ed1cf40c63778342c99920166c7d303b`  
		Last Modified: Wed, 04 Oct 2017 22:03:39 GMT  
		Size: 75.6 MB (75629087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c99719da2d8516996ae5f8646c7bf71c2904ebabb354d688458f7025b76df53`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622aaed80be1706490249492dbb0db0a3f7b41647ee956135cb23ec7c3d42307`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.5`

```console
$ docker pull golang@sha256:7416f27a9fbe6ff260adc3aa0a9bf77423ce3c5ff163cd6acf760c572d8d08ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:36b87287e2cc83feeb5a0cc3d0da891c9da7c6974f6e5ee9b4763c96b04f5ebb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77951998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3737804750352c7c9b8ea55eb3e4899884abc442d8bc1b18750938dcb8fb7052`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:39:54 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:50:09 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:50:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:51:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:51:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:51:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:51:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:51:16 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:51:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d66f22e465695b615519ecadd270115f85462b8554570d8349e1e74c3bfb3`  
		Last Modified: Thu, 14 Sep 2017 01:45:36 GMT  
		Size: 350.7 KB (350670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada0354b66713841af99ecc977a1c22473c429c7e97e4d80a761f59b7469b11`  
		Last Modified: Wed, 04 Oct 2017 22:03:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d77d279c36d2e0b651b83cd95a8639ed1cf40c63778342c99920166c7d303b`  
		Last Modified: Wed, 04 Oct 2017 22:03:39 GMT  
		Size: 75.6 MB (75629087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c99719da2d8516996ae5f8646c7bf71c2904ebabb354d688458f7025b76df53`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622aaed80be1706490249492dbb0db0a3f7b41647ee956135cb23ec7c3d42307`  
		Last Modified: Wed, 04 Oct 2017 22:03:12 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.6`

```console
$ docker pull golang@sha256:c21963f3a84d7ffb93a2fc60c8426db810abc372e95995d933c06170b897cba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:d5d292c40a80e3097565e01c21f7a98e96571d783c2da5d74b35281173df6f2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78786427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237dd9db2960ca01e9e3e38c34b23b19569e7f3064b0972e79d6323eaa6769fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:44:00 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:45:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:13 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:14 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102255e55471548cc319a762d115a2d50c636d2e4a007716774e0e5fda32aa50`  
		Last Modified: Wed, 04 Oct 2017 22:02:22 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa88d0dbe5f3b6064a1cf64ae555c44769d89e428612b0fb19875dfb7116d89`  
		Last Modified: Wed, 04 Oct 2017 22:02:49 GMT  
		Size: 76.4 MB (76442700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab85760b4bd2472ef2fc2c2e4826f558409ccfa635c8b947afa623aba1423f`  
		Last Modified: Wed, 04 Oct 2017 22:02:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa44aa219fdc5f64f7564f5fbfb653dd4e1ef329b501778e049deb665d5e3ec8`  
		Last Modified: Wed, 04 Oct 2017 22:02:22 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-jessie`

```console
$ docker pull golang@sha256:e8ff3ea3c2666f85c2f7576914a3c15b9f71f7ab92507882b71f1b5a2c49c203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-jessie` - linux; amd64

```console
$ docker pull golang@sha256:f6e019e3aa1280d36f1e3376ff2fe60c63b836852e977dceaf8be4bc34767e9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e4acbfaba6fd5df1a0085e231915736ddb2dfe5825adeb0cea37f8390ab0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:4aefd741ae8ab8dea41126bdc039b62dbce3403a861fdafbf297f4458accab1f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815da5ad0f810896b80ca2fdbc0656669367b2c6b1d95f8f6ef16992a6262e33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; 386

```console
$ docker pull golang@sha256:6c6ec4d6630be7a768b48a808eaa960b6994b557c91198a62ab03ea22781fe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ab7b63623ed7c414e0a24d2e58973a96a5c004dac8a8f18a329ac1d615a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:1490cbe58d7bc43ef0ca731285ceab155cc1d1eda43ad107d4d2fcd73b5cac4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70047a85d87188bfa60827e1a6470d0b5f8311e3f9110c737d6d1491f15d173d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; s390x

```console
$ docker pull golang@sha256:59411ea45feeef251dac66f3d00b50089b7d8f773e59c5b243297a2c9b74c99b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240702940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6b541127f3255a2772d7da743576e185521cde0c7ffdf01da2ff97c1b3daa2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:ad77c6877b8b52a74a2cb38d9e64002e9bdff51bba4dc370c94bfc21e2715a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ba15fe034e2847aea7158212f4811f0653953ec818a2220531970d3dd27b48c7
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.1 MB (500069099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2220bc00f2e567bf06e4366fe5f13fe9c51eb7ed7fa8db300f9f1019d7c7f746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:26:05 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:29:01 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:29:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476c57236c80d40292e1a9ce2c1576984bf8aec992125d321cfc0d097883200c`  
		Last Modified: Wed, 11 Oct 2017 02:31:38 GMT  
		Size: 970.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed282622df418dbd3ee17721f90fb1b50690c4a050b5df0cf6801fa97bd255b5`  
		Last Modified: Wed, 11 Oct 2017 02:31:57 GMT  
		Size: 104.7 MB (104724333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28f9b78ec2c080c4ba0084a1af54c04f7e729435c46db0380a0fe4536018088`  
		Last Modified: Wed, 11 Oct 2017 02:31:39 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:8003d8eb134466b3360de1efcef7df0b21d268dbd0d966f215a2dae8749f8c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-onbuild` - linux; amd64

```console
$ docker pull golang@sha256:837a254e9ef1836c5e6931e019034d5acce9453ad2000993c2b07b18d02857ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290dcfa6bfcabd99c1480207a73407480aef070acb775c3cd3e19f78ec9015cf`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:47:52 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:48:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:48:06 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:48:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:48:08 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:48:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:54:42 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 05:54:43 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d718ab8b1b0dd1b6d37881be003269b86ac33397448c75464c929cf61ebfc1a`  
		Last Modified: Tue, 10 Oct 2017 06:07:24 GMT  
		Size: 60.9 MB (60879683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb169b668c010602e9887c1cdaa45ee58e8d046d0c02f6ba842f06742cfa40`  
		Last Modified: Tue, 10 Oct 2017 06:07:40 GMT  
		Size: 99.1 MB (99077213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4bf831cc47d45dcabe42a98011502c0d42a439861c866de423aa7baaaeb856`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e82858ddeb57e44b3255316ff3a8c41a09a986809ddc4cf0b515a7c5372c76a`  
		Last Modified: Tue, 10 Oct 2017 06:07:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172b7e031f38a106ae386bce6a4252ece61efcf345aad162a7ff2d3c6b798560`  
		Last Modified: Tue, 10 Oct 2017 06:08:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:c7740289a42376e55249c38590b63b757b8bb515392c1b24516c90a10eeffe5d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a96926147098e4655338c0f86acbe9f7ae8ef2ece09cc0f1e33b495c7e6383e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:11 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:50:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:50:25 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:50:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:50:27 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:50:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:50:43 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 00:50:43 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 00:50:44 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 00:50:44 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 00:50:44 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 00:50:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b47bc3c674cfa1d9e5f481ccd46536d49a0d543192de3750f0382f7c76f0a83`  
		Last Modified: Tue, 10 Oct 2017 00:52:59 GMT  
		Size: 43.9 MB (43916684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6ebf76c3e5f6d8507e20ed3b5411914e5d8ab539aa9940073884f64cbd4ad4`  
		Last Modified: Tue, 10 Oct 2017 00:53:17 GMT  
		Size: 85.7 MB (85700433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a618ff3168bd678aa1f123f951751f46972cf8ff9ab2b583be96ac0faf67757`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb2a1c76c6899dfad47960afd6fc6613ddf899ca02c06d3edf90c77ad7a6b33`  
		Last Modified: Tue, 10 Oct 2017 00:52:48 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a78af4e23ee0fa14cfa3580f49dad701a38e8c306a5a6087c624845b68662b9`  
		Last Modified: Tue, 10 Oct 2017 00:53:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; 386

```console
$ docker pull golang@sha256:78a52ee9b84f69e307e138a636d482191df13673cb7a5e68a1e0b4b92d62464b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265652353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f925ef5e30faf0e2092dec2319cf0531e48fcf15eb2cf9833fbc48d3263dad`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:43:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:44:44 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:44:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:44:53 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:44:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:44:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:44:55 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:44:55 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:48:37 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 03:48:37 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 03:48:37 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 03:48:37 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 03:48:38 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 03:48:38 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797d0ce68d59005c5e4731fd55b3cd27eee4aaf8af642e3fdf8f3ea64892da26`  
		Last Modified: Tue, 10 Oct 2017 03:58:45 GMT  
		Size: 60.6 MB (60600823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d323f4bca9e411b560a29559f3afbdfd7707c96afd6c9dcf043b89da3f344b0`  
		Last Modified: Tue, 10 Oct 2017 03:58:50 GMT  
		Size: 86.8 MB (86800634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10ae358d751f5015576ca78c92a9d3cb0bb3a23743d9479c07ec09f0c07c8c6`  
		Last Modified: Tue, 10 Oct 2017 03:58:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be6c4889fc9769d87e98a2e825207f2ddcc57b5baa67d73d7804efc0c6e2909`  
		Last Modified: Tue, 10 Oct 2017 03:58:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faedb586d3d4f211b66310086788b38c77c499a3734702f9880e520451af9ec5`  
		Last Modified: Tue, 10 Oct 2017 04:04:00 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:4fcf08cb1f37fe48760a878190dc44a5cd9cea77bc39c7fb4a43a302a48d0ba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246797771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478c7880f504dff686777e26631b276a5228369bad1a053e273bde009afec73a`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:58:34 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:58:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:59:02 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:59:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:59:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 08:59:33 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 08:59:36 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 08:59:38 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 08:59:41 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 08:59:43 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 08:59:46 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8135e46e479fdf0fe7f7c7ff8faeef703e18a7db1c616ca597f71710c6946`  
		Last Modified: Tue, 10 Oct 2017 09:02:13 GMT  
		Size: 48.7 MB (48721760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc69e936b7067f8431f1863b5106944bc483543b3ea762538da64cc83c9dfb6`  
		Last Modified: Tue, 10 Oct 2017 09:02:22 GMT  
		Size: 84.3 MB (84332400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2bb5b7e77697b2d83e6de3b33081edb0b42b8b826d835d5b9330e95eb6a2af`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffca192fe2e850877739d59973b066a76f7125191045af557dc4aa83d002f66`  
		Last Modified: Tue, 10 Oct 2017 09:02:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a98f9c36624ff2b94eea91a59e6c534f1a6b4f2a9e9b57b522c425350ebdddf`  
		Last Modified: Tue, 10 Oct 2017 09:02:47 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:00e3a1a25ca7b70e41ba7b36ad30382216403387fb245bb8c0d75d95e7c729fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240703074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f713d75478e45daf624e1f0bba5d510a39db9c99d07b4764a485f22b1cf67849`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:43 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:22:03 GMT
RUN mkdir -p /go/src/app
# Tue, 10 Oct 2017 00:22:03 GMT
WORKDIR /go/src/app
# Tue, 10 Oct 2017 00:22:03 GMT
CMD ["go-wrapper" "run"]
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD COPY . /go/src/app
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD RUN go-wrapper download
# Tue, 10 Oct 2017 00:22:04 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b7698eb130b90cc1faf1407958dabe99b9dce9c43951bb4d77e2252e6c4750`  
		Last Modified: Tue, 10 Oct 2017 00:24:29 GMT  
		Size: 42.0 MB (42036702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9154fc5f27bfa1e456d80a9d3cad3f79d386e7eb4cb65396eb18e095cc4cb67`  
		Last Modified: Tue, 10 Oct 2017 00:24:40 GMT  
		Size: 83.0 MB (83041877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5953464cda2eca15bae794f9488951f1a55936c594f2031d9a2d76c94d678c`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e4f968b4d298d7670ad199993126b435a470c081e1e76f75567d78ffda65e9`  
		Last Modified: Tue, 10 Oct 2017 00:24:05 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34da0c99658bdc9977cb30207eb4f66957d2e1ad6182b46963bbec7c37085b25`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:737f323858a314d1c88815c7346fec6a708eaa9cbd3ec83cfa3a26047d7ebbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-stretch` - linux; amd64

```console
$ docker pull golang@sha256:da2d92ef5d8115be0bd078c0858dd811fa140e96d15f1a498014d88130c1abcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.5 MB (267452028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76d3b8683c460a1e6a0ac53c7c40ff0e47035238743183b7cab43deae641252`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:40:48 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 05:41:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:41:14 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:41:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:41:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:41:15 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:41:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373d5b9bde59a68bd75f3f0500dbb4d3dcd45d256fffe540541d505159fabaa2`  
		Last Modified: Tue, 10 Oct 2017 05:59:44 GMT  
		Size: 99.1 MB (99076737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb75fbea17708049350d04a9983b1fb9529d7a667fad8672e2a02fdf4e22c74`  
		Last Modified: Tue, 10 Oct 2017 05:58:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8cbb59e7bdd466843b7f368a60f3c48a1d47b38ec856ce4e351c0a0e63a922`  
		Last Modified: Tue, 10 Oct 2017 05:58:23 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:f076130e642ee2b64ec3fdca5233d500df1e2113e43da3f6541e7045cf886ff9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233778352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce69d7b880937e38f496e229297eabb4a37756945cc9516d15b63bbd0cb7042`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:03 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:49:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:49:19 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:49:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:49:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:49:22 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:49:22 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d29e818ee33c548a4a63b64b9b25e5876974dbec431e95be5947a857d0c107b`  
		Last Modified: Tue, 10 Oct 2017 00:52:34 GMT  
		Size: 85.7 MB (85700208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae89d6fd5c4636f20ff59b2edc2d2c0203e44a1f60523ed7d640ab85dee608a`  
		Last Modified: Tue, 10 Oct 2017 00:52:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a535ec608d2cf0d5df8b5c994d921084595fba8192ee494b1ad038c8b8047d`  
		Last Modified: Tue, 10 Oct 2017 00:52:07 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; 386

```console
$ docker pull golang@sha256:1cc013041c15799f591057a39ce2b5f02fe57e5d67545d31241c72dbf7a7ebea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262204413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e8b3847adb7b0e918d825b022fb096d4344395537233ca6af70868d0f65fc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:39:19 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 03:39:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:39:31 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:39:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:39:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:39:33 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:39:33 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4eca861bf12c8c3b16c0b0dea95f55b2504c53d365ba5adddc6a2a0b87f9030`  
		Last Modified: Tue, 10 Oct 2017 03:57:59 GMT  
		Size: 86.8 MB (86801010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8e32efaf6467c4a164580f68e217cb53eb30aa5e538dcccb82a3d904e965ad`  
		Last Modified: Tue, 10 Oct 2017 03:57:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fa71d9b43f1f02a2d3595f6f615905ab332d6203cdb6c7145f47e66ade167`  
		Last Modified: Tue, 10 Oct 2017 03:57:37 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:596facdef6e0651c144b73c890a6591e425385a4be4e30d0b9edc543ea07489f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247359972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d19516e1f06749010c5e07b0bd7c4668afb65a450c37c82ce3fcd341b64aaa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:16 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 08:54:42 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:54:48 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:55:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:55:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:55:20 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:55:23 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0736db40a5ec54ea9322e4d83f0e5e297579bdd7484c421955b8eaba50dd46e7`  
		Last Modified: Tue, 10 Oct 2017 09:01:46 GMT  
		Size: 84.3 MB (84332702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376fe70611dee508a1be30ba7dd76095973830c452017fd1d9fa67e1c28defb`  
		Last Modified: Tue, 10 Oct 2017 09:01:26 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6c38d9898ed7b19d6f57c1f60ff6d71638d4a104678636047ef54316b9bf4c`  
		Last Modified: Tue, 10 Oct 2017 09:01:26 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; s390x

```console
$ docker pull golang@sha256:7e57755eb25ba7755eabb7a88eb79cdb062c6c5237da6f6c8cf4ac7894c4a9ef
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239588747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb362602b3922b09a3955063538f7b6daa948dc497eae1429825a397a85a178`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:21:07 GMT
ENV GOLANG_VERSION=1.8.4
# Tue, 10 Oct 2017 00:21:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:21:15 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:21:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:16 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8233a19ae55fd01ebe409bdf17eb13f6da697b61568a7e2e915e1bee20f9b5`  
		Last Modified: Tue, 10 Oct 2017 00:23:54 GMT  
		Size: 83.0 MB (83042084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2390508cbfbcd654b98c4b0cda453f3b8e434111ee268cbe04cd625d2439170b`  
		Last Modified: Tue, 10 Oct 2017 00:23:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322b80b18c6ce6d8afc8d7df48106db6085400e7cb20a847c165241934f72af`  
		Last Modified: Tue, 10 Oct 2017 00:23:23 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:f647e01213f4035747c459e006dc7cd07eb85851764bbcca17b519c11456daac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:4ec8b83d3e4987d57c2153d2a5c3912ef30b93a65cd6415091975f421501cd4f
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494762472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ca9104a236815409fe0b04ca16d80011805069c242c6ce999c807cb2c541b7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:22:38 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 11 Oct 2017 02:25:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:26:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269e5b1d4bd9bb840a0ee3e3cb5cb3ae195d36dc97ee6770c222bdc26423ca54`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b284e4ed0efad231292d7fc07be4b92730e992f1b02f41cdce3e7844573ca`  
		Last Modified: Wed, 11 Oct 2017 02:31:27 GMT  
		Size: 110.2 MB (110153946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6cbd07542501633f88539470a964b5b56ec9eb1fdedb59dee9937bf362752f`  
		Last Modified: Wed, 11 Oct 2017 02:31:02 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:e2be086d86eeb789460bcb48bc26e95c5b04a61fe8cf720ae1b2195d6f40edc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1`

```console
$ docker pull golang@sha256:e2be086d86eeb789460bcb48bc26e95c5b04a61fe8cf720ae1b2195d6f40edc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9.1` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-alpine`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-alpine3.6`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-nanoserver`

```console
$ docker pull golang@sha256:2ac4be02f2761dc7fddbbe5ffd81ec66650533e1771e868bd40773146b3cae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9.1-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ed90906834123a0b67c7b0d004ec930afec5258bfa5435253a666e84bb9d476e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.2 MB (505217194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3ffa63368698e5305defd9ab6411fffb234deb51ac12d4f8ec8bbed11ed6d5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:22:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:22:21 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc3eba636fdea6641f4ca121a4bab1b7782ff6e56d8ae4a403f98c9c1c604bf`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b71a60dc1f6cdbf40c57190b07b3229a2342958a9c0f4b4133b47cffebc2e9`  
		Last Modified: Wed, 11 Oct 2017 02:30:46 GMT  
		Size: 109.9 MB (109872440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e28bdc4112f5116a8da6af0f08018e185e366238bd50045cdfe98c762da38`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-stretch`

```console
$ docker pull golang@sha256:f070a46c4bbb1f8486a64d1529ffc24113a5605ccaf29855b5d1cf6ef03daae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-windowsservercore`

```console
$ docker pull golang@sha256:2c9ffa9e1bfdbf4ed34605462950f5b1137f33bdc2976e35e763b231a4b031e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9.1-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:2ac4be02f2761dc7fddbbe5ffd81ec66650533e1771e868bd40773146b3cae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ed90906834123a0b67c7b0d004ec930afec5258bfa5435253a666e84bb9d476e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.2 MB (505217194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3ffa63368698e5305defd9ab6411fffb234deb51ac12d4f8ec8bbed11ed6d5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:22:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:22:21 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc3eba636fdea6641f4ca121a4bab1b7782ff6e56d8ae4a403f98c9c1c604bf`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b71a60dc1f6cdbf40c57190b07b3229a2342958a9c0f4b4133b47cffebc2e9`  
		Last Modified: Wed, 11 Oct 2017 02:30:46 GMT  
		Size: 109.9 MB (109872440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e28bdc4112f5116a8da6af0f08018e185e366238bd50045cdfe98c762da38`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:f070a46c4bbb1f8486a64d1529ffc24113a5605ccaf29855b5d1cf6ef03daae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-stretch` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:2c9ffa9e1bfdbf4ed34605462950f5b1137f33bdc2976e35e763b231a4b031e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:2ac4be02f2761dc7fddbbe5ffd81ec66650533e1771e868bd40773146b3cae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ed90906834123a0b67c7b0d004ec930afec5258bfa5435253a666e84bb9d476e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.2 MB (505217194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3ffa63368698e5305defd9ab6411fffb234deb51ac12d4f8ec8bbed11ed6d5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:22:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:22:21 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc3eba636fdea6641f4ca121a4bab1b7782ff6e56d8ae4a403f98c9c1c604bf`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b71a60dc1f6cdbf40c57190b07b3229a2342958a9c0f4b4133b47cffebc2e9`  
		Last Modified: Wed, 11 Oct 2017 02:30:46 GMT  
		Size: 109.9 MB (109872440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e28bdc4112f5116a8da6af0f08018e185e366238bd50045cdfe98c762da38`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:f070a46c4bbb1f8486a64d1529ffc24113a5605ccaf29855b5d1cf6ef03daae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:2c9ffa9e1bfdbf4ed34605462950f5b1137f33bdc2976e35e763b231a4b031e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.6`

```console
$ docker pull golang@sha256:acbbbac5fdc7acda7f758b34807350ce691eb509ca64bd3c9f8af7a58438043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:3ee084496af132558e44d3fcb5bf5805a1cfe5a27f6618e6169a2b4f971ce23a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82907294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ed76bfbd2e3fea501d21639c0fa19cb0b934b55c8c2015c1d91438b89a7c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 01:36:41 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Oct 2017 21:37:17 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:17 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 04 Oct 2017 21:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:38:27 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:38:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:38:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:38:28 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:38:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27971ac2354948abc2d3feae117482b43cedca6349218adb31ff5c234312c4`  
		Last Modified: Thu, 14 Sep 2017 01:42:33 GMT  
		Size: 351.4 KB (351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3324d2049d6c56cad6d8c53180741d7a18d3622bb8dacd698898a3a8e246cb3`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1727e0a8940e1aea651d825ab7e2688a11a27986015c53debfa65fd4185666`  
		Last Modified: Wed, 04 Oct 2017 21:59:22 GMT  
		Size: 80.6 MB (80563564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905890d9f3269a6d623ac4e04856875f8d15e35e02ca7bdee02e81c7f733b168`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5323a74c388a0c87f2d597c82d327bca9f1537a2fd06b2937d8bf5a2eb3cd612`  
		Last Modified: Wed, 04 Oct 2017 21:58:54 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:e2be086d86eeb789460bcb48bc26e95c5b04a61fe8cf720ae1b2195d6f40edc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1770; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:2ac4be02f2761dc7fddbbe5ffd81ec66650533e1771e868bd40773146b3cae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:ed90906834123a0b67c7b0d004ec930afec5258bfa5435253a666e84bb9d476e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.2 MB (505217194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3ffa63368698e5305defd9ab6411fffb234deb51ac12d4f8ec8bbed11ed6d5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:18:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:18:44 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:19:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 02:19:10 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:22:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:22:21 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:357b0f27c7da8f9e64125f39f5d19f42647c49dadd423259e05be758449b1cd8`  
		Last Modified: Wed, 11 Oct 2017 02:30:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f048f62baf5e9fa1a0167d343b349326cc36680d42bef15983c9e4fb01ce8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bedc99243ee3bba8dd6ec1143526f84c1ee3b37fc8fcb99c30cd2fe4a61bde8`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 891.6 KB (891590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc3eba636fdea6641f4ca121a4bab1b7782ff6e56d8ae4a403f98c9c1c604bf`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b71a60dc1f6cdbf40c57190b07b3229a2342958a9c0f4b4133b47cffebc2e9`  
		Last Modified: Wed, 11 Oct 2017 02:30:46 GMT  
		Size: 109.9 MB (109872440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e28bdc4112f5116a8da6af0f08018e185e366238bd50045cdfe98c762da38`  
		Last Modified: Wed, 11 Oct 2017 02:30:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:f070a46c4bbb1f8486a64d1529ffc24113a5605ccaf29855b5d1cf6ef03daae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:0581832e16b932acb14c8b47eb2416a63159a1ef66e71273d0fda006df395bc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272584105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e596fc807e041ddff71670c3f25cd97ec1d2907713ec9f30ba7bcf8e2fd94e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:33:53 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 05:34:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 05:34:05 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 05:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 05:34:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 05:34:06 GMT
WORKDIR /go
# Tue, 10 Oct 2017 05:34:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a629d8a36eda59dea705f8bb9bbbba8abe39c9b88f06aa799f8626a75f713`  
		Last Modified: Tue, 10 Oct 2017 05:56:10 GMT  
		Size: 57.5 MB (57483084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431925b1aca503941b9943675d22913ea6c59bf73d5834c9c356530e657b6167`  
		Last Modified: Tue, 10 Oct 2017 05:56:57 GMT  
		Size: 104.2 MB (104208809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac2306b8d4cb8bc57f8ed61183066205a502570dd64eaa33d8dbe773d5d6f2f`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84664a55d30ae4dd5c2fa53ba163b9306470fe261366863775888c943edb617a`  
		Last Modified: Tue, 10 Oct 2017 05:55:54 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:41892ca61cad92491e66ecf03ffc8a08afabf17a5704682323c37da0958cd55b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237698008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cb73aeaf2177653b62651084c07da52960e31bedb02373541e3346c1527f7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:37 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:48:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:48:52 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:48:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:48:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:48:53 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:48:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab77a18cf0c57c8f30083938c457021a7748ab4829152b90964d54402c27c5b`  
		Last Modified: Tue, 10 Oct 2017 00:51:08 GMT  
		Size: 45.9 MB (45858209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458efa07e4f3a4ee42fd69c0131d758dc9426ef725c37a6e8785ec5c046fe539`  
		Last Modified: Tue, 10 Oct 2017 00:51:23 GMT  
		Size: 89.6 MB (89619869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b860a3467d305d51ed72a698e220cbff7986bfa30e8bf6a517b8af2acf722`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c85b39c2eb165d2b65892d0460808a69e65f07996b5678f947a245cb327f3`  
		Last Modified: Tue, 10 Oct 2017 00:50:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:69220260985202db73b57771e7fb31e0fbb88b3b3117a2004fbc469850fb533d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242453923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7657196b7560b4e03cfc74ebbcc2f2c6c6bbe98eb030baf2f13cd002af3ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:55:05 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 07:55:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 07:55:30 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 07:55:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:55:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 07:55:39 GMT
WORKDIR /go
# Tue, 10 Oct 2017 07:55:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe8c26975aa208b09b9e5dbc44249de7de83a510e21e5ae369c1b370951a566`  
		Last Modified: Tue, 10 Oct 2017 07:56:38 GMT  
		Size: 48.9 MB (48919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb47f9746d87f7f135a3f7c2b92508423387b01cb7a790e4abdcddab5138c66`  
		Last Modified: Tue, 10 Oct 2017 07:56:53 GMT  
		Size: 88.2 MB (88195724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49591a390f41535feec88cf444ae24fa7592102aee4a63d392086defb114193c`  
		Last Modified: Tue, 10 Oct 2017 07:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a9883fd227425c889f81d0f39fd6ab8c2ec380440e9293bf5069dc3cf31422`  
		Last Modified: Tue, 10 Oct 2017 07:56:14 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:55b3a46af3d467e32deaa7d1ae1a402b6648150e2b34a060f3d3cec99af96c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267272762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ae84feb5aa596c02d6b8be0ceb24b4faf3cd80c7ed32dbe742487eccce8fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:35:20 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 03:35:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 03:35:34 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 03:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 03:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 03:35:36 GMT
WORKDIR /go
# Tue, 10 Oct 2017 03:35:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46edea830d94bae27c8e1d5a3a64fa8c156a10ff74f7e8d8e7ab2a761c5fcbeb`  
		Last Modified: Tue, 10 Oct 2017 03:49:24 GMT  
		Size: 62.0 MB (62018949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5616cd9b6f21e0da1bdf84c2839f84e6309e3a829ad104a1f86f7c1b84b344`  
		Last Modified: Tue, 10 Oct 2017 03:49:33 GMT  
		Size: 91.9 MB (91869361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13be959723f19f5754370cb71b62ee5ae832fd74fe5e2f23691ad21051afe59`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2618a7feab273ff736816ac4b25895dca1aff5c7cecb31689eafc256ee98878d`  
		Last Modified: Tue, 10 Oct 2017 03:49:02 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8a49b0c25ebd7058846bee3cd2bc3fb39215cbaa1c7b109ccaed417c8169fcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250754631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabefc7bcb6e5afdede8ee18cb77051afadfb6b7a55e8faf4ecdc8041e693ed0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:52:46 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 08:53:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 08:53:27 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 08:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:53:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 08:53:54 GMT
WORKDIR /go
# Tue, 10 Oct 2017 08:54:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5237c5b6f6ba4b3e36ef6895e773db354dba7e12118959b2f4157548d9e7cc`  
		Last Modified: Tue, 10 Oct 2017 09:00:18 GMT  
		Size: 52.7 MB (52695345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795ec8adb6adf308691da8078f6c30f2efa753d2301416aa902fb0ba050be05a`  
		Last Modified: Tue, 10 Oct 2017 09:00:25 GMT  
		Size: 87.7 MB (87727361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385a10522779b9cab504d246e4d04f531a66dbcf4a981e88b8876a12926998d`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab6c135c81d85d26d93f7cc496ceeab5081caaef4e5185c7a24577427aafdcd`  
		Last Modified: Tue, 10 Oct 2017 09:00:04 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:573c8d2ebab156a166b38781d8d9ce3ad12653bfb84dc426a56a2552aec55463
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243910916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9694b3225175bb5bd65c5b31561520bef7cd48a2f1de8dab2372f8cc4e3183`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:20:50 GMT
ENV GOLANG_VERSION=1.9.1
# Tue, 10 Oct 2017 00:20:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 10 Oct 2017 00:20:59 GMT
ENV GOPATH=/go
# Tue, 10 Oct 2017 00:20:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:21:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 10 Oct 2017 00:21:00 GMT
WORKDIR /go
# Tue, 10 Oct 2017 00:21:00 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bc161c1582070194a16d3cd1be2b0d2f636da70057fb4a08ed54546aeb61`  
		Last Modified: Tue, 10 Oct 2017 00:22:35 GMT  
		Size: 45.8 MB (45799088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecca90de51580ae2a4948a07fe3fad281e90c5a2541c42f3d92f77bbd30f62e`  
		Last Modified: Tue, 10 Oct 2017 00:22:43 GMT  
		Size: 87.4 MB (87364254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49914ad3e69c25380819158da766a138ea486da20f772329b164ad25c02e1d`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7b1f3748cb41bea7d2f63c8365de540cb0c85bc14596cbfc8f3bde87d5cd21`  
		Last Modified: Tue, 10 Oct 2017 00:22:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:2c9ffa9e1bfdbf4ed34605462950f5b1137f33bdc2976e35e763b231a4b031e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:1e785e609d80733da0bb92e49f0da8f426b0d46d824613c743258fd3fc0c8214
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5499878356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be27825c3927200893a7fb330ca09218993df6e01a6e6d3c502a74e7b04f254f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 02:13:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 11 Oct 2017 02:13:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 11 Oct 2017 02:13:46 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 11 Oct 2017 02:13:49 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 11 Oct 2017 02:14:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:14:30 GMT
ENV GOPATH=C:\gopath
# Wed, 11 Oct 2017 02:14:50 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Oct 2017 02:14:53 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 11 Oct 2017 02:18:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 02:18:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4a4a55f0a7a519330ed6baac30552f1ad22317fdbd223ad1c64b08205beb3c`  
		Last Modified: Wed, 11 Oct 2017 02:29:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6da81fc3fdc03f85c7dbc9e5d6f3ae6ba32647a7c92fb429adef58e6a089ab`  
		Last Modified: Wed, 11 Oct 2017 02:29:31 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f53bd57f2f8e12c146c51d0b1eaa3bf885c24cc6bdb07d360ac8360542926a`  
		Last Modified: Wed, 11 Oct 2017 02:29:29 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464e79d41fe87f3ba1217ccb0b43f29edcf508181d315ed21169f823537655d`  
		Last Modified: Wed, 11 Oct 2017 02:29:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca61726a3b49a40fcf9a844d33dbdc7e81034bec12619a84c52fc97ceccbab6`  
		Last Modified: Wed, 11 Oct 2017 02:29:35 GMT  
		Size: 29.3 MB (29256219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150276e2b9026e99a8b28eb2b485e92dfae4aa2185cae068a1602bbdb0a253a`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd47365a14fbad61b4101a279981fad775d861ea9b6752b29eabb2c01036657f`  
		Last Modified: Wed, 11 Oct 2017 02:29:27 GMT  
		Size: 4.8 MB (4835258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783777af4bb1261fa7a21400e7a5e00c480e4a507fa0d021692ba4924b0012e`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d1834f1d799ebf56eee32be1a8113a2376b6020c80ad1f6eef7319969cdca`  
		Last Modified: Wed, 11 Oct 2017 02:30:02 GMT  
		Size: 115.3 MB (115269825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258d77b22dd5887d967be28a1b980de6242b373960da4fde74e570a12c4a5ca`  
		Last Modified: Wed, 11 Oct 2017 02:29:26 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
