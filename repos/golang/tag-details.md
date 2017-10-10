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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:4bf5bea6fbbdeb04872b6e04b1ee1296ffaaf50dabc5691910cf729d20b8e53c
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
$ docker pull golang@sha256:e9bf2f1e2abdfc20da4257e2b1c8ca3513775580732fd7bf246f0775c94c3c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dad6dc70c6e0f5cdf9f9abd7d0c8d26b79a975e0a15fde51c6addc1da942d3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; arm variant v7

```console
$ docker pull golang@sha256:75db8f4f300367bf3a7eaf5493372e6437988a871a3a780ded5c6d6d45b4742e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba53330cea3d811b5d7383bbda04b0a5e948cb5450ff5b6d87f34457944ce04`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; 386

```console
$ docker pull golang@sha256:bd48311d3b2517698416d66e3f215e1de3693ab79d255aa3578b2391192df289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eab9bbac91ff36cabe9d9abd260a00097db1964cd338fec3dd1d4dd9b0fb07`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
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
$ docker pull golang@sha256:4bf5bea6fbbdeb04872b6e04b1ee1296ffaaf50dabc5691910cf729d20b8e53c
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
$ docker pull golang@sha256:e9bf2f1e2abdfc20da4257e2b1c8ca3513775580732fd7bf246f0775c94c3c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dad6dc70c6e0f5cdf9f9abd7d0c8d26b79a975e0a15fde51c6addc1da942d3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; arm variant v7

