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
$ docker pull golang@sha256:888d54349cd32a61ba70fc7e436ca7ddcd6205db1c301188f2a7138febe2103f
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:dfb79344ede518ece75ef9602434177ed68dac0dc1e97e9c7cd52457b3f6a20b
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

### `golang:1.8` - linux; amd64

```console
$ docker pull golang@sha256:d1aaeb60120be96b86022e0b75c468f88b8180ccf8001dfeb551791370a7ad12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef0d2260ca6fbc2a8625cdf155577432195d4aa70c225aa0a0bf677becd8c3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; arm variant v7

```console
$ docker pull golang@sha256:732e05a8c9f2a7680d2bc9556b65eee969f9302d59108f3b6cfa103d8402bdd4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66c81cbbfb5a8c52a439179f03dd17a1b88c5da5426636bf47c21fda272c8ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:398ae434e75c31f0334a7b23d994794bde2c783da2ebee2a10120a9cb47b255e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867b76f57eda4cb59e7999644e6906d0e5b1a652b01db5100851af35bf27c7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; 386

```console
$ docker pull golang@sha256:722b305196b2933ba19070bb58e0ff1b4e4d52ed1186e1174979caefa7713490
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9626e096cbc742e7643116ac6ffdf2d8b2c9188abb284cb5f7e1ed37f7e944`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; ppc64le

