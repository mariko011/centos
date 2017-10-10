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
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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

## `golang:1.8`

```console
$ docker pull golang@sha256:1b8d7bfa8267c921335c7d677478f791aef960a3c4286d0533688c812ac1201f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:7294f2bed280f7b1e586176c4d7a57232c66ca89a1f3818c77937c394d96f61d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726480c614f64d66abf4e776c8d457176ce3e5ba287a10548b51ef99cf773ce1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
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

## `golang:1.8.4`

```console
$ docker pull golang@sha256:1b8d7bfa8267c921335c7d677478f791aef960a3c4286d0533688c812ac1201f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:7294f2bed280f7b1e586176c4d7a57232c66ca89a1f3818c77937c394d96f61d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726480c614f64d66abf4e776c8d457176ce3e5ba287a10548b51ef99cf773ce1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
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
$ docker pull golang@sha256:1b8d7bfa8267c921335c7d677478f791aef960a3c4286d0533688c812ac1201f
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
$ docker pull golang@sha256:7294f2bed280f7b1e586176c4d7a57232c66ca89a1f3818c77937c394d96f61d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726480c614f64d66abf4e776c8d457176ce3e5ba287a10548b51ef99cf773ce1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
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
$ docker pull golang@sha256:c8a3424a54e7b2be579a24c58127ce86794732c18c35101499fbcfc23f38c9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.8.4-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:8186b73a216f890ff059458ed697fe951d8f7f6032548626504a97bef93956ba
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 MB (498592063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b887caf7ecdfc2aed3b73ae0f0f6402e69fc54b59e5f3d13256b8259fc69c7d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:51:27 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:54:17 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:54:22 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55295625bfd774f24981438c9fdb2dc53effbf0ec1d050c50c7021a9dfa9593a`  
		Last Modified: Wed, 04 Oct 2017 21:56:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd883aa6c537f428ee5e07da21da43a7f4004ffa52dc275f8d0c36d263905e7`  
		Last Modified: Wed, 04 Oct 2017 21:57:09 GMT  
		Size: 104.6 MB (104619080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf27e6650ba3da4aa62f102e29155e9903a56be9e7db364d5e4f4b0ae30b467`  
		Last Modified: Wed, 04 Oct 2017 21:56:50 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.4-onbuild`

```console
$ docker pull golang@sha256:5f14457899de25f679615434fe787dfe227ad28c33b785ed9e8aba94a19332df
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
$ docker pull golang@sha256:45d240defef4f676f374ebb22387aab48afbab29947cf6332d327fd7ddb732d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6990e12ee0e9adaf18ce03ad837a46038b4dfd96c53f94622dab0e63346594c6`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:44:23 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:44:26 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:44:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:44:40 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:44:43 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:44:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626ed54b73c80c725f32980bc201a3d8839ace934b03d09219ff3cccaa36103c`  
		Last Modified: Wed, 04 Oct 2017 21:47:35 GMT  
		Size: 169.0 B  
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
$ docker pull golang@sha256:7a23f6ea89627cae1f81a47d1259daea1366c8b87ed497b2ebda15d2cf790ebd
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
$ docker pull golang@sha256:e99ff4eebe0a85b38912cb452df54c52a0acc98fa063956a52b3de5b82bfad07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247320870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f573cee7801e40d32b7cb0d1163330b232510404cb47d36ac9fe1e319a64fc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:21 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:42:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:42:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:42:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:42:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:42:38 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:42:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a9bd7e2e828df387ee0716a5ec8ae0a53094cfc160a59d100207993822013`  
		Last Modified: Wed, 04 Oct 2017 21:46:39 GMT  
		Size: 84.3 MB (84332601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de2cd46cf3f6fdda93216a1ab387deec22ff4063ca73cce6f9af79e8f982c59`  
		Last Modified: Wed, 04 Oct 2017 21:46:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001e02e6ca6da865f541055af28ef47b6148a7735d085c42270d4f278fff783b`  
		Last Modified: Wed, 04 Oct 2017 21:46:16 GMT  
		Size: 1.4 KB (1371 bytes)  
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
$ docker pull golang@sha256:555f687c4973969278e521df45c5449be3a43a2000128f0a1c0a5d2f4b31e6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.8.4-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:8c20bcf1db2d8dcd174a2d7c4d80570df5100fbbdf2e7e6b581873f4fbb30820
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5480094871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b08d0bef1746571bca2e99b69ce9964f9c392d3f4760a9e5c969ce121ac2cc8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:47:58 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:51:11 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:51:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6417db1e5db07fa87b603e2e0fd846f0ef646ba1d2df7d44ba5e5fc885f0894`  
		Last Modified: Wed, 04 Oct 2017 21:56:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b792412c28dd557fa52418cc72b75d352ec693281e4daefbe1b2bba8731645`  
		Last Modified: Wed, 04 Oct 2017 21:56:40 GMT  
		Size: 110.2 MB (110203934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217cf41d4f51e7c7fa187b658ea80f92bf59fd8160fa209c75b36de519b0e959`  
		Last Modified: Wed, 04 Oct 2017 21:56:20 GMT  
		Size: 1.4 KB (1375 bytes)  
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
$ docker pull golang@sha256:1b8d7bfa8267c921335c7d677478f791aef960a3c4286d0533688c812ac1201f
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
$ docker pull golang@sha256:7294f2bed280f7b1e586176c4d7a57232c66ca89a1f3818c77937c394d96f61d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726480c614f64d66abf4e776c8d457176ce3e5ba287a10548b51ef99cf773ce1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
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
$ docker pull golang@sha256:c8a3424a54e7b2be579a24c58127ce86794732c18c35101499fbcfc23f38c9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.8-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:8186b73a216f890ff059458ed697fe951d8f7f6032548626504a97bef93956ba
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 MB (498592063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b887caf7ecdfc2aed3b73ae0f0f6402e69fc54b59e5f3d13256b8259fc69c7d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:51:27 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:54:17 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:54:22 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55295625bfd774f24981438c9fdb2dc53effbf0ec1d050c50c7021a9dfa9593a`  
		Last Modified: Wed, 04 Oct 2017 21:56:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd883aa6c537f428ee5e07da21da43a7f4004ffa52dc275f8d0c36d263905e7`  
		Last Modified: Wed, 04 Oct 2017 21:57:09 GMT  
		Size: 104.6 MB (104619080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf27e6650ba3da4aa62f102e29155e9903a56be9e7db364d5e4f4b0ae30b467`  
		Last Modified: Wed, 04 Oct 2017 21:56:50 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:5f14457899de25f679615434fe787dfe227ad28c33b785ed9e8aba94a19332df
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
$ docker pull golang@sha256:45d240defef4f676f374ebb22387aab48afbab29947cf6332d327fd7ddb732d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246791863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6990e12ee0e9adaf18ce03ad837a46038b4dfd96c53f94622dab0e63346594c6`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:06 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:43 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:59 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:01 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:44:23 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:44:26 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:44:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:44:40 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:44:43 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:44:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa15938d4fa976fb4388d58529f8f4b3ef19d53ad5b97aeb54b9a4e7750afd`  
		Last Modified: Thu, 14 Sep 2017 23:04:58 GMT  
		Size: 48.7 MB (48720431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a9c27585202a305a7050fefb0a29aa923d475b72a9f97ffc3f5169c5be206`  
		Last Modified: Wed, 04 Oct 2017 21:47:13 GMT  
		Size: 84.3 MB (84332420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834f378ec31997be2c3bd7f1bdb8855eb6d37dea564979bc886e388fc8037a`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870e572139fff21af4e845e8f4b87ad7c5dd1619b5c8bde9588b51d6c42a8d79`  
		Last Modified: Wed, 04 Oct 2017 21:46:54 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626ed54b73c80c725f32980bc201a3d8839ace934b03d09219ff3cccaa36103c`  
		Last Modified: Wed, 04 Oct 2017 21:47:35 GMT  
		Size: 169.0 B  
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
$ docker pull golang@sha256:7a23f6ea89627cae1f81a47d1259daea1366c8b87ed497b2ebda15d2cf790ebd
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
$ docker pull golang@sha256:e99ff4eebe0a85b38912cb452df54c52a0acc98fa063956a52b3de5b82bfad07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247320870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f573cee7801e40d32b7cb0d1163330b232510404cb47d36ac9fe1e319a64fc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:21 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:42:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:42:15 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:42:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:42:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:42:38 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:42:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a9bd7e2e828df387ee0716a5ec8ae0a53094cfc160a59d100207993822013`  
		Last Modified: Wed, 04 Oct 2017 21:46:39 GMT  
		Size: 84.3 MB (84332601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de2cd46cf3f6fdda93216a1ab387deec22ff4063ca73cce6f9af79e8f982c59`  
		Last Modified: Wed, 04 Oct 2017 21:46:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001e02e6ca6da865f541055af28ef47b6148a7735d085c42270d4f278fff783b`  
		Last Modified: Wed, 04 Oct 2017 21:46:16 GMT  
		Size: 1.4 KB (1371 bytes)  
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
$ docker pull golang@sha256:555f687c4973969278e521df45c5449be3a43a2000128f0a1c0a5d2f4b31e6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.8-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:8c20bcf1db2d8dcd174a2d7c4d80570df5100fbbdf2e7e6b581873f4fbb30820
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5480094871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b08d0bef1746571bca2e99b69ce9964f9c392d3f4760a9e5c969ce121ac2cc8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:47:58 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:51:11 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2ddfea037fd5e2eeb0cb854c095f6e44aaec27e8bbf76dca9a11a88e3a49bbf7'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:51:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6417db1e5db07fa87b603e2e0fd846f0ef646ba1d2df7d44ba5e5fc885f0894`  
		Last Modified: Wed, 04 Oct 2017 21:56:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b792412c28dd557fa52418cc72b75d352ec693281e4daefbe1b2bba8731645`  
		Last Modified: Wed, 04 Oct 2017 21:56:40 GMT  
		Size: 110.2 MB (110203934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217cf41d4f51e7c7fa187b658ea80f92bf59fd8160fa209c75b36de519b0e959`  
		Last Modified: Wed, 04 Oct 2017 21:56:20 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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

## `golang:1.9.1`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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
$ docker pull golang@sha256:773486c056700a8ef8c221412b0a7effbb8921c15930544774060a71fb1099e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.9.1-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:30bb7707d3d2fa876e9f2289bf3a57aa4953f6ee767a94ec119fecfd2b2d7585
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503931799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cf5a5e7b3e1e850869d7c607543694acc29bc9fec5c3939ddcef3ec28b4b8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:44:31 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:47:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:47:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842679000dc5ba36e5290c81072d54b2e0876182eb4cece1960eb66a00ab3547`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d68f5e43f07c1c31bd9e0f8201bfe8ebd2b52950736311c25e3b4ee2edca2f`  
		Last Modified: Wed, 04 Oct 2017 21:56:02 GMT  
		Size: 110.0 MB (109958827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2a7c26d0791318eef6fbb8bb8e3e7cbf20904e47c055ddc34d5cff9fffc0d1`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.1-stretch`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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
$ docker pull golang@sha256:8c811f34a5349cc308a58510b3fe4936989bde420fec5742338f0b6db637f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.9.1-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:7d61123b9e82e5fd6417054436faf2e02a2954d1255998a9cfb8e4504587169d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5485210746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce5368aa6033bd85c827fa91ee0a7b5699b3bcf4bb37aa4c5178fa6b8939e5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:40:35 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:44:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e11e8f9ce50a4c3c189a5e7e9148f56040cc26b82fcbd8741c042a6d7a1805`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585c6ae00dc2309fb34d793d68935a495f3ef9f8a0e5c7b334340ad65cbc4b6`  
		Last Modified: Wed, 04 Oct 2017 21:55:16 GMT  
		Size: 115.3 MB (115319817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24855ca4c71d628da07656bd1c731ded560ad4b5dc9eb0f168bb1742ccb359bd`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:773486c056700a8ef8c221412b0a7effbb8921c15930544774060a71fb1099e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:30bb7707d3d2fa876e9f2289bf3a57aa4953f6ee767a94ec119fecfd2b2d7585
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503931799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cf5a5e7b3e1e850869d7c607543694acc29bc9fec5c3939ddcef3ec28b4b8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:44:31 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:47:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:47:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842679000dc5ba36e5290c81072d54b2e0876182eb4cece1960eb66a00ab3547`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d68f5e43f07c1c31bd9e0f8201bfe8ebd2b52950736311c25e3b4ee2edca2f`  
		Last Modified: Wed, 04 Oct 2017 21:56:02 GMT  
		Size: 110.0 MB (109958827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2a7c26d0791318eef6fbb8bb8e3e7cbf20904e47c055ddc34d5cff9fffc0d1`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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
$ docker pull golang@sha256:8c811f34a5349cc308a58510b3fe4936989bde420fec5742338f0b6db637f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:7d61123b9e82e5fd6417054436faf2e02a2954d1255998a9cfb8e4504587169d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5485210746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce5368aa6033bd85c827fa91ee0a7b5699b3bcf4bb37aa4c5178fa6b8939e5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:40:35 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:44:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e11e8f9ce50a4c3c189a5e7e9148f56040cc26b82fcbd8741c042a6d7a1805`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585c6ae00dc2309fb34d793d68935a495f3ef9f8a0e5c7b334340ad65cbc4b6`  
		Last Modified: Wed, 04 Oct 2017 21:55:16 GMT  
		Size: 115.3 MB (115319817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24855ca4c71d628da07656bd1c731ded560ad4b5dc9eb0f168bb1742ccb359bd`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:773486c056700a8ef8c221412b0a7effbb8921c15930544774060a71fb1099e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:30bb7707d3d2fa876e9f2289bf3a57aa4953f6ee767a94ec119fecfd2b2d7585
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503931799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cf5a5e7b3e1e850869d7c607543694acc29bc9fec5c3939ddcef3ec28b4b8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:44:31 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:47:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:47:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842679000dc5ba36e5290c81072d54b2e0876182eb4cece1960eb66a00ab3547`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d68f5e43f07c1c31bd9e0f8201bfe8ebd2b52950736311c25e3b4ee2edca2f`  
		Last Modified: Wed, 04 Oct 2017 21:56:02 GMT  
		Size: 110.0 MB (109958827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2a7c26d0791318eef6fbb8bb8e3e7cbf20904e47c055ddc34d5cff9fffc0d1`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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
$ docker pull golang@sha256:8c811f34a5349cc308a58510b3fe4936989bde420fec5742338f0b6db637f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:7d61123b9e82e5fd6417054436faf2e02a2954d1255998a9cfb8e4504587169d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5485210746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce5368aa6033bd85c827fa91ee0a7b5699b3bcf4bb37aa4c5178fa6b8939e5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:40:35 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:44:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e11e8f9ce50a4c3c189a5e7e9148f56040cc26b82fcbd8741c042a6d7a1805`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585c6ae00dc2309fb34d793d68935a495f3ef9f8a0e5c7b334340ad65cbc4b6`  
		Last Modified: Wed, 04 Oct 2017 21:55:16 GMT  
		Size: 115.3 MB (115319817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24855ca4c71d628da07656bd1c731ded560ad4b5dc9eb0f168bb1742ccb359bd`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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

## `golang:nanoserver`

```console
$ docker pull golang@sha256:773486c056700a8ef8c221412b0a7effbb8921c15930544774060a71fb1099e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:30bb7707d3d2fa876e9f2289bf3a57aa4953f6ee767a94ec119fecfd2b2d7585
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503931799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cf5a5e7b3e1e850869d7c607543694acc29bc9fec5c3939ddcef3ec28b4b8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:33:11 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:33:28 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 04 Oct 2017 21:44:31 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:47:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:47:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7189c751637a60058895cc2f83f7e36bb647830ef1d84f7eb051a48cb1b30a5`  
		Last Modified: Thu, 14 Sep 2017 23:45:22 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7fa03c5a848e64f5013024320fd3f70abe7b4d0824a75854cc7caa12bfdcc1`  
		Last Modified: Thu, 14 Sep 2017 23:45:23 GMT  
		Size: 826.7 KB (826718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842679000dc5ba36e5290c81072d54b2e0876182eb4cece1960eb66a00ab3547`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d68f5e43f07c1c31bd9e0f8201bfe8ebd2b52950736311c25e3b4ee2edca2f`  
		Last Modified: Wed, 04 Oct 2017 21:56:02 GMT  
		Size: 110.0 MB (109958827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2a7c26d0791318eef6fbb8bb8e3e7cbf20904e47c055ddc34d5cff9fffc0d1`  
		Last Modified: Wed, 04 Oct 2017 21:55:32 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:995cb45876ef28fe1b354ca70018f8b27d6667b4f325a71ca4f93a6707839fea
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
$ docker pull golang@sha256:77eb1088d5b4d23df4e81ec27fda41c8913f5ffc5a1007715293450900eacbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242414620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc925adbae48ff8e48af488d4100490d0dafceb340b3488295a13c3c81299d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:30 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47306255511e1664eb9fa7f298ddfceaf4e54582d3ac0aebeaf49340ac5c645e`  
		Last Modified: Fri, 15 Sep 2017 01:14:49 GMT  
		Size: 48.9 MB (48890579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a22b1409e8a532e5713e267c6539273611ac9fb5c312b9f53b2d1f4aba3f39`  
		Last Modified: Wed, 04 Oct 2017 21:41:44 GMT  
		Size: 88.2 MB (88195728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a82e90510b67595f67ab6e195e54ac89215392fd594e0613962afdbfda11be`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc1a48249221adcd165794dc5a72f6768865205b3f37b094d5705ebb9b21e5`  
		Last Modified: Wed, 04 Oct 2017 21:41:11 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:345491d2256be30cc0131067a29dd8873874b4c2f7684eae2f0535f5c1ec6753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250715647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b076e56b2dc44a16ea6df91637f939ec171d4ad012900b1344cbf033a6d4db79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:15 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:42 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:06 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e728256a298f89c4e2dee428d473c4b213ba7b187ee135cef73b539ad53f0`  
		Last Modified: Wed, 04 Oct 2017 21:45:33 GMT  
		Size: 87.7 MB (87727379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d53cfff5f7bb1c58138a08a9ebc89c9a8665aa7c7082e9a8b2a0d61156948`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51418be4724c7242a2545cd9896562609d917e48a1406f56d8ce1fe44d9ca5ff`  
		Last Modified: Wed, 04 Oct 2017 21:45:09 GMT  
		Size: 1.4 KB (1368 bytes)  
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
$ docker pull golang@sha256:8c811f34a5349cc308a58510b3fe4936989bde420fec5742338f0b6db637f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:7d61123b9e82e5fd6417054436faf2e02a2954d1255998a9cfb8e4504587169d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5485210746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce5368aa6033bd85c827fa91ee0a7b5699b3bcf4bb37aa4c5178fa6b8939e5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:40:35 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:44:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e11e8f9ce50a4c3c189a5e7e9148f56040cc26b82fcbd8741c042a6d7a1805`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585c6ae00dc2309fb34d793d68935a495f3ef9f8a0e5c7b334340ad65cbc4b6`  
		Last Modified: Wed, 04 Oct 2017 21:55:16 GMT  
		Size: 115.3 MB (115319817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24855ca4c71d628da07656bd1c731ded560ad4b5dc9eb0f168bb1742ccb359bd`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