```console
$ docker pull golang@sha256:75db8f4f300367bf3a7eaf5493372e6437988a871a3a780ded5c6d6d45b4742e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba53330cea3d811b5d7383bbda04b0a5e948cb5450ff5b6d87f34457944ce04`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4` - linux; 386

```console
$ docker pull golang@sha256:bd48311d3b2517698416d66e3f215e1de3693ab79d255aa3578b2391192df289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eab9bbac91ff36cabe9d9abd260a00097db1964cd338fec3dd1d4dd9b0fb07`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
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
$ docker pull golang@sha256:4bf5bea6fbbdeb04872b6e04b1ee1296ffaaf50dabc5691910cf729d20b8e53c
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
$ docker pull golang@sha256:e9bf2f1e2abdfc20da4257e2b1c8ca3513775580732fd7bf246f0775c94c3c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dad6dc70c6e0f5cdf9f9abd7d0c8d26b79a975e0a15fde51c6addc1da942d3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:75db8f4f300367bf3a7eaf5493372e6437988a871a3a780ded5c6d6d45b4742e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba53330cea3d811b5d7383bbda04b0a5e948cb5450ff5b6d87f34457944ce04`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-jessie` - linux; 386

```console
$ docker pull golang@sha256:bd48311d3b2517698416d66e3f215e1de3693ab79d255aa3578b2391192df289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eab9bbac91ff36cabe9d9abd260a00097db1964cd338fec3dd1d4dd9b0fb07`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
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
$ docker pull golang@sha256:c589632c639eed55d94084af11691ac56419dcb32c503497ebdf6615c1687097
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
$ docker pull golang@sha256:34b0549c7a70db1356436b8f8d4c46da45c2962a98a49c287853724ae01888eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7b0fd453a6a57e39ee5c9e4cd8571d3d63e2f7e07ea08150ae1c5d4fee30fa`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:56:08 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:56:08 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:56:08 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:56:08 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:56:09 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:56:09 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993bb515bc6067e5a23573de7fdeebd2c3c33e5aa2edc9be7c9fd553eb9c35b1`  
		Last Modified: Wed, 04 Oct 2017 22:04:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:11804a2459833a7e51cbe33ad4a99874faa55d577b812a5e48ad74f9b7c4324a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb83e48747d175baba44b843069c04a72e583acf0cfdae16602a21f0e4fada5d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:41:39 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:41:40 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:41:41 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4c5f8ecae704dcf5e152171f1c1147e0eb7a5a63ca80372dbb571fc6bb866`  
		Last Modified: Wed, 04 Oct 2017 21:44:31 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-onbuild` - linux; 386

```console
$ docker pull golang@sha256:08d2fcf6aab134f8f7df7049bce4a3474dc98acae042dcf7a782c1dfdf212476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14fef848dd5194d0aaf82272c4ae638ac2c96113c4f9897fb9a2c5e56e6ff3b`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:45:16 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:45:16 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:45:16 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45b6509da52d2ccdea9b6684db180b021c60ff5cdb43de70eee0929c74697a4`  
		Last Modified: Wed, 04 Oct 2017 21:48:56 GMT  
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
$ docker pull golang@sha256:83f7deeaed1b4cd42173314018a463bb483b05afb37a244d105ccb619a00409e
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
$ docker pull golang@sha256:da958da501b64ceac1293a713e833619ea766c004a5313c6a8d56273fd195efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267409033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdad8d44672078f6015780c9e107ab3bc96e1fee771e66c6faf067af320532e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:19 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:29 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656ad2d7d1a474020a47db08ab49a89077cc5ca8d73f69c6df4fa283ce7d9d26`  
		Last Modified: Wed, 04 Oct 2017 22:00:55 GMT  
		Size: 99.1 MB (99076750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afc9e99dfa8f175084a2f3b478d1e2b32c7926d810cc59b991f84402311f4df`  
		Last Modified: Wed, 04 Oct 2017 22:00:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64087562f2a8c3844257f446a73c746bbc56474ac75d60381760ef6132f0302c`  
		Last Modified: Wed, 04 Oct 2017 22:00:21 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:edd94bd6902f521b4d07b012ad7fca32a4f5b213d77dd09c01635792a1489d84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235473143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a6c9e6ce37e87f93814d129408cba09640d798db8990a59274034f9d1ef48a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:03 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:04 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:04 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae43081f198ce8d19d9fded8f1e2f4b3f2c2ba662a86c503b7adfab4943052f8`  
		Last Modified: Wed, 04 Oct 2017 21:43:22 GMT  
		Size: 85.7 MB (85700162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debf305f8578d547ce64e0bde20832e9d7c7dd1b85125389f4ce2f3f43d40ce9`  
		Last Modified: Wed, 04 Oct 2017 21:42:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21fdfbdc36d439eb1e5aba7ed59c3bb08ac1bb627e42958f564466d39ecb33f`  
		Last Modified: Wed, 04 Oct 2017 21:42:56 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.4-stretch` - linux; 386

```console
$ docker pull golang@sha256:06884edc386a62d8af0064fecf635f280276f405e31f44f870f4e11649417f38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262159163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9348d8bb2121ac0239d62f7ba374ec9eeda531dcea340196a9f2ef48530e28b3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:44:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:49 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:51 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:51 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583a813b86711829cb5d0e82bbb168056051c4c821409367c8563534610d72ae`  
		Last Modified: Wed, 04 Oct 2017 21:47:55 GMT  
		Size: 86.8 MB (86801001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14389860d4d4d354452c7b4584b1f3da627af9f3a8eb85ca0414d2bc2f3dbd66`  
		Last Modified: Wed, 04 Oct 2017 21:47:36 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fbbab1ee94a1794700a0ddc24f40d071994b1a58e908c3a50cafd133324347`  
		Last Modified: Wed, 04 Oct 2017 21:47:36 GMT  
		Size: 1.4 KB (1367 bytes)  
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
$ docker pull golang@sha256:4bf5bea6fbbdeb04872b6e04b1ee1296ffaaf50dabc5691910cf729d20b8e53c
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
$ docker pull golang@sha256:e9bf2f1e2abdfc20da4257e2b1c8ca3513775580732fd7bf246f0775c94c3c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dad6dc70c6e0f5cdf9f9abd7d0c8d26b79a975e0a15fde51c6addc1da942d3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:75db8f4f300367bf3a7eaf5493372e6437988a871a3a780ded5c6d6d45b4742e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba53330cea3d811b5d7383bbda04b0a5e948cb5450ff5b6d87f34457944ce04`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; 386

```console
$ docker pull golang@sha256:bd48311d3b2517698416d66e3f215e1de3693ab79d255aa3578b2391192df289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eab9bbac91ff36cabe9d9abd260a00097db1964cd338fec3dd1d4dd9b0fb07`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
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
$ docker pull golang@sha256:c589632c639eed55d94084af11691ac56419dcb32c503497ebdf6615c1687097
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
$ docker pull golang@sha256:34b0549c7a70db1356436b8f8d4c46da45c2962a98a49c287853724ae01888eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275044511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7b0fd453a6a57e39ee5c9e4cd8571d3d63e2f7e07ea08150ae1c5d4fee30fa`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:52 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:54 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:56:08 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:56:08 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:56:08 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:56:08 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:56:09 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:56:09 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4531640cb0c4cdf08047810bd0587389b338d74e943d96e34affe7c326d5c6`  
		Last Modified: Thu, 14 Sep 2017 01:44:26 GMT  
		Size: 60.9 MB (60878590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f4eba7f67b72b051dfb5c35d3d62da1c1bfa3836b5428af4f1c20cc96342a`  
		Last Modified: Wed, 04 Oct 2017 22:01:45 GMT  
		Size: 99.1 MB (99077255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b21fe3af2c539895bc84b858a771fd03924d69be9849dbe5cb3d7250ab3c9`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4847de5c08c2a9ce40df093e54ea6aa916c21bda7b703e1bed9b0fd13df13b23`  
		Last Modified: Wed, 04 Oct 2017 22:01:18 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993bb515bc6067e5a23573de7fdeebd2c3c33e5aa2edc9be7c9fd553eb9c35b1`  
		Last Modified: Wed, 04 Oct 2017 22:04:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:11804a2459833a7e51cbe33ad4a99874faa55d577b812a5e48ad74f9b7c4324a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237807385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb83e48747d175baba44b843069c04a72e583acf0cfdae16602a21f0e4fada5d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:40:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:41:13 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:28 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:41:39 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:41:40 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:41:40 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:41:41 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a607bd01ffd678134d1281825ba8fafc069965446932fb3da991e8e6c2d3065d`  
		Last Modified: Wed, 27 Sep 2017 04:58:12 GMT  
		Size: 18.3 MB (18262468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5d06f07aeedfbd7dcf851db0e385147dc9b2256148e633d99a8ff9803f2b63`  
		Last Modified: Wed, 27 Sep 2017 04:58:31 GMT  
		Size: 41.2 MB (41239600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e565239fcc485429fb11785ff53bdddd3d77e063585ba2756a2a00160aa904c`  
		Last Modified: Wed, 27 Sep 2017 07:04:29 GMT  
		Size: 43.9 MB (43916639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afc83d5de6cd6f3a812df9c9f80a35fd91de79e8093e17269b35f3dac1d4ac`  
		Last Modified: Wed, 04 Oct 2017 21:44:03 GMT  
		Size: 85.7 MB (85700445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e074293ac88702f73d34db44902a05c0529fe91869e45b6c6c68f6c6594a1e`  
		Last Modified: Wed, 04 Oct 2017 21:43:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a8749e23bb983c6f5a13506072ce61193898567b7b973e291fc03dc672922`  
		Last Modified: Wed, 04 Oct 2017 21:43:38 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4c5f8ecae704dcf5e152171f1c1147e0eb7a5a63ca80372dbb571fc6bb866`  
		Last Modified: Wed, 04 Oct 2017 21:44:31 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; 386

```console
$ docker pull golang@sha256:08d2fcf6aab134f8f7df7049bce4a3474dc98acae042dcf7a782c1dfdf212476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265649243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14fef848dd5194d0aaf82272c4ae638ac2c96113c4f9897fb9a2c5e56e6ff3b`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:56 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:45:07 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:45:08 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 04 Oct 2017 21:45:16 GMT
RUN mkdir -p /go/src/app
# Wed, 04 Oct 2017 21:45:16 GMT
WORKDIR /go/src/app
# Wed, 04 Oct 2017 21:45:16 GMT
CMD ["go-wrapper" "run"]
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD COPY . /go/src/app
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD RUN go-wrapper download
# Wed, 04 Oct 2017 21:45:17 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47120d82446ea5fc84b2b542118def12100c5d4aa07aed9148cc72dc16af04`  
		Last Modified: Sat, 09 Sep 2017 14:46:15 GMT  
		Size: 60.6 MB (60598674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6b639b4f04c7fe7a144ea5cac156608c002c5c4656091feef7f34efec3b1b9`  
		Last Modified: Wed, 04 Oct 2017 21:48:29 GMT  
		Size: 86.8 MB (86800642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b320875348b72f40fb8d8098dea68b8e505f8bc5894a2def857a99be9ab0828`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02715454c7078ce4ef05a14f2fd30a6b3f6fa73ecdb38bf953fc3f943c90ff59`  
		Last Modified: Wed, 04 Oct 2017 21:48:14 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45b6509da52d2ccdea9b6684db180b021c60ff5cdb43de70eee0929c74697a4`  
		Last Modified: Wed, 04 Oct 2017 21:48:56 GMT  
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
$ docker pull golang@sha256:83f7deeaed1b4cd42173314018a463bb483b05afb37a244d105ccb619a00409e
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
$ docker pull golang@sha256:da958da501b64ceac1293a713e833619ea766c004a5313c6a8d56273fd195efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267409033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdad8d44672078f6015780c9e107ab3bc96e1fee771e66c6faf067af320532e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:43:19 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:43:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:43:29 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:43:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:43:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:43:30 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:43:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656ad2d7d1a474020a47db08ab49a89077cc5ca8d73f69c6df4fa283ce7d9d26`  
		Last Modified: Wed, 04 Oct 2017 22:00:55 GMT  
		Size: 99.1 MB (99076750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afc9e99dfa8f175084a2f3b478d1e2b32c7926d810cc59b991f84402311f4df`  
		Last Modified: Wed, 04 Oct 2017 22:00:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64087562f2a8c3844257f446a73c746bbc56474ac75d60381760ef6132f0302c`  
		Last Modified: Wed, 04 Oct 2017 22:00:21 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:edd94bd6902f521b4d07b012ad7fca32a4f5b213d77dd09c01635792a1489d84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235473143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a6c9e6ce37e87f93814d129408cba09640d798db8990a59274034f9d1ef48a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:50 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:41:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:41:03 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:41:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:41:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:41:04 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:41:04 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae43081f198ce8d19d9fded8f1e2f4b3f2c2ba662a86c503b7adfab4943052f8`  
		Last Modified: Wed, 04 Oct 2017 21:43:22 GMT  
		Size: 85.7 MB (85700162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debf305f8578d547ce64e0bde20832e9d7c7dd1b85125389f4ce2f3f43d40ce9`  
		Last Modified: Wed, 04 Oct 2017 21:42:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21fdfbdc36d439eb1e5aba7ed59c3bb08ac1bb627e42958f564466d39ecb33f`  
		Last Modified: Wed, 04 Oct 2017 21:42:56 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; 386

```console
$ docker pull golang@sha256:06884edc386a62d8af0064fecf635f280276f405e31f44f870f4e11649417f38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262159163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9348d8bb2121ac0239d62f7ba374ec9eeda531dcea340196a9f2ef48530e28b3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:41 GMT
ENV GOLANG_VERSION=1.8.4
# Wed, 04 Oct 2017 21:44:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0ef737a0aff9742af0f63ac13c97ce36f0bbc8b67385169e41e395f34170944f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='76329898bb9f2be0f86b07f05a6336818cb12f3a416ab3061aa0d5f2ea5c6ff0' ;; 		i386) goRelArch='linux-386'; goRelSha256='00354388d5f7d21b69c62361e73250d2633124e8599386f704f6dd676a2f82ac' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='0f043568d65fd8121af6b35a39f4f20d292a03372b6531e80b743ee0689eb717' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='aa998b7ac8882c549f7017d2e9722a3102cb9e6b92010baf5153a6dcf98205b1' ;; 		*) goRelArch='src'; goRelSha256='abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:49 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:51 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:51 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583a813b86711829cb5d0e82bbb168056051c4c821409367c8563534610d72ae`  
		Last Modified: Wed, 04 Oct 2017 21:47:55 GMT  
		Size: 86.8 MB (86801001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14389860d4d4d354452c7b4584b1f3da627af9f3a8eb85ca0414d2bc2f3dbd66`  
		Last Modified: Wed, 04 Oct 2017 21:47:36 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fbbab1ee94a1794700a0ddc24f40d071994b1a58e908c3a50cafd133324347`  
		Last Modified: Wed, 04 Oct 2017 21:47:36 GMT  
		Size: 1.4 KB (1367 bytes)  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
$ docker pull golang@sha256:a60917a3f09af879d1a6881b9277c8a07995876ca269de75cc3210fe24271111
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
$ docker pull golang@sha256:15eeb3e6980a5db6d8ac07081dbbc4d78f412e6e1deab0f8360e0119ffd678c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272541143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba10fd6d57619609722b489fffff8b344f08150f08f32398578594c533461cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:36:58 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:37:09 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:37:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:37:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:37:10 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:37:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116a752a7ea9528a31cb3c448846f087e38b853593023d37997b90744ea2641d`  
		Last Modified: Wed, 04 Oct 2017 21:57:29 GMT  
		Size: 104.2 MB (104208865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2534fc635706028ae7c835f375ca769bf8ac19b5844d1f714d67bf8811ade`  
		Last Modified: Wed, 04 Oct 2017 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857860b54ffc36cb3e1ff41a8a97a5c230bd93b218149d43e71c414d8022297d`  
		Last Modified: Wed, 04 Oct 2017 21:56:31 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:14c6e175d1ea09964b94f7f1a9e57c7a0638f8a4527daf5243b4dd03ece34fbd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239392829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedf9e5a76d9a3660959d730a284d5e9b87cadd20074cb9bec8165002a51c65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:40:25 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:40:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:40:40 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:40:42 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:40:42 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766e5d713998356c4a63fcbf0f4ab17824c9540d914365296ab19e25127147e1`  
		Last Modified: Wed, 27 Sep 2017 07:03:02 GMT  
		Size: 45.8 MB (45826635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e194ab7b2b206827066f2b33827bd5ca16edc3b6af0a27a578816685428ba`  
		Last Modified: Wed, 04 Oct 2017 21:42:17 GMT  
		Size: 89.6 MB (89619847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31cd771fcf0ef0fb6300045ba88f403252d699cd0a74a2967f5330350e75439`  
		Last Modified: Wed, 04 Oct 2017 21:41:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c94a29a0fce198596d208db9f46055a2efee83c74d71277a1e47a0b9391483`  
		Last Modified: Wed, 04 Oct 2017 21:41:50 GMT  
		Size: 1.4 KB (1370 bytes)  
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
$ docker pull golang@sha256:a8ac0b4d5bbae1c2ad36042b0c2b4511a7e5a688ab92a03eb04f4408bab7dfc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267227493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03383c6c7f0fb10c97580f184bca5fceac23a528c5677351e2b506871e77fe2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 21:44:22 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='07d81c6b6b4c2dcf1b5ef7c27aaebd3691cdb40548500941f92b221147c5d9c7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='65a0495a50c7c240a6487b1170939586332f6c8f3526abdbb9140935b3cff14c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d31ecae36efea5197af271ccce86ccc2baf10d2e04f20d0fb75556ecf0614dad' ;; 		i386) goRelArch='linux-386'; goRelSha256='2cea1ce9325cb40839601b566bc02b11c92b2942c21110b1b254c7e72e5581e7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='de57b6439ce9d4dd8b528599317a35fa1e09d6aa93b0a80e3945018658d963b8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='9adf03574549db82a72e0d721ef2178ec5e51d1ce4f309b271a2bca4dcf206f6' ;; 		*) goRelArch='src'; goRelSha256='a84afc9dc7d64fe0fa84d4d735e2ece23831a22117b50dafc75c1484f1cb550e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Oct 2017 21:44:34 GMT
ENV GOPATH=/go
# Wed, 04 Oct 2017 21:44:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Oct 2017 21:44:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Oct 2017 21:44:35 GMT
WORKDIR /go
# Wed, 04 Oct 2017 21:44:36 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9440477f50b8f195a543b94706b56a4069c154193bff164dd80e5eaa355923c1`  
		Last Modified: Wed, 04 Oct 2017 21:45:49 GMT  
		Size: 91.9 MB (91869329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe700cc74f76a6a98df9465b4d79eb80b4e03f6f39d2286d3eaf9afd4a70e9`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb08f5dfbffe4d1a59146d775545dae0627d3b0182b21b2392671b7297df3ee7`  
		Last Modified: Wed, 04 Oct 2017 21:45:27 GMT  
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