```console
$ docker pull golang@sha256:81c7cc28d586d1a17e1bb482365fe22bec694f8b6a4cdfcc6c8171b08bf78b89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246801864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf91b6986cf73db86c98f63272cc1bbfcf33ce35ea88d62021e9b715f25be9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; s390x

```console
$ docker pull golang@sha256:40950ea5c4f78c4c96c642dbf48195d2a9e6aba13b06dee2a42750be8b802323
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c279bd8a9d30649944168f8ddade5a3b69b17046307f56f6ffc5ae6df04e63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:139e99a72af617da26726d9995a8a3d0ec375b262eae7746235484238c6bcd5f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494233849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308104d242a23eaf79404e58f614de68702b87af0ec525127d4588f4b123d5ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:37:55 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:42:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954ac8698848fd16001a2a6a4261b0d2afb49c1bb64014ee0c3098e15404dd3c`  
		Last Modified: Wed, 01 Nov 2017 20:48:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cf52ea7864bd5048fc2c8bd312612b5d0e9aacd228d5a18357b4ee574c6bfc`  
		Last Modified: Wed, 01 Nov 2017 20:48:34 GMT  
		Size: 109.6 MB (109645687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8db6bdeae8190ab8cd0f1d9ad6448d69171c1c7f7cb6ef0dfe25a8dce0f079`  
		Last Modified: Wed, 01 Nov 2017 20:48:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5`

```console
$ docker pull golang@sha256:dfb79344ede518ece75ef9602434177ed68dac0dc1e97e9c7cd52457b3f6a20b
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

### `golang:1.8.5` - linux; amd64

```console
$ docker pull golang@sha256:d1aaeb60120be96b86022e0b75c468f88b8180ccf8001dfeb551791370a7ad12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef0d2260ca6fbc2a8625cdf155577432195d4aa70c225aa0a0bf677becd8c3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - linux; arm variant v7

```console
$ docker pull golang@sha256:732e05a8c9f2a7680d2bc9556b65eee969f9302d59108f3b6cfa103d8402bdd4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66c81cbbfb5a8c52a439179f03dd17a1b88c5da5426636bf47c21fda272c8ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:398ae434e75c31f0334a7b23d994794bde2c783da2ebee2a10120a9cb47b255e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867b76f57eda4cb59e7999644e6906d0e5b1a652b01db5100851af35bf27c7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - linux; 386

```console
$ docker pull golang@sha256:722b305196b2933ba19070bb58e0ff1b4e4d52ed1186e1174979caefa7713490
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9626e096cbc742e7643116ac6ffdf2d8b2c9188abb284cb5f7e1ed37f7e944`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - linux; ppc64le

```console
$ docker pull golang@sha256:81c7cc28d586d1a17e1bb482365fe22bec694f8b6a4cdfcc6c8171b08bf78b89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246801864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf91b6986cf73db86c98f63272cc1bbfcf33ce35ea88d62021e9b715f25be9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - linux; s390x

```console
$ docker pull golang@sha256:40950ea5c4f78c4c96c642dbf48195d2a9e6aba13b06dee2a42750be8b802323
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c279bd8a9d30649944168f8ddade5a3b69b17046307f56f6ffc5ae6df04e63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:139e99a72af617da26726d9995a8a3d0ec375b262eae7746235484238c6bcd5f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494233849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308104d242a23eaf79404e58f614de68702b87af0ec525127d4588f4b123d5ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:37:55 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:42:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954ac8698848fd16001a2a6a4261b0d2afb49c1bb64014ee0c3098e15404dd3c`  
		Last Modified: Wed, 01 Nov 2017 20:48:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cf52ea7864bd5048fc2c8bd312612b5d0e9aacd228d5a18357b4ee574c6bfc`  
		Last Modified: Wed, 01 Nov 2017 20:48:34 GMT  
		Size: 109.6 MB (109645687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8db6bdeae8190ab8cd0f1d9ad6448d69171c1c7f7cb6ef0dfe25a8dce0f079`  
		Last Modified: Wed, 01 Nov 2017 20:48:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-alpine`

```console
$ docker pull golang@sha256:a30fe1131f05f49fa9baaea382816cd3e8b8aec18a381c4007614eb15e39bfa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.5-alpine` - linux; amd64

```console
$ docker pull golang@sha256:a7bb13ac162287de415035e64d5fa12b050a61989fbf44a6ce7bfcd0e62fb38e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77962480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c018b9bfa95d84c8cbcf3b7ea3fee418c8f169006f9ed57c5b4c62513ab7149`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:59:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:59:49 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:59:49 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 23:00:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 23:00:57 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 23:00:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:00:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 23:00:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 23:00:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a718314f5bc4787e67db2aba078a515b6e8a8185d444981aa515b994ee0ef7`  
		Last Modified: Fri, 03 Nov 2017 23:04:12 GMT  
		Size: 350.7 KB (350680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6e8dec6679c4094e3f766ca1ef18b0eca380cd89426511bc802ede2bebfcc`  
		Last Modified: Fri, 03 Nov 2017 23:04:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0304c0a30dd9042fa75e4d8424085cc0654d135626e99c6ab278f7c084b2e713`  
		Last Modified: Fri, 03 Nov 2017 23:04:33 GMT  
		Size: 75.6 MB (75639594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d2a3aef5bb92a2643d7c427aa2576d927e44dc335758d1b75324b6b6a0b40f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eba9eea295280e8c08c2e322c253143ead94dc309d331c1afe4ff3e8a7e69f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-alpine3.5`

```console
$ docker pull golang@sha256:a30fe1131f05f49fa9baaea382816cd3e8b8aec18a381c4007614eb15e39bfa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.5-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:a7bb13ac162287de415035e64d5fa12b050a61989fbf44a6ce7bfcd0e62fb38e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77962480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c018b9bfa95d84c8cbcf3b7ea3fee418c8f169006f9ed57c5b4c62513ab7149`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:59:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:59:49 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:59:49 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 23:00:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 23:00:57 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 23:00:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:00:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 23:00:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 23:00:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a718314f5bc4787e67db2aba078a515b6e8a8185d444981aa515b994ee0ef7`  
		Last Modified: Fri, 03 Nov 2017 23:04:12 GMT  
		Size: 350.7 KB (350680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6e8dec6679c4094e3f766ca1ef18b0eca380cd89426511bc802ede2bebfcc`  
		Last Modified: Fri, 03 Nov 2017 23:04:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0304c0a30dd9042fa75e4d8424085cc0654d135626e99c6ab278f7c084b2e713`  
		Last Modified: Fri, 03 Nov 2017 23:04:33 GMT  
		Size: 75.6 MB (75639594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d2a3aef5bb92a2643d7c427aa2576d927e44dc335758d1b75324b6b6a0b40f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eba9eea295280e8c08c2e322c253143ead94dc309d331c1afe4ff3e8a7e69f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-alpine3.6`

```console
$ docker pull golang@sha256:3d55d52dd6c4a10ab213255ee7a34ca0361ad88b5c5100c72c7e617f524502b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.5-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:6901ae0adf74383a88ff915e44e363d6bc8556f86d885fe89ae8fc27136476af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78402987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad5a4ab24be318b0413d21bf9c6e8de1fc151bf8203b12d81fd70b0f644e81f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:58:37 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:58:37 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:59:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:59:39 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:59:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:59:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:59:40 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:59:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38424356ea724614e57ba53835da30499e95d56957bb6b542ecb37db18fd0a01`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1041ba270f9fbc7e63d7d0941614b555c3dd0e7f88a95c06ccffabbae4f258b`  
		Last Modified: Fri, 03 Nov 2017 23:03:59 GMT  
		Size: 76.1 MB (76057977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5584fd557aa14bf9a6eb8565c5b51b91f110c17516263a33a03df09ae8949b`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0828cd5062efecdddab243cb66c6ed3107311da2d2261dcda8946f3e012b35d`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:c1c18848c5916fa876fd336597cf908944801067684fe47e14b18162eabbb21a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77440798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946d3a9b4aec65aa4a60550bffd7986c0abff0c66e406c893bc08cf59117534`
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
# Fri, 27 Oct 2017 09:47:35 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 09:47:36 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:48:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:48:58 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:48:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:48:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:48:59 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:49:00 GMT
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
	-	`sha256:273abcd33aba6635204491da28d9988d119bf7e8c176dfe1a07083d7b8989a7c`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5596dd2bbbc23d9bcdf34a8985cadda1b273982ed5a3054769091466174d38c1`  
		Last Modified: Fri, 27 Oct 2017 09:50:24 GMT  
		Size: 75.1 MB (75119843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44570bfa67213d7551f43c529cd2bb2424ada6acd9648e4b89776628291805ec`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4129c799e24a82f25cebcf0498f5ca26dc3a5c204e3be122cf829493a3260b2b`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:625f2170b95fe62110d3f6c6e14f6ade2cd263e0465f524cae173cb4f6ec3280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76119539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62642bd297d1d784b0595dff1a947a8db178c7319a9864c508f641b3fe690df4`
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
# Thu, 26 Oct 2017 18:31:16 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 26 Oct 2017 18:31:17 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:33:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:33:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:33:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:33:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:33:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:33:20 GMT
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
	-	`sha256:d670121ecede0fe09dafd6803ca212f6ccad748180bdab2b66dba8d122910b3d`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8cd1d3a7fb8390211d35c42437cdd0f1585eb3fb6fbfde33ab20e87126d2c8`  
		Last Modified: Thu, 26 Oct 2017 18:38:50 GMT  
		Size: 73.9 MB (73850519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d6ecd801d0aea5139fbf0efb33f395a97879e07110fa4abe3e75c318111225`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e129fcc95cd30fef147632f0d2d635eda525425c06d416b2d9c73e61145a2285`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:cbcee10a9a997be8d01e9789c4930312958d9dd2a60e3fec3146647db85f5c85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77407699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c44dabd1ba66de4eb3d7030017dcb3d8f1074a1da506c914fab988704744a4c`
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
# Fri, 27 Oct 2017 05:29:03 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 05:29:03 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:30:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:30:38 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:30:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:30:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:30:39 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:30:39 GMT
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
	-	`sha256:de2f0b32691c1df3888ae00678cbed9c6381df90953c12fd21ce4fc5ceaf9760`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407673d06674919089e42055a4185087601c02a4cc0f6b1338db1e983057671c`  
		Last Modified: Fri, 27 Oct 2017 05:37:46 GMT  
		Size: 75.0 MB (75007241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c3f9e46afb239313ba83067351ff9d498f9c0c77dd06a995c65a3b6728fb`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998c29e84cf87e04a8a4ac5213891d6295de96ce0a4c1d2c2e43e1227bba95dd`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:bd0d158ed85d5de49562736fdbb0b3cf941adec0c776352a720d49694475900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75773579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c78178c8eaf2bc13ce2220e5f920967adee909e40ea585dcaa4d721aefcebc`
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
# Thu, 26 Oct 2017 15:55:39 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 26 Oct 2017 15:55:41 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 15:56:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 15:56:47 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 15:56:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 15:56:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 15:56:55 GMT
WORKDIR /go
# Thu, 26 Oct 2017 15:56:56 GMT
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
	-	`sha256:22576d249acf2ed069f86a203ea62c95abdff7d10f518d21bd7c878bf990fbde`  
		Last Modified: Thu, 26 Oct 2017 15:59:50 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da8362e98965c3d89abff80f4ac9b7415192aecb1d4a4bf98d5d75c83721c47`  
		Last Modified: Thu, 26 Oct 2017 16:00:13 GMT  
		Size: 73.4 MB (73407933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e741e10ab5f5647847b44c4ec711e91b8f5afc9a4d8ca6ad950b7330c63a9517`  
		Last Modified: Thu, 26 Oct 2017 15:59:50 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b361b58ce02c6793a80329ccb3cace7c1ace2a1daf720adafc07d65bccb95a`  
		Last Modified: Thu, 26 Oct 2017 15:59:49 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:83ad444103b2c524b7751f74aabfee0288d0ba51097ebb14fde1c8e589bad8a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78365104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5068645558ef29799584744dc65211569bfc8987e9617de12f27bccbfc143555`
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
# Fri, 27 Oct 2017 10:41:58 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 10:41:58 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:42:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:42:47 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:42:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:42:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:42:47 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:42:48 GMT
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
	-	`sha256:f0847ba32ad823aa2f2ae35ec41790b532720a1f5cf3fc6da5c6eaeeedcdae80`  
		Last Modified: Fri, 27 Oct 2017 10:45:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00507f694f691018c81696dac8b53bc56554e668ebcf2377fe82cbedf9b7acc4`  
		Last Modified: Fri, 27 Oct 2017 10:46:05 GMT  
		Size: 75.9 MB (75944358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5b39b7787d464f709dbba29bc1db7b0481e26e0adc30c3fe20113bb6754611`  
		Last Modified: Fri, 27 Oct 2017 10:45:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c75c945e8ac03e4f0d69b2206911c5ecddc3b913e06a39671031d911721c560`  
		Last Modified: Fri, 27 Oct 2017 10:45:53 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-jessie`

```console
$ docker pull golang@sha256:49d727e1f97bcc6b8fd86473f5b5d88a7a176dd82cc6ee05544963740d8e76d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.5-jessie` - linux; amd64

```console
$ docker pull golang@sha256:d1aaeb60120be96b86022e0b75c468f88b8180ccf8001dfeb551791370a7ad12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef0d2260ca6fbc2a8625cdf155577432195d4aa70c225aa0a0bf677becd8c3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:732e05a8c9f2a7680d2bc9556b65eee969f9302d59108f3b6cfa103d8402bdd4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66c81cbbfb5a8c52a439179f03dd17a1b88c5da5426636bf47c21fda272c8ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-jessie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:398ae434e75c31f0334a7b23d994794bde2c783da2ebee2a10120a9cb47b255e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867b76f57eda4cb59e7999644e6906d0e5b1a652b01db5100851af35bf27c7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-jessie` - linux; 386

```console
$ docker pull golang@sha256:722b305196b2933ba19070bb58e0ff1b4e4d52ed1186e1174979caefa7713490
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9626e096cbc742e7643116ac6ffdf2d8b2c9188abb284cb5f7e1ed37f7e944`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:81c7cc28d586d1a17e1bb482365fe22bec694f8b6a4cdfcc6c8171b08bf78b89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246801864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf91b6986cf73db86c98f63272cc1bbfcf33ce35ea88d62021e9b715f25be9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-jessie` - linux; s390x

```console
$ docker pull golang@sha256:40950ea5c4f78c4c96c642dbf48195d2a9e6aba13b06dee2a42750be8b802323
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c279bd8a9d30649944168f8ddade5a3b69b17046307f56f6ffc5ae6df04e63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-nanoserver`

```console
$ docker pull golang@sha256:4251eaf270b1b033657d774597a14572b1d1bd790e1f011efe6614cbebf399f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8.5-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:e6a0c54519f190c978a8b1e0c5f1cd5c56a88318acee338a2b10676099c13329
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496537896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e78985ed136d77128a20bc6ba1efd6bf7c2d191886e5899ef03d613cda67e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:42:37 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:46:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:46:23 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d10ac642e8eebb90834ef0fcb84345df47b3904a87bbb33100bbbdbb0635f6c`  
		Last Modified: Wed, 01 Nov 2017 20:48:48 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9134fe211a8c40dbef6a3f8d7fb4b7b32b2b7ea430b929cbca8be11c2b65b8`  
		Last Modified: Wed, 01 Nov 2017 20:51:51 GMT  
		Size: 101.2 MB (101180429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065df677fd3404adc226ea066463dbd5a8a23c2b102a5b8d6fe28b2d19096cf2`  
		Last Modified: Wed, 01 Nov 2017 20:48:49 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-onbuild`

```console
$ docker pull golang@sha256:ad129fac0b58484092a37ad57601145985a59ef1ea2240c9a787191578a89aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.5-onbuild` - linux; amd64

```console
$ docker pull golang@sha256:d02b03ff2665268176fcc8edd7b374e65a84bdb4fd5940f7656927dbf19614b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d04e5a964045d36de8ff5ada9df8537507fad938c6c5ec966c9fd4418cb104`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:05:43 GMT
RUN mkdir -p /go/src/app
# Sat, 04 Nov 2017 16:05:43 GMT
WORKDIR /go/src/app
# Sat, 04 Nov 2017 16:05:44 GMT
CMD ["go-wrapper" "run"]
# Sat, 04 Nov 2017 16:05:44 GMT
ONBUILD COPY . /go/src/app
# Sat, 04 Nov 2017 16:05:46 GMT
ONBUILD RUN go-wrapper download
# Sat, 04 Nov 2017 16:05:46 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae70eef892148799c2494073c5c5d4debb2dec85fa093daee1deae4bf834c75e`  
		Last Modified: Sat, 04 Nov 2017 16:07:44 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:016c8a222e4e2067fbc40543be68b4b3a104aef75d54f691fe984ad14a9f9998
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5de0000b5010ddb1ef09f044633f60d605d1a2ba0fc3032d3c7480024648df4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 01:25:18 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 01:25:19 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 01:25:19 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 01:25:19 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 01:25:20 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 01:25:20 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba159f2af7d0f6605adbe2a5038be1d922ad37b70d24db8d6f80a42c3d22c8`  
		Last Modified: Fri, 03 Nov 2017 01:28:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-onbuild` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:829892cd9ea15c383aeb1afef9519b8c5f961e8d01f4b63ddc9bd363f0e6f534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f99923644f98aa86fc49be954882ad7e4b7da1987c26d6aee089b5173d90d62`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 11:23:31 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 11:23:31 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 11:23:32 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 11:23:44 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 11:23:44 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 11:23:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12ce25b641fbf2bd9678a2e08459a5cbf3e202e983259a14df3d6040004a88`  
		Last Modified: Fri, 03 Nov 2017 11:28:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-onbuild` - linux; 386

```console
$ docker pull golang@sha256:4475b2d94272bd6168af0937da3ca82e0a2adf9dffd3dedc17e1edce5de63013
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d18cb60ad16df1fce036e8c80077d35f19fd5a861dd725897ec9cf2c9ec24e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 00:58:43 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 00:58:44 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 00:58:44 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea6cbfc4d40d12259939ebfc8aef12a88febbe91ab8f4f356c889c3a90fbd2b`  
		Last Modified: Fri, 03 Nov 2017 01:10:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:e2f208a0478bfef00fd044e63260e37823e4b918c0c9656dd0d36f2c072c10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246802031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b14b28642ba387f67f7ccd9daef0fcbb0eef6eda35a2e3283b5605a437e70c`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Thu, 02 Nov 2017 18:20:48 GMT
RUN mkdir -p /go/src/app
# Thu, 02 Nov 2017 18:20:49 GMT
WORKDIR /go/src/app
# Thu, 02 Nov 2017 18:20:51 GMT
CMD ["go-wrapper" "run"]
# Thu, 02 Nov 2017 18:20:53 GMT
ONBUILD COPY . /go/src/app
# Thu, 02 Nov 2017 18:20:55 GMT
ONBUILD RUN go-wrapper download
# Thu, 02 Nov 2017 18:20:56 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119ebc838685b0372becc422661932e320337a02ee886c7bed05dc487d0989f1`  
		Last Modified: Thu, 02 Nov 2017 18:23:36 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:c1b64666c8ee43d70a008c9535ef189116d65952a51110a87e0274ea218eafcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a828a7f8397803663380c1dbb586be210bbe850ba75b846d2f1e03a24aa3c910`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Thu, 02 Nov 2017 20:28:50 GMT
RUN mkdir -p /go/src/app
# Thu, 02 Nov 2017 20:28:50 GMT
WORKDIR /go/src/app
# Thu, 02 Nov 2017 20:28:51 GMT
CMD ["go-wrapper" "run"]
# Thu, 02 Nov 2017 20:28:51 GMT
ONBUILD COPY . /go/src/app
# Thu, 02 Nov 2017 20:28:52 GMT
ONBUILD RUN go-wrapper download
# Thu, 02 Nov 2017 20:28:52 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543d7c2199c35f3909f41090c86068a8ca8f582851be5ecc1bb7c27300109c43`  
		Last Modified: Thu, 02 Nov 2017 20:32:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-stretch`

```console
$ docker pull golang@sha256:29beeff2ded9e5c18d6d6c69fe92665bbc161e6c1873c2965937a83409557d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.5-stretch` - linux; amd64

```console
$ docker pull golang@sha256:72ad4a4426016aac7609a5f4c257eab551133bdde861991d3338228b915265af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267154184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdebdf1b58814aa63811e010d36f6b102152f9fb26f762333b5c02aafc2a562`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:52 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:01 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:02 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aac5b0b1354f447b8abafb38d109a96e60a66b8d3e4af87623ce9756292c07d`  
		Last Modified: Sat, 04 Nov 2017 16:06:55 GMT  
		Size: 99.1 MB (99077813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc036335faa8bd4ecc6151a7ff0f7de3522b296d180e9e3f5f05caa9d718f52`  
		Last Modified: Sat, 04 Nov 2017 16:06:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f81dfea6dd36e48c03494428b4b5e4e9664ede62b5eb6aed23909fa5bd5f27`  
		Last Modified: Sat, 04 Nov 2017 16:06:40 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:493f983fb400d1fdaa17fc77230e7950a61b85e7dcffa94d86150300a81429d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233481408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87656acb5e9d4a8e8a7db041f0169ab52ab82348d607530934467de702694e7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:23:36 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:23:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:51 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:54 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:55 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b3fa6ea42f7bfa7150f7df62bfebd6d38bdc0557c86f6c3b4fc1c88b7a445`  
		Last Modified: Fri, 03 Nov 2017 01:27:05 GMT  
		Size: 85.7 MB (85701128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e263b1fd725c42d7f4af79018dee46942ba4b36c6b5b8f5688d5a168e0608e`  
		Last Modified: Fri, 03 Nov 2017 01:26:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea0a2fa6d3856cf05419514230d72b6680b2e4365cb23b85db67479c3717d5f`  
		Last Modified: Fri, 03 Nov 2017 01:26:38 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f2bbab537a09a71e6e21b55f683cd24d10fea118aaa88e77263fe3bd31da3b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238781315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e8a46ce64ad9410c7f6112876c9b558cf4c275d3557bab493eff6d7ccebbe9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:20:37 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:20:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:54 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:58 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb808ab5b5c50d882f9312decf5434d3de7e1a5732622f3de1b6d4ec7aa3b508`  
		Last Modified: Fri, 03 Nov 2017 11:26:29 GMT  
		Size: 84.8 MB (84821187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683888bb2f998f9a522f04fec4daf4349748501a3d966a5da1201000799fc2ed`  
		Last Modified: Fri, 03 Nov 2017 11:26:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5e5434eb5ec92bbe3f8582090f943fe2cf3a850961219e25778b4e1c25c5`  
		Last Modified: Fri, 03 Nov 2017 11:26:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-stretch` - linux; 386

```console
$ docker pull golang@sha256:9ec0064f3f6547a762e83533fe9bc68eefa3e0a70e2ec8b50ebf5f282baccd3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261916391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3690785f4ce6b5a70346d3b6a08dcde3b25599f57172ff535b36959a3b3bc8da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:52:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:56 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:57 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:58 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d05ee4ee265951533f23ebff6c3822798458997e55fbeb83833cd20205541f`  
		Last Modified: Fri, 03 Nov 2017 01:04:29 GMT  
		Size: 86.8 MB (86810784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acc0ba613351a61e407bd0ab4cd45706ee313103bc3f0aead43070530f4c48f`  
		Last Modified: Fri, 03 Nov 2017 01:04:12 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c970ea3a2992eec9b728347bd6a31bebd99a93ea7eed198b26690c395902fd`  
		Last Modified: Fri, 03 Nov 2017 01:04:11 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d4be22a33d2243775514e75c81aba0d1722c2d604a5141fea02c27bd57ebcbac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247064375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9214197d7c4e3eaf97424f175751e82a4f51a09b1cc2cd47cd34ff78626e1af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:15:37 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:16:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:16:07 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:16:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:16:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:16:27 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:16:29 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cbc0efee574fd7551bcc1f04c9584d840cafe39d221168b5e8178ca9811dd`  
		Last Modified: Thu, 02 Nov 2017 18:22:35 GMT  
		Size: 84.3 MB (84337292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99134f3c86ecbc92180531debf9d7379b81bdc685a1b9c24c861cc0f9e91a2c5`  
		Last Modified: Thu, 02 Nov 2017 18:22:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135ee8426506488ec3e1900fb093554f874f099310a3390800fcb4b3653ee663`  
		Last Modified: Thu, 02 Nov 2017 18:22:14 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.5-stretch` - linux; s390x

```console
$ docker pull golang@sha256:8bf98bcf35af6c5c59afe34ccc3533bdf8118edfbf0076b642a410410b7aaca3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239300710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee088c4cb8bb9d2261d59595fc60b29caa3a5f59431709ebe383d8c0aeba42dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:26:08 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:26:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:26:37 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:26:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:26:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:26:41 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:26:42 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec09123f0512865c469929117fbd0ff7a71b28e77a1000d1bc2172c010078ed`  
		Last Modified: Thu, 02 Nov 2017 20:31:26 GMT  
		Size: 83.1 MB (83052905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4cda926c5c76b86002023d309b775040b6565e691f0baa0c852af1ac6c276`  
		Last Modified: Thu, 02 Nov 2017 20:30:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007077cd169da5fa7747e56ff7dd35a5877aa10c02e6ced909c63bdb188060de`  
		Last Modified: Thu, 02 Nov 2017 20:30:55 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.5-windowsservercore`

```console
$ docker pull golang@sha256:1f7ca35b5d39e7ca86e85d695f9e1efb5aef15d3cc7653df2ca4f18bf2a2e774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8.5-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:139e99a72af617da26726d9995a8a3d0ec375b262eae7746235484238c6bcd5f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494233849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308104d242a23eaf79404e58f614de68702b87af0ec525127d4588f4b123d5ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:37:55 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:42:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954ac8698848fd16001a2a6a4261b0d2afb49c1bb64014ee0c3098e15404dd3c`  
		Last Modified: Wed, 01 Nov 2017 20:48:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cf52ea7864bd5048fc2c8bd312612b5d0e9aacd228d5a18357b4ee574c6bfc`  
		Last Modified: Wed, 01 Nov 2017 20:48:34 GMT  
		Size: 109.6 MB (109645687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8db6bdeae8190ab8cd0f1d9ad6448d69171c1c7f7cb6ef0dfe25a8dce0f079`  
		Last Modified: Wed, 01 Nov 2017 20:48:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:a30fe1131f05f49fa9baaea382816cd3e8b8aec18a381c4007614eb15e39bfa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

```console
$ docker pull golang@sha256:a7bb13ac162287de415035e64d5fa12b050a61989fbf44a6ce7bfcd0e62fb38e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77962480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c018b9bfa95d84c8cbcf3b7ea3fee418c8f169006f9ed57c5b4c62513ab7149`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:59:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:59:49 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:59:49 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 23:00:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 23:00:57 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 23:00:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:00:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 23:00:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 23:00:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a718314f5bc4787e67db2aba078a515b6e8a8185d444981aa515b994ee0ef7`  
		Last Modified: Fri, 03 Nov 2017 23:04:12 GMT  
		Size: 350.7 KB (350680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6e8dec6679c4094e3f766ca1ef18b0eca380cd89426511bc802ede2bebfcc`  
		Last Modified: Fri, 03 Nov 2017 23:04:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0304c0a30dd9042fa75e4d8424085cc0654d135626e99c6ab278f7c084b2e713`  
		Last Modified: Fri, 03 Nov 2017 23:04:33 GMT  
		Size: 75.6 MB (75639594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d2a3aef5bb92a2643d7c427aa2576d927e44dc335758d1b75324b6b6a0b40f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eba9eea295280e8c08c2e322c253143ead94dc309d331c1afe4ff3e8a7e69f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.5`

```console
$ docker pull golang@sha256:a30fe1131f05f49fa9baaea382816cd3e8b8aec18a381c4007614eb15e39bfa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:a7bb13ac162287de415035e64d5fa12b050a61989fbf44a6ce7bfcd0e62fb38e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77962480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c018b9bfa95d84c8cbcf3b7ea3fee418c8f169006f9ed57c5b4c62513ab7149`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:59:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:59:49 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:59:49 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 23:00:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 23:00:57 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 23:00:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:00:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 23:00:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 23:00:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a718314f5bc4787e67db2aba078a515b6e8a8185d444981aa515b994ee0ef7`  
		Last Modified: Fri, 03 Nov 2017 23:04:12 GMT  
		Size: 350.7 KB (350680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6e8dec6679c4094e3f766ca1ef18b0eca380cd89426511bc802ede2bebfcc`  
		Last Modified: Fri, 03 Nov 2017 23:04:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0304c0a30dd9042fa75e4d8424085cc0654d135626e99c6ab278f7c084b2e713`  
		Last Modified: Fri, 03 Nov 2017 23:04:33 GMT  
		Size: 75.6 MB (75639594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d2a3aef5bb92a2643d7c427aa2576d927e44dc335758d1b75324b6b6a0b40f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8eba9eea295280e8c08c2e322c253143ead94dc309d331c1afe4ff3e8a7e69f`  
		Last Modified: Fri, 03 Nov 2017 23:04:13 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.6`

```console
$ docker pull golang@sha256:3d55d52dd6c4a10ab213255ee7a34ca0361ad88b5c5100c72c7e617f524502b7
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
$ docker pull golang@sha256:6901ae0adf74383a88ff915e44e363d6bc8556f86d885fe89ae8fc27136476af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78402987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad5a4ab24be318b0413d21bf9c6e8de1fc151bf8203b12d81fd70b0f644e81f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:58:37 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 22:58:37 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:59:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:59:39 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:59:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:59:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:59:40 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:59:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38424356ea724614e57ba53835da30499e95d56957bb6b542ecb37db18fd0a01`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1041ba270f9fbc7e63d7d0941614b555c3dd0e7f88a95c06ccffabbae4f258b`  
		Last Modified: Fri, 03 Nov 2017 23:03:59 GMT  
		Size: 76.1 MB (76057977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5584fd557aa14bf9a6eb8565c5b51b91f110c17516263a33a03df09ae8949b`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0828cd5062efecdddab243cb66c6ed3107311da2d2261dcda8946f3e012b35d`  
		Last Modified: Fri, 03 Nov 2017 23:03:39 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:c1c18848c5916fa876fd336597cf908944801067684fe47e14b18162eabbb21a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77440798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946d3a9b4aec65aa4a60550bffd7986c0abff0c66e406c893bc08cf59117534`
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
# Fri, 27 Oct 2017 09:47:35 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 09:47:36 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:48:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:48:58 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:48:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:48:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:48:59 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:49:00 GMT
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
	-	`sha256:273abcd33aba6635204491da28d9988d119bf7e8c176dfe1a07083d7b8989a7c`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5596dd2bbbc23d9bcdf34a8985cadda1b273982ed5a3054769091466174d38c1`  
		Last Modified: Fri, 27 Oct 2017 09:50:24 GMT  
		Size: 75.1 MB (75119843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44570bfa67213d7551f43c529cd2bb2424ada6acd9648e4b89776628291805ec`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4129c799e24a82f25cebcf0498f5ca26dc3a5c204e3be122cf829493a3260b2b`  
		Last Modified: Fri, 27 Oct 2017 09:49:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:625f2170b95fe62110d3f6c6e14f6ade2cd263e0465f524cae173cb4f6ec3280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76119539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62642bd297d1d784b0595dff1a947a8db178c7319a9864c508f641b3fe690df4`
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
# Thu, 26 Oct 2017 18:31:16 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 26 Oct 2017 18:31:17 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:33:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:33:16 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:33:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:33:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:33:19 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:33:20 GMT
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
	-	`sha256:d670121ecede0fe09dafd6803ca212f6ccad748180bdab2b66dba8d122910b3d`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8cd1d3a7fb8390211d35c42437cdd0f1585eb3fb6fbfde33ab20e87126d2c8`  
		Last Modified: Thu, 26 Oct 2017 18:38:50 GMT  
		Size: 73.9 MB (73850519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d6ecd801d0aea5139fbf0efb33f395a97879e07110fa4abe3e75c318111225`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e129fcc95cd30fef147632f0d2d635eda525425c06d416b2d9c73e61145a2285`  
		Last Modified: Thu, 26 Oct 2017 18:38:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:cbcee10a9a997be8d01e9789c4930312958d9dd2a60e3fec3146647db85f5c85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77407699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c44dabd1ba66de4eb3d7030017dcb3d8f1074a1da506c914fab988704744a4c`
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
# Fri, 27 Oct 2017 05:29:03 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 05:29:03 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:30:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:30:38 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:30:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:30:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:30:39 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:30:39 GMT
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
	-	`sha256:de2f0b32691c1df3888ae00678cbed9c6381df90953c12fd21ce4fc5ceaf9760`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407673d06674919089e42055a4185087601c02a4cc0f6b1338db1e983057671c`  
		Last Modified: Fri, 27 Oct 2017 05:37:46 GMT  
		Size: 75.0 MB (75007241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c3f9e46afb239313ba83067351ff9d498f9c0c77dd06a995c65a3b6728fb`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998c29e84cf87e04a8a4ac5213891d6295de96ce0a4c1d2c2e43e1227bba95dd`  
		Last Modified: Fri, 27 Oct 2017 05:37:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:bd0d158ed85d5de49562736fdbb0b3cf941adec0c776352a720d49694475900c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75773579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c78178c8eaf2bc13ce2220e5f920967adee909e40ea585dcaa4d721aefcebc`
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
# Thu, 26 Oct 2017 15:55:39 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 26 Oct 2017 15:55:41 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Thu, 26 Oct 2017 15:56:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 15:56:47 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 15:56:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 15:56:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 15:56:55 GMT
WORKDIR /go
# Thu, 26 Oct 2017 15:56:56 GMT
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
	-	`sha256:22576d249acf2ed069f86a203ea62c95abdff7d10f518d21bd7c878bf990fbde`  
		Last Modified: Thu, 26 Oct 2017 15:59:50 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da8362e98965c3d89abff80f4ac9b7415192aecb1d4a4bf98d5d75c83721c47`  
		Last Modified: Thu, 26 Oct 2017 16:00:13 GMT  
		Size: 73.4 MB (73407933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e741e10ab5f5647847b44c4ec711e91b8f5afc9a4d8ca6ad950b7330c63a9517`  
		Last Modified: Thu, 26 Oct 2017 15:59:50 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b361b58ce02c6793a80329ccb3cace7c1ace2a1daf720adafc07d65bccb95a`  
		Last Modified: Thu, 26 Oct 2017 15:59:49 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:83ad444103b2c524b7751f74aabfee0288d0ba51097ebb14fde1c8e589bad8a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78365104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5068645558ef29799584744dc65211569bfc8987e9617de12f27bccbfc143555`
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
# Fri, 27 Oct 2017 10:41:58 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 27 Oct 2017 10:41:58 GMT
COPY multi:d7b274ade433370ae938101ea7d0398337dc97ed09ceabd46e8eb2a7c48a204d in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:42:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:42:47 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:42:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:42:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:42:47 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:42:48 GMT
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
	-	`sha256:f0847ba32ad823aa2f2ae35ec41790b532720a1f5cf3fc6da5c6eaeeedcdae80`  
		Last Modified: Fri, 27 Oct 2017 10:45:49 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00507f694f691018c81696dac8b53bc56554e668ebcf2377fe82cbedf9b7acc4`  
		Last Modified: Fri, 27 Oct 2017 10:46:05 GMT  
		Size: 75.9 MB (75944358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5b39b7787d464f709dbba29bc1db7b0481e26e0adc30c3fe20113bb6754611`  
		Last Modified: Fri, 27 Oct 2017 10:45:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c75c945e8ac03e4f0d69b2206911c5ecddc3b913e06a39671031d911721c560`  
		Last Modified: Fri, 27 Oct 2017 10:45:53 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-jessie`

```console
$ docker pull golang@sha256:49d727e1f97bcc6b8fd86473f5b5d88a7a176dd82cc6ee05544963740d8e76d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-jessie` - linux; amd64

```console
$ docker pull golang@sha256:d1aaeb60120be96b86022e0b75c468f88b8180ccf8001dfeb551791370a7ad12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef0d2260ca6fbc2a8625cdf155577432195d4aa70c225aa0a0bf677becd8c3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:732e05a8c9f2a7680d2bc9556b65eee969f9302d59108f3b6cfa103d8402bdd4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66c81cbbfb5a8c52a439179f03dd17a1b88c5da5426636bf47c21fda272c8ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:398ae434e75c31f0334a7b23d994794bde2c783da2ebee2a10120a9cb47b255e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867b76f57eda4cb59e7999644e6906d0e5b1a652b01db5100851af35bf27c7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; 386

```console
$ docker pull golang@sha256:722b305196b2933ba19070bb58e0ff1b4e4d52ed1186e1174979caefa7713490
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9626e096cbc742e7643116ac6ffdf2d8b2c9188abb284cb5f7e1ed37f7e944`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:81c7cc28d586d1a17e1bb482365fe22bec694f8b6a4cdfcc6c8171b08bf78b89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246801864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cf91b6986cf73db86c98f63272cc1bbfcf33ce35ea88d62021e9b715f25be9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; s390x

```console
$ docker pull golang@sha256:40950ea5c4f78c4c96c642dbf48195d2a9e6aba13b06dee2a42750be8b802323
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c279bd8a9d30649944168f8ddade5a3b69b17046307f56f6ffc5ae6df04e63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:4251eaf270b1b033657d774597a14572b1d1bd790e1f011efe6614cbebf399f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:e6a0c54519f190c978a8b1e0c5f1cd5c56a88318acee338a2b10676099c13329
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496537896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e78985ed136d77128a20bc6ba1efd6bf7c2d191886e5899ef03d613cda67e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:42:37 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:46:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:46:23 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d10ac642e8eebb90834ef0fcb84345df47b3904a87bbb33100bbbdbb0635f6c`  
		Last Modified: Wed, 01 Nov 2017 20:48:48 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9134fe211a8c40dbef6a3f8d7fb4b7b32b2b7ea430b929cbca8be11c2b65b8`  
		Last Modified: Wed, 01 Nov 2017 20:51:51 GMT  
		Size: 101.2 MB (101180429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065df677fd3404adc226ea066463dbd5a8a23c2b102a5b8d6fe28b2d19096cf2`  
		Last Modified: Wed, 01 Nov 2017 20:48:49 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:ad129fac0b58484092a37ad57601145985a59ef1ea2240c9a787191578a89aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-onbuild` - linux; amd64

```console
$ docker pull golang@sha256:d02b03ff2665268176fcc8edd7b374e65a84bdb4fd5940f7656927dbf19614b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275046629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d04e5a964045d36de8ff5ada9df8537507fad938c6c5ec966c9fd4418cb104`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:05:24 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:33 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:33 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:05:43 GMT
RUN mkdir -p /go/src/app
# Sat, 04 Nov 2017 16:05:43 GMT
WORKDIR /go/src/app
# Sat, 04 Nov 2017 16:05:44 GMT
CMD ["go-wrapper" "run"]
# Sat, 04 Nov 2017 16:05:44 GMT
ONBUILD COPY . /go/src/app
# Sat, 04 Nov 2017 16:05:46 GMT
ONBUILD RUN go-wrapper download
# Sat, 04 Nov 2017 16:05:46 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca33291b6d1b4601ba846a5054f796284a6c4979e6d70c8e182001c52140c90`  
		Last Modified: Sat, 04 Nov 2017 16:07:19 GMT  
		Size: 60.9 MB (60879363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee79ff315308a36b605d4ab63cd258c535f603e5f96143d6e7db5fea730e148`  
		Last Modified: Sat, 04 Nov 2017 16:07:27 GMT  
		Size: 99.1 MB (99077631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4877a39ec8e335b04cb9c01f25f9650a4ce8cc92b401d0c4e27c4cc71c1e20c`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4367dbb93212314dbbe6b134c8e9935d436ff04770a4ec9beabf9adf9ceab0`  
		Last Modified: Sat, 04 Nov 2017 16:07:08 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae70eef892148799c2494073c5c5d4debb2dec85fa093daee1deae4bf834c75e`  
		Last Modified: Sat, 04 Nov 2017 16:07:44 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:016c8a222e4e2067fbc40543be68b4b3a104aef75d54f691fe984ad14a9f9998
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236272698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5de0000b5010ddb1ef09f044633f60d605d1a2ba0fc3032d3c7480024648df4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:24:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:25:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:25:03 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:25:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:25:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:25:06 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:25:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 01:25:18 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 01:25:19 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 01:25:19 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 01:25:19 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 01:25:20 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 01:25:20 GMT
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
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902df7e6b6282bdc62276d927a658289fea9c2a6c8a1d6e03c82860718dc31b7`  
		Last Modified: Fri, 03 Nov 2017 01:27:36 GMT  
		Size: 43.9 MB (43916299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8733aa1251ec598bae1298d51d9d6571010502e217df5fd09c0de7c7967fa1d8`  
		Last Modified: Fri, 03 Nov 2017 01:27:51 GMT  
		Size: 85.7 MB (85701239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfa34bd257b399374568510a18a22e7790d47acd0e4a1d93bcf2e2577a7072`  
		Last Modified: Fri, 03 Nov 2017 01:27:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dbd05e2851ec66b7555ce2297cf7fa019b61b52005037a7c32badedb1052f`  
		Last Modified: Fri, 03 Nov 2017 01:27:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba159f2af7d0f6605adbe2a5038be1d922ad37b70d24db8d6f80a42c3d22c8`  
		Last Modified: Fri, 03 Nov 2017 01:28:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:829892cd9ea15c383aeb1afef9519b8c5f961e8d01f4b63ddc9bd363f0e6f534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f99923644f98aa86fc49be954882ad7e4b7da1987c26d6aee089b5173d90d62`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:22:13 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:22:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:22:40 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:22:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:22:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:22:53 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:22:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 11:23:31 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 11:23:31 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 11:23:32 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 11:23:44 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 11:23:44 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 11:23:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2cfcac34a7536fa6a9d51bee943c59e520707704be19f03ebbacc6306ed0c2`  
		Last Modified: Fri, 03 Nov 2017 11:27:30 GMT  
		Size: 44.2 MB (44220520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d1274626a6e03742131674b9bfb5eb3bd6cad86faf776a231908941f58087`  
		Last Modified: Fri, 03 Nov 2017 11:27:47 GMT  
		Size: 84.8 MB (84821173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d94a6d5179c1cdf4566708ceadf7605a8faa3109ed0681bbedcaed2b463cd3`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f02ff537d7232b2874f9e8648935024adc28ea9e904c071cf366e4f3596eb0`  
		Last Modified: Fri, 03 Nov 2017 11:27:16 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12ce25b641fbf2bd9678a2e08459a5cbf3e202e983259a14df3d6040004a88`  
		Last Modified: Fri, 03 Nov 2017 11:28:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; 386

```console
$ docker pull golang@sha256:4475b2d94272bd6168af0937da3ca82e0a2adf9dffd3dedc17e1edce5de63013
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265664407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d18cb60ad16df1fce036e8c80077d35f19fd5a861dd725897ec9cf2c9ec24e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:54:23 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:54:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:54:32 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:54:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:54:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:54:33 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:54:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 03 Nov 2017 00:58:43 GMT
RUN mkdir -p /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
WORKDIR /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
CMD ["go-wrapper" "run"]
# Fri, 03 Nov 2017 00:58:44 GMT
ONBUILD COPY . /go/src/app
# Fri, 03 Nov 2017 00:58:44 GMT
ONBUILD RUN go-wrapper download
# Fri, 03 Nov 2017 00:58:44 GMT
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
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4458b578d032d27707f6da5c182f80baa8609c166749228ad0b2ec6e36a20`  
		Last Modified: Fri, 03 Nov 2017 01:05:03 GMT  
		Size: 60.6 MB (60602834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698b4ff9490d8b788eefefbaf808231923ebe4caa586e1ea63a340f9fc04d935`  
		Last Modified: Fri, 03 Nov 2017 01:05:11 GMT  
		Size: 86.8 MB (86810733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839284330eba9b61ab82761d9d9533ecbb2d537be428484ddd80d33b7417b06d`  
		Last Modified: Fri, 03 Nov 2017 01:04:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf8dea19c5faaf59764a7d16458c8ae6eabe50da588053fb6ddec3c866fdc4b`  
		Last Modified: Fri, 03 Nov 2017 01:04:51 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea6cbfc4d40d12259939ebfc8aef12a88febbe91ab8f4f356c889c3a90fbd2b`  
		Last Modified: Fri, 03 Nov 2017 01:10:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:e2f208a0478bfef00fd044e63260e37823e4b918c0c9656dd0d36f2c072c10ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246802031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b14b28642ba387f67f7ccd9daef0fcbb0eef6eda35a2e3283b5605a437e70c`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:19:51 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:20:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:20:14 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:20:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:20:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:20:22 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:20:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Thu, 02 Nov 2017 18:20:48 GMT
RUN mkdir -p /go/src/app
# Thu, 02 Nov 2017 18:20:49 GMT
WORKDIR /go/src/app
# Thu, 02 Nov 2017 18:20:51 GMT
CMD ["go-wrapper" "run"]
# Thu, 02 Nov 2017 18:20:53 GMT
ONBUILD COPY . /go/src/app
# Thu, 02 Nov 2017 18:20:55 GMT
ONBUILD RUN go-wrapper download
# Thu, 02 Nov 2017 18:20:56 GMT
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
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21908395a586b1c0e5181b3d4c8b0dcc069b0f7b008ea8ea3dee2a6d5fe1bf70`  
		Last Modified: Thu, 02 Nov 2017 18:23:08 GMT  
		Size: 48.7 MB (48721429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd675fc391fff04d3c3d89368b1a8ffdfb4a5b3df8b0bd6902fcfe2dd02d946`  
		Last Modified: Thu, 02 Nov 2017 18:23:17 GMT  
		Size: 84.3 MB (84337419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44ff42dfc93709e41c6d1beafabc1c39ad1810cd36332a38e095f9256851ce3`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9de713917cf453e10fb3ab7f8dd2d3acec59d4ab8c1abd5558cb1fd4e53d4`  
		Last Modified: Thu, 02 Nov 2017 18:22:54 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119ebc838685b0372becc422661932e320337a02ee886c7bed05dc487d0989f1`  
		Last Modified: Thu, 02 Nov 2017 18:23:36 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:c1b64666c8ee43d70a008c9535ef189116d65952a51110a87e0274ea218eafcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240714343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a828a7f8397803663380c1dbb586be210bbe850ba75b846d2f1e03a24aa3c910`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:27:45 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:28:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:28:19 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:28:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:28:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:28:24 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:28:25 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Thu, 02 Nov 2017 20:28:50 GMT
RUN mkdir -p /go/src/app
# Thu, 02 Nov 2017 20:28:50 GMT
WORKDIR /go/src/app
# Thu, 02 Nov 2017 20:28:51 GMT
CMD ["go-wrapper" "run"]
# Thu, 02 Nov 2017 20:28:51 GMT
ONBUILD COPY . /go/src/app
# Thu, 02 Nov 2017 20:28:52 GMT
ONBUILD RUN go-wrapper download
# Thu, 02 Nov 2017 20:28:52 GMT
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
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cefd22de96565c54d43d292e204f5e77f28f10c772ac40489b9a237add29ef1`  
		Last Modified: Thu, 02 Nov 2017 20:32:12 GMT  
		Size: 42.0 MB (42036832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0f670840ba8d8963e34015d9fbbf0007879e8d0e08e67a90653747b2fd212`  
		Last Modified: Thu, 02 Nov 2017 20:32:33 GMT  
		Size: 83.1 MB (83052907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4c0257cae79fa7014ef66fd9539f3aa0bfd5e11741b73d88f21e9e32a9f35`  
		Last Modified: Thu, 02 Nov 2017 20:31:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b1902ab3c404156f12160a0686c93e2737be7239e143db3a71b82d09c0d67`  
		Last Modified: Thu, 02 Nov 2017 20:31:51 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543d7c2199c35f3909f41090c86068a8ca8f582851be5ecc1bb7c27300109c43`  
		Last Modified: Thu, 02 Nov 2017 20:32:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:29beeff2ded9e5c18d6d6c69fe92665bbc161e6c1873c2965937a83409557d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8-stretch` - linux; amd64

```console
$ docker pull golang@sha256:72ad4a4426016aac7609a5f4c257eab551133bdde861991d3338228b915265af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267154184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdebdf1b58814aa63811e010d36f6b102152f9fb26f762333b5c02aafc2a562`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:52 GMT
ENV GOLANG_VERSION=1.8.5
# Sat, 04 Nov 2017 16:05:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:05:01 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:05:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:05:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:05:02 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:05:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aac5b0b1354f447b8abafb38d109a96e60a66b8d3e4af87623ce9756292c07d`  
		Last Modified: Sat, 04 Nov 2017 16:06:55 GMT  
		Size: 99.1 MB (99077813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc036335faa8bd4ecc6151a7ff0f7de3522b296d180e9e3f5f05caa9d718f52`  
		Last Modified: Sat, 04 Nov 2017 16:06:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f81dfea6dd36e48c03494428b4b5e4e9664ede62b5eb6aed23909fa5bd5f27`  
		Last Modified: Sat, 04 Nov 2017 16:06:40 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:493f983fb400d1fdaa17fc77230e7950a61b85e7dcffa94d86150300a81429d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233481408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87656acb5e9d4a8e8a7db041f0169ab52ab82348d607530934467de702694e7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:23:36 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 01:23:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:51 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:54 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:55 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b3fa6ea42f7bfa7150f7df62bfebd6d38bdc0557c86f6c3b4fc1c88b7a445`  
		Last Modified: Fri, 03 Nov 2017 01:27:05 GMT  
		Size: 85.7 MB (85701128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e263b1fd725c42d7f4af79018dee46942ba4b36c6b5b8f5688d5a168e0608e`  
		Last Modified: Fri, 03 Nov 2017 01:26:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea0a2fa6d3856cf05419514230d72b6680b2e4365cb23b85db67479c3717d5f`  
		Last Modified: Fri, 03 Nov 2017 01:26:38 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f2bbab537a09a71e6e21b55f683cd24d10fea118aaa88e77263fe3bd31da3b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238781315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e8a46ce64ad9410c7f6112876c9b558cf4c275d3557bab493eff6d7ccebbe9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:20:37 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 11:20:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:54 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:58 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:58 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb808ab5b5c50d882f9312decf5434d3de7e1a5732622f3de1b6d4ec7aa3b508`  
		Last Modified: Fri, 03 Nov 2017 11:26:29 GMT  
		Size: 84.8 MB (84821187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683888bb2f998f9a522f04fec4daf4349748501a3d966a5da1201000799fc2ed`  
		Last Modified: Fri, 03 Nov 2017 11:26:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5e5434eb5ec92bbe3f8582090f943fe2cf3a850961219e25778b4e1c25c5`  
		Last Modified: Fri, 03 Nov 2017 11:26:00 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; 386

```console
$ docker pull golang@sha256:9ec0064f3f6547a762e83533fe9bc68eefa3e0a70e2ec8b50ebf5f282baccd3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 MB (261916391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3690785f4ce6b5a70346d3b6a08dcde3b25599f57172ff535b36959a3b3bc8da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:48 GMT
ENV GOLANG_VERSION=1.8.5
# Fri, 03 Nov 2017 00:52:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:56 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:57 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:58 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d05ee4ee265951533f23ebff6c3822798458997e55fbeb83833cd20205541f`  
		Last Modified: Fri, 03 Nov 2017 01:04:29 GMT  
		Size: 86.8 MB (86810784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acc0ba613351a61e407bd0ab4cd45706ee313103bc3f0aead43070530f4c48f`  
		Last Modified: Fri, 03 Nov 2017 01:04:12 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c970ea3a2992eec9b728347bd6a31bebd99a93ea7eed198b26690c395902fd`  
		Last Modified: Fri, 03 Nov 2017 01:04:11 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d4be22a33d2243775514e75c81aba0d1722c2d604a5141fea02c27bd57ebcbac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247064375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9214197d7c4e3eaf97424f175751e82a4f51a09b1cc2cd47cd34ff78626e1af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:15:37 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 18:16:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:16:07 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:16:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:16:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:16:27 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:16:29 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cbc0efee574fd7551bcc1f04c9584d840cafe39d221168b5e8178ca9811dd`  
		Last Modified: Thu, 02 Nov 2017 18:22:35 GMT  
		Size: 84.3 MB (84337292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99134f3c86ecbc92180531debf9d7379b81bdc685a1b9c24c861cc0f9e91a2c5`  
		Last Modified: Thu, 02 Nov 2017 18:22:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135ee8426506488ec3e1900fb093554f874f099310a3390800fcb4b3653ee663`  
		Last Modified: Thu, 02 Nov 2017 18:22:14 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; s390x

```console
$ docker pull golang@sha256:8bf98bcf35af6c5c59afe34ccc3533bdf8118edfbf0076b642a410410b7aaca3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239300710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee088c4cb8bb9d2261d59595fc60b29caa3a5f59431709ebe383d8c0aeba42dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:26:08 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 02 Nov 2017 20:26:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f5c58e7fd6cdfcc40b94c6655cf159b25836dffe13431f683b51705b8a67d608' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6c552ae1e77c52944e0f9b9034761bd3dcc3fef57dad6d751a53638783b07d2c' ;; 		i386) goRelArch='linux-386'; goRelSha256='cf959b60b89acb588843ff985ecb47a7f6c37da6e4987739ab4aafad7211464f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1ee0874ce8c8625e14b4457a4861777be78f30067d914bcb264f7e0331d087de' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e978a56842297dc8924555540314ff09128e9a62da9881c3a26771ddd5d7ebc2' ;; 		*) goRelArch='src'; goRelSha256='4949fd1a5a4954eb54dd208f2f412e720e23f32c91203116bed0387cf5d0ff2d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:26:37 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:26:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:26:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:26:41 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:26:42 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec09123f0512865c469929117fbd0ff7a71b28e77a1000d1bc2172c010078ed`  
		Last Modified: Thu, 02 Nov 2017 20:31:26 GMT  
		Size: 83.1 MB (83052905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4cda926c5c76b86002023d309b775040b6565e691f0baa0c852af1ac6c276`  
		Last Modified: Thu, 02 Nov 2017 20:30:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007077cd169da5fa7747e56ff7dd35a5877aa10c02e6ced909c63bdb188060de`  
		Last Modified: Thu, 02 Nov 2017 20:30:55 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:1f7ca35b5d39e7ca86e85d695f9e1efb5aef15d3cc7653df2ca4f18bf2a2e774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.8-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:139e99a72af617da26726d9995a8a3d0ec375b262eae7746235484238c6bcd5f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494233849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308104d242a23eaf79404e58f614de68702b87af0ec525127d4588f4b123d5ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:37:55 GMT
ENV GOLANG_VERSION=1.8.5
# Wed, 01 Nov 2017 20:42:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954ac8698848fd16001a2a6a4261b0d2afb49c1bb64014ee0c3098e15404dd3c`  
		Last Modified: Wed, 01 Nov 2017 20:48:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cf52ea7864bd5048fc2c8bd312612b5d0e9aacd228d5a18357b4ee574c6bfc`  
		Last Modified: Wed, 01 Nov 2017 20:48:34 GMT  
		Size: 109.6 MB (109645687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8db6bdeae8190ab8cd0f1d9ad6448d69171c1c7f7cb6ef0dfe25a8dce0f079`  
		Last Modified: Wed, 01 Nov 2017 20:48:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:888d54349cd32a61ba70fc7e436ca7ddcd6205db1c301188f2a7138febe2103f
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2`

```console
$ docker pull golang@sha256:888d54349cd32a61ba70fc7e436ca7ddcd6205db1c301188f2a7138febe2103f
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

### `golang:1.9.2` - linux; amd64

```console
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2-alpine`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.2-alpine` - linux; amd64

```console
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2-alpine3.6`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.2-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2-nanoserver`

```console
$ docker pull golang@sha256:053110f25114c92c7efee12ad21edd2fb9ba5bf496dab538b7664545a505d17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9.2-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f24f4a9d8ff9be941ec8c1dd06fd9b8a09c3893c76aae2adf0a57b2c77957a60
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 MB (501675791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823f99ac7b5bf4a1fcfa68fbdc8f12c8e4e371a8c460aa623de45bbfdea585c6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:33:38 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:37:39 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:37:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6f8ba1442115231d4e129a64445acde1124719c6321c1f6b816de3d2a2edc0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658d90421ffdecff4a188a51c01acbd2a28add83f0429f779bdb92a14327a54`  
		Last Modified: Wed, 01 Nov 2017 20:47:54 GMT  
		Size: 106.3 MB (106318316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1282ba5ba22de6d28c839a822bffd98e83d5e7ee9268fc4233679b81fa5150e`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2-stretch`

```console
$ docker pull golang@sha256:5a94893f55b936da4e72666ca3e703d5ed12a930a7660d1b0cce22dc2dbab60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.2-stretch` - linux; amd64

```console
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-stretch` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.2-stretch` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.2-windowsservercore`

```console
$ docker pull golang@sha256:1fe80e1042f416e7d4a3f8ef8f9c7411b027bd58c9a45a278b7fdd89f9591051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9.2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:053110f25114c92c7efee12ad21edd2fb9ba5bf496dab538b7664545a505d17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f24f4a9d8ff9be941ec8c1dd06fd9b8a09c3893c76aae2adf0a57b2c77957a60
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 MB (501675791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823f99ac7b5bf4a1fcfa68fbdc8f12c8e4e371a8c460aa623de45bbfdea585c6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:33:38 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:37:39 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:37:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6f8ba1442115231d4e129a64445acde1124719c6321c1f6b816de3d2a2edc0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658d90421ffdecff4a188a51c01acbd2a28add83f0429f779bdb92a14327a54`  
		Last Modified: Wed, 01 Nov 2017 20:47:54 GMT  
		Size: 106.3 MB (106318316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1282ba5ba22de6d28c839a822bffd98e83d5e7ee9268fc4233679b81fa5150e`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:5a94893f55b936da4e72666ca3e703d5ed12a930a7660d1b0cce22dc2dbab60e
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:1fe80e1042f416e7d4a3f8ef8f9c7411b027bd58c9a45a278b7fdd89f9591051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:053110f25114c92c7efee12ad21edd2fb9ba5bf496dab538b7664545a505d17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f24f4a9d8ff9be941ec8c1dd06fd9b8a09c3893c76aae2adf0a57b2c77957a60
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 MB (501675791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823f99ac7b5bf4a1fcfa68fbdc8f12c8e4e371a8c460aa623de45bbfdea585c6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:33:38 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:37:39 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:37:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6f8ba1442115231d4e129a64445acde1124719c6321c1f6b816de3d2a2edc0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658d90421ffdecff4a188a51c01acbd2a28add83f0429f779bdb92a14327a54`  
		Last Modified: Wed, 01 Nov 2017 20:47:54 GMT  
		Size: 106.3 MB (106318316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1282ba5ba22de6d28c839a822bffd98e83d5e7ee9268fc4233679b81fa5150e`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:5a94893f55b936da4e72666ca3e703d5ed12a930a7660d1b0cce22dc2dbab60e
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:1fe80e1042f416e7d4a3f8ef8f9c7411b027bd58c9a45a278b7fdd89f9591051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.6`

```console
$ docker pull golang@sha256:2ea53a25950e20b7c7b431db45245d8109d644c71ab8fecc7bfc6b3de772f608
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
$ docker pull golang@sha256:5a58a17b40722f5be9f7a3d0e325f23072868f58c341b25684dc8f6e943c8798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82574664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3f14138abd2fb683e1445abc3823b814db4ffaa6c20c1bb4b17d13d629ac96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:56:18 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Nov 2017 22:56:19 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 22:56:19 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 03 Nov 2017 22:57:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 22:57:31 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 22:57:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:57:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 22:57:32 GMT
WORKDIR /go
# Fri, 03 Nov 2017 22:57:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fa2ea40bebd5dbe53a2261aac0edcc0d59090a3809f8c58a20a21ab590359`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 351.0 KB (350988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973f2cd65cfa6de74f53d0a753825e201858e3c76689ba6b17942ffddc678347`  
		Last Modified: Fri, 03 Nov 2017 23:01:52 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1984233f30f4168261ca299b785ae94c953db5d4e43ebbdb899bc472c1661`  
		Last Modified: Fri, 03 Nov 2017 23:02:06 GMT  
		Size: 80.2 MB (80229642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2a026bc4c05328ab0803c7df72f3d439ae5ae88923c1ab743f83c202d26f1e`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7a66574ee0ed011bc19cd8328602cab4f429d93a204ae18d75da57388adce`  
		Last Modified: Fri, 03 Nov 2017 23:01:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2075c33b0adb86a5625efae7676296ab1d9a08bdd1b0a7308a89080583f18901
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80157037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f40308ee24051fc94475daaefa25e9660dca6ed522acbe34999212b5c5e9fe`
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
# Fri, 27 Oct 2017 09:46:18 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 09:46:18 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 09:47:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 09:47:28 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 09:47:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 09:47:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 09:47:29 GMT
WORKDIR /go
# Fri, 27 Oct 2017 09:47:29 GMT
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
	-	`sha256:1af727c4e68e3c54e4669b869215f641ee350ab8179e66eeb5731ff7b3023f38`  
		Last Modified: Fri, 27 Oct 2017 09:49:12 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2842b22d3b4d3a10346fe2ff517bcdeefaf7c46303428e5ed9a75b90181762f`  
		Last Modified: Fri, 27 Oct 2017 09:49:39 GMT  
		Size: 77.8 MB (77836073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c806c565c4bc623f515d3c420c92b20ff8a62f7b35dc1c314e4401a6419e77`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc05b55f9e34ac2016be73d257a30fb1d218a845a0bb08dcd32eca2fe022fb8`  
		Last Modified: Fri, 27 Oct 2017 09:49:11 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e96481a8e39943f9ac2f5b31f3326c93a829de3ba2e549f3c7a8cbb8cbed53f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78710150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9758395cb0bbad6800903766d70cc394ccb17490acfe311b9e2ce31e92064817`
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
# Thu, 26 Oct 2017 18:29:10 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:29:10 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:30:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:30:56 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:30:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:30:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:30:59 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:31:00 GMT
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
	-	`sha256:7d93f57562a5ad3b664530de74e35c501aee2e15535d6cb5bec090a9dde59bd3`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc034379cea99e8e90b4c16720af6868aa24ae41bc81f712b13efbc94e5ab412`  
		Last Modified: Thu, 26 Oct 2017 18:36:00 GMT  
		Size: 76.4 MB (76441127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2583b397d33de9cec90e63acd12ee71e8132fb7fb799af57f2b20a93c28301`  
		Last Modified: Thu, 26 Oct 2017 18:35:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f657e371aa62b763c2e9e7e50d3f296bf6c8274c4a4b8abdcfd66ae7e36e7197`  
		Last Modified: Thu, 26 Oct 2017 18:35:28 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:ec36a4481046c36d5094040f90329313526c0425d31b1dde65347222afb2887a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81278331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377fee123a24cc34c3673992675d273340885dd972f6622d373af5186e456535`
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
# Fri, 27 Oct 2017 05:21:35 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 05:21:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 05:23:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 05:23:13 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 05:23:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 05:23:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 05:23:14 GMT
WORKDIR /go
# Fri, 27 Oct 2017 05:23:14 GMT
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
	-	`sha256:7a74843470abc1220714e69d38ffb94a69d5ecc82ae7bbf67fa246d9590c81fd`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec672d72d350cebfd6ac534f4df1cfd0f6ccddb7db038b0fd9aa163dd166fb2`  
		Last Modified: Fri, 27 Oct 2017 05:34:38 GMT  
		Size: 78.9 MB (78877862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c919098c7e7a03be8d250244121240b669781494b28fe5236024cc79e671e`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fee239cc2aae38ea35c171789a6360a9ead817a4df83e09ab1e92443bd8af6b`  
		Last Modified: Fri, 27 Oct 2017 05:34:18 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:4fffbe557bb9fd3b58a712a72bbffdb3b9afdf1c4925f5940938cc3d0cdfc11d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78270072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99557b2d1656157af8056c7fba73d1b1f0d1174a5a8fc715807c48911a39ae`
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
# Thu, 26 Oct 2017 15:51:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 26 Oct 2017 18:15:32 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 26 Oct 2017 18:16:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 26 Oct 2017 18:16:27 GMT
ENV GOPATH=/go
# Thu, 26 Oct 2017 18:16:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 18:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 26 Oct 2017 18:16:34 GMT
WORKDIR /go
# Thu, 26 Oct 2017 18:16:36 GMT
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
	-	`sha256:838c4f2301cd206d37b3be7b80c46c224ddc39ce39739f92548014050f10f52b`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec34c15827fe0b54e4f00034f8f098a469bc0cbccb810e2499469bfacb58cd6`  
		Last Modified: Thu, 26 Oct 2017 18:17:27 GMT  
		Size: 75.9 MB (75904423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8af871c88de609a0123558b5ea9edec17bf5911ffb3d6cd9ce00f5fd93edfbd`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24756efaba8f33afe3cdef7a3e3fe37e4f43b519a3c497285458975619e7d66a`  
		Last Modified: Thu, 26 Oct 2017 18:17:03 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:a3ff07358effa600b78f7f09e9222d58d5fde170428b9e4e7a56cff960560936
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82266211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7537b9de20fb58280557c25e20d267dadfa9e407deda541006648c78f08cc949`
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
# Fri, 27 Oct 2017 10:39:57 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 27 Oct 2017 10:39:57 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 27 Oct 2017 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 27 Oct 2017 10:40:57 GMT
ENV GOPATH=/go
# Fri, 27 Oct 2017 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Oct 2017 10:40:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Oct 2017 10:40:57 GMT
WORKDIR /go
# Fri, 27 Oct 2017 10:40:58 GMT
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
	-	`sha256:4240dfac9062afbcec0b298d358773d229b6850ee5f68f9fe5e1bf93875a7378`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192702d9da40ce6a92832272a58b697b1d97c62dbc2844cc31f0a6a1fd6ecb12`  
		Last Modified: Fri, 27 Oct 2017 10:44:12 GMT  
		Size: 79.8 MB (79845463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c83995b9ec3cde71098c6340f443838b888566c469f029b2082b5df8232aebb`  
		Last Modified: Fri, 27 Oct 2017 10:43:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e342b6444e0e3ffdb87ced0a29a4b35abeb05f6b0c83f306e6f62b7331a462`  
		Last Modified: Fri, 27 Oct 2017 10:43:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:888d54349cd32a61ba70fc7e436ca7ddcd6205db1c301188f2a7138febe2103f
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:053110f25114c92c7efee12ad21edd2fb9ba5bf496dab538b7664545a505d17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f24f4a9d8ff9be941ec8c1dd06fd9b8a09c3893c76aae2adf0a57b2c77957a60
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 MB (501675791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823f99ac7b5bf4a1fcfa68fbdc8f12c8e4e371a8c460aa623de45bbfdea585c6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:33:13 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:33:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 20:33:38 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:37:39 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:37:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d3d75a1aca31e0860ff222016aefb0368d286af1c27d91a892d7e210f10a6`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740d34d6440436d981b007231acf90c0f7ac431231cbddb30b5eb34143318ce0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 904.4 KB (904387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6f8ba1442115231d4e129a64445acde1124719c6321c1f6b816de3d2a2edc0`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658d90421ffdecff4a188a51c01acbd2a28add83f0429f779bdb92a14327a54`  
		Last Modified: Wed, 01 Nov 2017 20:47:54 GMT  
		Size: 106.3 MB (106318316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1282ba5ba22de6d28c839a822bffd98e83d5e7ee9268fc4233679b81fa5150e`  
		Last Modified: Wed, 01 Nov 2017 20:47:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:5a94893f55b936da4e72666ca3e703d5ed12a930a7660d1b0cce22dc2dbab60e
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
$ docker pull golang@sha256:3011b5966a3d52b64433af0a784f09d12d7f245e7a2e6b93edab38decf11f5b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272327001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34fad76b34f485ebc72d32044cafe963ae00c8e80dbf4115bafabd31e93ff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:35 GMT
ENV GOLANG_VERSION=1.9.2
# Sat, 04 Nov 2017 16:04:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Nov 2017 16:04:45 GMT
ENV GOPATH=/go
# Sat, 04 Nov 2017 16:04:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 16:04:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Nov 2017 16:04:46 GMT
WORKDIR /go
# Sat, 04 Nov 2017 16:04:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19893b2f35cee7b147952be6a53fd5b21fb95973f10b60b6b89bd0fe1b323a9`  
		Last Modified: Sat, 04 Nov 2017 16:06:16 GMT  
		Size: 104.3 MB (104250627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a1a0cc426842b321616f2a5e24ffc25407feaeb1270a82118674f5786ba13`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9bedd68abe6d870331483496163aca5c81384d1b03151c5f0f6fd107e2480`  
		Last Modified: Sat, 04 Nov 2017 16:05:58 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:225557af3589f9dc9a4bff95ea6ef975e30758bcba3db1417242ddd0f87ae6d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237449131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ea70d2bed3663eeb284a6d0f6071c1de19511f5d1d12c0b9a6b573fa6a3758`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:22:58 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 01:23:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 01:23:21 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 01:23:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 01:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 01:23:24 GMT
WORKDIR /go
# Fri, 03 Nov 2017 01:23:25 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e65311704164b540922c461037f384e1b245f62172a9128a828b1cb2cf0c33`  
		Last Modified: Fri, 03 Nov 2017 01:25:47 GMT  
		Size: 45.9 MB (45857908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35b07558a08c44a0694d9240d82349c69c59c228ea9f71a102ae92e7ff10f9b`  
		Last Modified: Fri, 03 Nov 2017 01:26:03 GMT  
		Size: 89.7 MB (89668850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3620ad477c334505c66e892fadd68b24afdf0c20a087a5ec827f10307fb0cf`  
		Last Modified: Fri, 03 Nov 2017 01:25:34 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f578b9115826e8a48258b1fc637d3c5dc4f48b0b17197e9e49db2a90d830a`  
		Last Modified: Fri, 03 Nov 2017 01:25:35 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5263304b20114fc535098cab0de68a036daf44606c4fc7afe4b6d97d34ea4729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6e1b5d9f9f14be77fc9bd9113734ab33c4a630af2e56a26796b900fd39c3e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:28 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 11:19:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 11:20:02 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 11:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 11:20:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 11:20:05 GMT
WORKDIR /go
# Fri, 03 Nov 2017 11:20:05 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7654a76fbd039ee776cffec6d83673cb6571ce29e5afd5a388d2143b5d27ee`  
		Last Modified: Fri, 03 Nov 2017 11:24:57 GMT  
		Size: 88.3 MB (88262455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47979d97c95c291b004c9ac74fd69bb29688e7304e5e1861bbe08eb31cdac36e`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8689de0621563e54edee3f732a287d3300a61d998c163775f727aa7d7467ffce`  
		Last Modified: Fri, 03 Nov 2017 11:24:21 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:18ca8ca85182f0c4187acd77813ea6430f00ad74efcb0148d3004683ce1f7f4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267022852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe435dc681f982b48b6c5ef7e7f12bb4e04c764e73d6cfb4544790847a38129`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:10 GMT
ENV GOLANG_VERSION=1.9.2
# Fri, 03 Nov 2017 00:52:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 03 Nov 2017 00:52:35 GMT
ENV GOPATH=/go
# Fri, 03 Nov 2017 00:52:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 00:52:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Nov 2017 00:52:36 GMT
WORKDIR /go
# Fri, 03 Nov 2017 00:52:36 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497baa2c71ef969568ea626067ea89d29c6a924d14ece81376f96448e62660e`  
		Last Modified: Fri, 03 Nov 2017 00:59:20 GMT  
		Size: 91.9 MB (91917241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12a8e7f7a1903c86726043c00326272c93c7a6a64f288ce0a85e61409ef58de`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab286929f909249b1d9bb5ec2f4da7ec6ac8780b07edbeeb61f1202e388cbc7`  
		Last Modified: Fri, 03 Nov 2017 00:58:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:a6c8c4b05c5de7c90b642ba67904fd94f14f13842a5037cd06593ac975526efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250506472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5952b06eacb50c475b96d8b429a3305275d3eed67947c33d590035d38a75a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:24 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 18:14:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 18:14:54 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 18:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 18:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 18:15:09 GMT
WORKDIR /go
# Thu, 02 Nov 2017 18:15:12 GMT
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
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d128bb2e6c3d185f1821fe6e81cf21a76d28766d5c3d3cbf4347c598d2013989`  
		Last Modified: Thu, 02 Nov 2017 18:21:40 GMT  
		Size: 87.8 MB (87779386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb4abeebd8bc47438b5289d02856a58c4222a6cfff66c5f6614aa9d9acaf3f0`  
		Last Modified: Thu, 02 Nov 2017 18:21:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c55ae9ccadfb4fbe96161dc941c9fe65be087f828810f896967b82f76032b62`  
		Last Modified: Thu, 02 Nov 2017 18:21:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:158dcadc2162147bc96ffaf072d96bb9b2dad490f25c7889297e4e666c0f4a6a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243662167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a5b9e94e2eb45bbddc3d1d9da3dca580a06dcac619dec0d6ed2edd08a9144`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:03 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 02 Nov 2017 20:25:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8a6758c8d390e28ef2bcea511f62dcb43056f38c1addc06a8bc996741987e7bb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0016ac65ad8340c84f51bc11dbb24ee8265b0a4597dbfdf8d91776fc187456fa' ;; 		i386) goRelArch='linux-386'; goRelSha256='574b2c4b1a248e58ef7d1f825beda15429610a2316d9cbd3096d8d3fa8c0bc1a' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='adb440b2b6ae9e448c253a20836d8e8aa4236f731d87717d9c7b241998dc7f9d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a7137b4fbdec126823a12a4b696eeee2f04ec616e9fb8a54654c51d5884c1345' ;; 		*) goRelArch='src'; goRelSha256='665f184bf8ac89986cfd5a4460736976f60b57df6b320ad71ad4cef53bb143dc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 02 Nov 2017 20:25:35 GMT
ENV GOPATH=/go
# Thu, 02 Nov 2017 20:25:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 20:25:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 02 Nov 2017 20:25:38 GMT
WORKDIR /go
# Thu, 02 Nov 2017 20:25:38 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44443ab3acf5996aafae192b5d3c17a0136b566aea062f9aeafe864a758076cf`  
		Last Modified: Thu, 02 Nov 2017 20:30:09 GMT  
		Size: 87.4 MB (87414364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c774880753bcc6403b1dc9cbc6a423193eff9df91fa834c48e09b57bb8681`  
		Last Modified: Thu, 02 Nov 2017 20:29:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe126dd6899da362c7c4bf58a3ba7590614aa13d1b887f8789b1fbb20c246d92`  
		Last Modified: Thu, 02 Nov 2017 20:29:21 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:1fe80e1042f416e7d4a3f8ef8f9c7411b027bd58c9a45a278b7fdd89f9591051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull golang@sha256:f8441a641e67f1e75d1aee63437355d9201147744c5878f553c46591f7022ed6
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5494866514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ce54edf612126a02b5883c21e9c9f6ee2477fca25fd32c4a7ba1df7900da4d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_VERSION=2.11.1
# Wed, 01 Nov 2017 20:26:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 01 Nov 2017 20:26:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 01 Nov 2017 20:26:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 01 Nov 2017 20:27:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:27:44 GMT
ENV GOPATH=C:\gopath
# Wed, 01 Nov 2017 20:28:36 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 01 Nov 2017 20:28:37 GMT
ENV GOLANG_VERSION=1.9.2
# Wed, 01 Nov 2017 20:33:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 20:33:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605450d1e48a63c0da5a827b2a7a74faec2998d4b417d2a0ce4363ce8f542c43`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c2f1ac9953bcffa9464a3992c6cd7206097a54b2198287635e3a8479c74ae`  
		Last Modified: Wed, 01 Nov 2017 20:46:56 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1715cd17bff0c084a40e6ab0becb0646395c86c613f3e364d856b67fd19b6c07`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea8af4b596193a0284fe2a7a37045299aa0d47fce5de1a4e67a441013ae9a12`  
		Last Modified: Wed, 01 Nov 2017 20:46:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f4efd089ca20892a897e14b79e65f2efeae66efe0822d1bb8d3f14cfccd1b8`  
		Last Modified: Wed, 01 Nov 2017 20:46:57 GMT  
		Size: 29.3 MB (29269964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6249caad6d3e27420b54074b171c15e589afa8a47cc3a2c46ec0cbe1b406ef`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174aa6e82431c31e1fc91837dca4ab914af195882b7dc2a4e01ae36fa0fa8b`  
		Last Modified: Wed, 01 Nov 2017 20:46:48 GMT  
		Size: 4.8 MB (4801409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559335af40b1622c82f42be98eb7ff4c5d287fa4ed6deaed185978652133d78d`  
		Last Modified: Wed, 01 Nov 2017 20:46:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29a137a52e78074c8e618939b89f429bb41755cce516e5aa855624a1417f485`  
		Last Modified: Wed, 01 Nov 2017 20:47:12 GMT  
		Size: 110.3 MB (110278390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e53b5b991bd88780d9001004494f1f64bb74e74440a9769cc611f2900c571ff`  
		Last Modified: Wed, 01 Nov 2017 20:46:45 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
