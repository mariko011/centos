<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1`](#golang1)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8.5`](#golang185)
-	[`golang:1.8.5-alpine`](#golang185-alpine)
-	[`golang:1.8.5-alpine3.5`](#golang185-alpine35)
-	[`golang:1.8.5-alpine3.6`](#golang185-alpine36)
-	[`golang:1.8.5-jessie`](#golang185-jessie)
-	[`golang:1.8.5-nanoserver`](#golang185-nanoserver)
-	[`golang:1.8.5-onbuild`](#golang185-onbuild)
-	[`golang:1.8.5-stretch`](#golang185-stretch)
-	[`golang:1.8.5-windowsservercore`](#golang185-windowsservercore)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8-alpine3.5`](#golang18-alpine35)
-	[`golang:1.8-alpine3.6`](#golang18-alpine36)
-	[`golang:1.8-jessie`](#golang18-jessie)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.9`](#golang19)
-	[`golang:1.9.2`](#golang192)
-	[`golang:1.9.2-alpine`](#golang192-alpine)
-	[`golang:1.9.2-alpine3.6`](#golang192-alpine36)
-	[`golang:1.9.2-nanoserver`](#golang192-nanoserver)
-	[`golang:1.9.2-stretch`](#golang192-stretch)
-	[`golang:1.9.2-windowsservercore`](#golang192-windowsservercore)
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

## `golang:1.8.5`

**does not exist** (yet?)

## `golang:1.8.5-alpine`

**does not exist** (yet?)

## `golang:1.8.5-alpine3.5`

**does not exist** (yet?)

## `golang:1.8.5-alpine3.6`

**does not exist** (yet?)

## `golang:1.8.5-jessie`

**does not exist** (yet?)

## `golang:1.8.5-nanoserver`

**does not exist** (yet?)

## `golang:1.8.5-onbuild`

**does not exist** (yet?)

## `golang:1.8.5-stretch`

**does not exist** (yet?)

## `golang:1.8.5-windowsservercore`

**does not exist** (yet?)

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:5855c2e6edf2ff95f7c2c47a909b662e5289efa0618c1b2eb1145b652c61781c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

```console
$ docker pull golang@sha256:4ad10ae46f36d2c7ccb129ffcec2f2807c64086565adc2c795d4ccb9974d0dcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77953021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd199667310ac889ae0ca6578b4c4d06875c402d78f23f204083368830e58d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:29:05 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:29:09 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 01:29:10 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 01:30:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 01:30:15 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 01:30:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:30:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 01:30:16 GMT
WORKDIR /go
# Thu, 26 Oct 2017 01:30:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e9a3ee6271fb1a8d3c605752cf422dc4054c17d2d52fbfdaed1f307d357eef`  
		Last Modified: Thu, 26 Oct 2017 01:33:22 GMT  
		Size: 350.7 KB (350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d571f1e8818812e72a5ff743e2d6a6be0456acd1869609b1edd0744c74a1c6`  
		Last Modified: Thu, 26 Oct 2017 01:33:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f418b70253c8f1fbff2d2c9b3a95e76dafd38f4918e1988ae3c9aad7973c3ee`  
		Last Modified: Thu, 26 Oct 2017 01:33:39 GMT  
		Size: 75.6 MB (75630130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9277a35410c452d75cb53567d497a779c19c33f5f8d5f52a66da2a64f68b4c82`  
		Last Modified: Thu, 26 Oct 2017 01:33:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ded1f5fbcc3dd07824c3cee2dba80af84b3295f904724523fad8f513e4d291a`  
		Last Modified: Thu, 26 Oct 2017 01:33:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.5`

```console
$ docker pull golang@sha256:5855c2e6edf2ff95f7c2c47a909b662e5289efa0618c1b2eb1145b652c61781c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:4ad10ae46f36d2c7ccb129ffcec2f2807c64086565adc2c795d4ccb9974d0dcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77953021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd199667310ac889ae0ca6578b4c4d06875c402d78f23f204083368830e58d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:29:05 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:29:09 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 01:29:10 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 01:30:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 01:30:15 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 01:30:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:30:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 01:30:16 GMT
WORKDIR /go
# Thu, 26 Oct 2017 01:30:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e9a3ee6271fb1a8d3c605752cf422dc4054c17d2d52fbfdaed1f307d357eef`  
		Last Modified: Thu, 26 Oct 2017 01:33:22 GMT  
		Size: 350.7 KB (350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d571f1e8818812e72a5ff743e2d6a6be0456acd1869609b1edd0744c74a1c6`  
		Last Modified: Thu, 26 Oct 2017 01:33:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f418b70253c8f1fbff2d2c9b3a95e76dafd38f4918e1988ae3c9aad7973c3ee`  
		Last Modified: Thu, 26 Oct 2017 01:33:39 GMT  
		Size: 75.6 MB (75630130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9277a35410c452d75cb53567d497a779c19c33f5f8d5f52a66da2a64f68b4c82`  
		Last Modified: Thu, 26 Oct 2017 01:33:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ded1f5fbcc3dd07824c3cee2dba80af84b3295f904724523fad8f513e4d291a`  
		Last Modified: Thu, 26 Oct 2017 01:33:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.6`

```console
$ docker pull golang@sha256:385c62378d852d7f8d0f17a3997628ee0255bf17e784756bd66c7ffa05b36c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:c0f0c7a4f8551845dc2ba81a6c0909fd891d7fa4df9c0918a5477e55e7b04e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78385743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0173715d6e09df26eca8df0b6d610fac12ee94ebba7435222b04d2784f4bb7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:25:33 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 04:50:36 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:51:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:51:38 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:51:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:51:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:51:39 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:51:39 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cc382d13800dea855986a8121417c3f74f1ec5f8591ec01d9264ebad9a09d4`  
		Last Modified: Thu, 26 Oct 2017 04:54:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1392e8490c3b39c3bedc1b430feac5cad727995e84344810d148b8e4b3ba5544`  
		Last Modified: Thu, 26 Oct 2017 04:55:13 GMT  
		Size: 76.0 MB (76040722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0668135b432a3db7f65564f45ee2661f55fedbf4e59714ac5804d9e87c00615a`  
		Last Modified: Thu, 26 Oct 2017 04:54:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92ed18f34f40e3b9b8727e7013c1148c86b5d2a3f2ae16b83a614eafd854f19`  
		Last Modified: Thu, 26 Oct 2017 04:54:43 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2d89a9c508576bc5e185a6455a6325f94b24f15e87d8af4d28a37d63f8b82708
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77429751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de73b785d9221f77f85886c76b71e28c36c5fd967b408dad5cfd20a6e9181241`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:16:25 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 05:16:26 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:17:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:17:51 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:17:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:17:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:17:52 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:17:52 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6759e4c23b772330d3433461d700210710ccc655cd0db8ad8699ffe17aa1669b`  
		Last Modified: Thu, 26 Oct 2017 05:18:38 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aad260f1492a1e4f9c0f9018eca49734f3df5a7fe74b4494bee3f1fa8033dce`  
		Last Modified: Thu, 26 Oct 2017 05:19:02 GMT  
		Size: 75.1 MB (75108793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e686cb57059f2cbe45783de129e63c4889a5941ae71c4856f385ea1af1f94ce`  
		Last Modified: Thu, 26 Oct 2017 05:18:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3aed0154a85fee90e3d35270822edb7b4b20cd3956368c1fa11678f3127b16a`  
		Last Modified: Thu, 26 Oct 2017 05:18:37 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b83a24f982c28ab20e60fb9d9ed1a1d465547c053034af042c60188ea41e7b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76106736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5026d26f79a351421ffa525e6ee68208c648c350210a79728bc32ba88e0edb2d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:16:40 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 05:16:41 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:18:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:18:33 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:18:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:18:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:18:36 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:18:37 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9675baf0ccc9952f8e96821a07f9454e0cb1a8836631340f4820b7eef5b8c5a9`  
		Last Modified: Thu, 26 Oct 2017 05:22:15 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa4e4dbe9c3010eb9a9abde2f3ab23f598afb780ca06ac1811fe3b67c63b12`  
		Last Modified: Thu, 26 Oct 2017 05:22:46 GMT  
		Size: 73.8 MB (73837719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25feaf5768e076eb3a4eea905bcca807eb292e8456222c86233268999159aaa4`  
		Last Modified: Thu, 26 Oct 2017 05:22:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de479251076360528abe1c9bd8653ecf2c3ccbf0e7c273d272ea0c169e8f2e4`  
		Last Modified: Thu, 26 Oct 2017 05:22:16 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:d95699e1596068dbb6f1f64051e233692b59892b7b70092fc9ff2b1d9ed83015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77402133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89715c32a09ce971aa4abb4f12fbe6c965062c2beddf29b922f7a257602e62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:23:51 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 05:23:51 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:25:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:25:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:25:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:25:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:25:28 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:25:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f466f2302b77ee0a9261b2816f25397c95d84e8b8ae0a23f808651d6ae0ec3`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f00ebdd4de384e0729b56026a0fe362828fcc5588560cd6c6b5838bc8d833d`  
		Last Modified: Thu, 26 Oct 2017 05:30:19 GMT  
		Size: 75.0 MB (75001669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8c89130fe3b3456a785ce4540c480ecd72e7c3db21f39433be513fe768cdcc`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1ea0335623305c51a2fee2ac0c4f0d33829cbdd9bfc063cd09ca507d771575`  
		Last Modified: Thu, 26 Oct 2017 05:30:06 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:757e58934a8a27de9c07f6b1d3392030ee702942ef6731660248bf34a4a79c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75759849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7988fb7e3c83cfbbe7d85b1fba8ef8a16288a3234a34604c82a59bb96310f871`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:16:08 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 05:16:10 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:17:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:17:18 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:17:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:17:29 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:17:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37308a77fdd84a467e27bc927ba323426733c47884d5e8fd0c98472355778776`  
		Last Modified: Thu, 26 Oct 2017 05:19:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00331c39350d5eac7462a315c6d94bc3907614ec1741990b594a38d808411a9`  
		Last Modified: Thu, 26 Oct 2017 05:19:41 GMT  
		Size: 73.4 MB (73394205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2807b586f77ecb81b03eb404d313c94edcb1ee1c7b0df956169afcacf7e35e`  
		Last Modified: Thu, 26 Oct 2017 05:19:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc84bff8fdb71b57bb3b76c4c016cfcbda93f9360c82d3d9f4ab05cce4a4b3d`  
		Last Modified: Thu, 26 Oct 2017 05:19:21 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:2b092bc5bc4b7c750ecd29c82189f1ad85f292a867e7dcc54ed87956fce27a7c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78366993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f67b27b9623c2dc51fe3f4191f7031adaa1d896e1e2c3edc447c2541577b63f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:15:23 GMT
ENV GOLANG_VERSION=1.8.4
# Thu, 26 Oct 2017 05:15:23 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:13 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:14 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6caec0a0b1fdc5dee3ffc81524e586e59ced8369c32b1e7b4c2eff41d228718`  
		Last Modified: Thu, 26 Oct 2017 05:17:19 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca79dba7d32603cde6b554670f30dcc4e99af81cf899709aa241c2ae8f87248`  
		Last Modified: Thu, 26 Oct 2017 05:17:35 GMT  
		Size: 75.9 MB (75946249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee099ab69a63960cced10f38800e12c37a2063bc405474d1f90edb2aea9df259`  
		Last Modified: Thu, 26 Oct 2017 05:17:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c3aa9d07c5d7eeee98153b367edffb291e3f5eb33ee6492bddff68597e0b2`  
		Last Modified: Thu, 26 Oct 2017 05:17:19 GMT  
		Size: 1.4 KB (1354 bytes)  
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

## `golang:1.9.2`

**does not exist** (yet?)

## `golang:1.9.2-alpine`

**does not exist** (yet?)

## `golang:1.9.2-alpine3.6`

**does not exist** (yet?)

## `golang:1.9.2-nanoserver`

**does not exist** (yet?)

## `golang:1.9.2-stretch`

**does not exist** (yet?)

## `golang:1.9.2-windowsservercore`

**does not exist** (yet?)

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
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
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
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
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.6`

```console
$ docker pull golang@sha256:5d48fa92c2c67b5b75392f9b089bc470068752860bad5006f2699e094bd329de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:d382336abf37b67bc340a7fc65a8f6c2946c08840368a735c4a545c81e493d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82529001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8486fa9661f7c03974cac0d3bd1b52f54f878e421b600422bb7760a7aa20bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:24:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:24:15 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 04:46:35 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 04:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 04:48:46 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 04:48:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 04:50:12 GMT
WORKDIR /go
# Thu, 26 Oct 2017 04:50:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6af9a01e2d12ee532979e2dee3ea972521196e5367f4ce5bfd12c97d6de23c`  
		Last Modified: Thu, 26 Oct 2017 01:30:42 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f30f4bf52a071d9c9bba45de1df679e2db53bba0d95daa32846a7f4468af1a`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3e2ba77032b5a1021d9c03edc9296d99b9375b4f0cfc660ce57c725a162a96`  
		Last Modified: Thu, 26 Oct 2017 04:53:02 GMT  
		Size: 80.2 MB (80180298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bda59352a664ef551ec8697f5a01bbef1cfd332338145b8ab7f856df84369a8`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003065207e9dcbf860f181b525eb99e93c07317e4f4bc960d9711d8718d95185`  
		Last Modified: Thu, 26 Oct 2017 04:52:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:8b78d82c36a3706d5688095e2ae20a3bce9534e1714e8aeadc659792022f0901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80116307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e1a4fe63f065636958c029ba740b45b169fcbd6ebbc7f4d44c7c2f476849b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:56 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:56 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:56 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:09 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:10 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8f4f9908a44d5619a5cfbbe454a25792456b516e243518f2c54165a569857`  
		Last Modified: Thu, 26 Oct 2017 05:18:00 GMT  
		Size: 352.1 KB (352149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da32acb20c538becb857d61c49910b2218a7a5ee4d5ed28a17103985e80d95a`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2161181c29041bbb11818c64ad846dc1b1ff4587f7d4833ad572116d05dfd`  
		Last Modified: Thu, 26 Oct 2017 05:18:27 GMT  
		Size: 77.8 MB (77791669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07014d5a0df1b76a82e0adc51f96eaffbac10425a8bc9e17deb2783bcf84a337`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fdebe564e24336839776d586cc43b2bb1417a2599f1d5177a1d4632bd910d`  
		Last Modified: Thu, 26 Oct 2017 05:18:01 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0e49e314f61161d17aed29b0bc50eb20f6f303bf7bd589758fd5dddb9c7a7a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78647759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52d0ad4cce3658555f7669bd50b69512e446046588dd0d10008b442f8df605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:32 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:32 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:16:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:16:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:16:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:16:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:16:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:16:19 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdf227ee985f2696ce57eca29f66f1080927a84e3908e7e3e5c0c543a1db4c`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888070b5ff9a12c6b7ea81535146817754a67a721358053bb00ada29f7306e2`  
		Last Modified: Thu, 26 Oct 2017 05:19:35 GMT  
		Size: 76.4 MB (76375068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3086b02e75395409660b951f0c201f891390647bb196388d415690e5cf4c4`  
		Last Modified: Thu, 26 Oct 2017 05:19:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60162cd1ed4b170472dca7ed8bcdd487ba6c8c7c0a9533724e8f996dd16e1522`  
		Last Modified: Thu, 26 Oct 2017 05:19:03 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:5b43449b43228ea336aa2a3c55e9e16398efdb4b242b51fd7d0ff3c4818830ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81223488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff33eac3cefb498234e60fb3de1d03b7ad241c5d305a71a999583723e5e94b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:18:08 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:18:08 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:20:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:20:10 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:20:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:20:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:20:11 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:20:11 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced02ba5f9ca302a6d7a9f5cbbf7d7801152a7da04c47ca74bbf1a285b4d949d`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6a713923221a1c9519ca2232a3802c42b4735c4e9e7424d29f49093708844`  
		Last Modified: Thu, 26 Oct 2017 05:29:14 GMT  
		Size: 78.8 MB (78819341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62944621a907ad0dd5b6e1811b8b6398bb8b15d317a94a5f672b2c43a6bbc27b`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9017b20af9d42d62f11a7021e557ea0cad3245d7650c174b29b9d258d62d8`  
		Last Modified: Thu, 26 Oct 2017 05:28:53 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:f102bd2128cf1a4d59382e9a38ac02f221fd1c3c993e9f686cf261a64c6d2d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78231854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794f8d94c3fe1863b1c8a1c214484cea33d183db9792a078344a347ada1c32a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:12 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:14 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:32 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:42 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:43 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d792e48b379ed4ea6c3db9de079791b239350f9a614bfe51c1ebf95573ee9`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 4.8 KB (4817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55158214c26528a26d59a0b74b5e1f65d291043edc5fcf7bed0e0b01475b4da2`  
		Last Modified: Thu, 26 Oct 2017 05:18:30 GMT  
		Size: 75.9 MB (75862532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f75b228724e9997ba144aa698afce8383feed13569d6268a096a882e90cf22`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928f996021d95a800ceaeec5ae8f18ad07f57bd14a7bf84c96fc6991912c738`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:0d38b470297f0281d380319aebb2ec24b10ab14d83fc847de686b6be4aba0249
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82218431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8229d1bde00511e54e0e789c0889a7844f22522115059c23fb44fa52badc9414`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:14:09 GMT
ENV GOLANG_VERSION=1.9.1
# Thu, 26 Oct 2017 05:14:09 GMT
COPY multi:c8c38d7f3d703c4d2e337e2f278d2b4f16e9dd5e4ae20e242e3be205ad66f8bb in /go-alpine-patches/ 
# Thu, 26 Oct 2017 05:15:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 05:15:05 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 05:15:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 05:15:08 GMT
WORKDIR /go
# Thu, 26 Oct 2017 05:15:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa384598a297aba7b7dae44bc3040d0aabb7d4048dedd6c679e824e0c2a0d1`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6a30275191ec730a942e386203ceb5781fd0d9b7e669035d45180039c1df17`  
		Last Modified: Thu, 26 Oct 2017 05:16:49 GMT  
		Size: 79.8 MB (79794005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bc3bc69ba9dfd8c3306af95de0f7861c4ef187354f878ea341e7aa84668e2`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2c0463e3440b67649693debaf0c27489b2001b5941f2c17f6e43efa48952e`  
		Last Modified: Thu, 26 Oct 2017 05:16:31 GMT  
		Size: 1.4 KB (1356 bytes)  
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
