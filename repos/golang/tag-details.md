<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1.9.0-stretch`](#golang190-stretch)
-	[`golang:1.9-stretch`](#golang19-stretch)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:stretch`](#golangstretch)
-	[`golang:1.9.0`](#golang190)
-	[`golang:1.9`](#golang19)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.9.0-alpine3.6`](#golang190-alpine36)
-	[`golang:1.9-alpine3.6`](#golang19-alpine36)
-	[`golang:1-alpine3.6`](#golang1-alpine36)
-	[`golang:alpine3.6`](#golangalpine36)
-	[`golang:1.9.0-alpine`](#golang190-alpine)
-	[`golang:1.9-alpine`](#golang19-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.9.0-windowsservercore`](#golang190-windowsservercore)
-	[`golang:1.9-windowsservercore`](#golang19-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.9.0-nanoserver`](#golang190-nanoserver)
-	[`golang:1.9-nanoserver`](#golang19-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:1.8.3-stretch`](#golang183-stretch)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1.8.3-jessie`](#golang183-jessie)
-	[`golang:1.8-jessie`](#golang18-jessie)
-	[`golang:1.8.3`](#golang183)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8.3-alpine3.6`](#golang183-alpine36)
-	[`golang:1.8-alpine3.6`](#golang18-alpine36)
-	[`golang:1.8.3-alpine3.5`](#golang183-alpine35)
-	[`golang:1.8-alpine3.5`](#golang18-alpine35)
-	[`golang:1.8.3-alpine`](#golang183-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8.3-onbuild`](#golang183-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8.3-windowsservercore`](#golang183-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.8.3-nanoserver`](#golang183-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)

## `golang:1.9.0-stretch`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.0-stretch` - linux; amd64

```console
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0-stretch` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0-stretch` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9.0` - linux; amd64

```console
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.0` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:890f5965ac40c52f706cd604605a868a8ac27a30ee6fa5ff0d7e8eda2f29e310
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
$ docker pull golang@sha256:a1bf1b297e50d394535a6618bfcfb20a875b98926aefd0b71b7bd242178eed00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270704570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a5521185c516065db8d01b603428af513c7b10584f25e45de82ead1b8334ec`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:19:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:19:57 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:19:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:19:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:19:58 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:19:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0045512449a9f7b83af7fa4937c03140d9e1ff15c25d4b983efa68be714b101a`  
		Last Modified: Wed, 13 Sep 2017 09:24:32 GMT  
		Size: 102.6 MB (102595843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fe330261a6ead1acc0d6615e2f9297966600315ff38eda9182860abf03d3f4`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad5acf3a3db70f4d696fca700ebfe27ac3e0918b7024669bb5a44746545e1`  
		Last Modified: Wed, 13 Sep 2017 09:24:09 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
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
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
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
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:957ac30ec8f846763df4da6109c228e7b5555193091949f23e1cef0d77011c7d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a205c24e4ef3b3826694ace8ed80617cc02ae637b085059c9d9429a98f85e9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:01 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:11 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:12 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a441839841c58ea37cb1c775f8d6a3123a208ce2591765c325c0231fe7410cf`  
		Last Modified: Fri, 25 Aug 2017 00:07:42 GMT  
		Size: 87.7 MB (87650015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cb4c460d47bbf5936f104718e64919bb346f6ccaf7b42baa80f1d7918f57c`  
		Last Modified: Fri, 25 Aug 2017 00:07:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed721493d50e1bb4637dd87568d57ef965d6733af5a9c4d0662071e1ca55f8`  
		Last Modified: Wed, 30 Aug 2017 15:50:45 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-alpine3.6`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.0-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.6`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-alpine`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.0-alpine` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:d6a89f5c567da1ea62ca8f0d3773b5f2a0ed169f2d7483f4d1e74995812860b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:22237199b3cdfbc90fdb01d246e8e261e0b8db9ceac52c896da70bef37dd77dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f77f6c9f74e456b862d72249ff12e0c46db7e370b895572b4274ae60f68798`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:20:03 GMT
ENV GOLANG_VERSION=1.9
# Wed, 13 Sep 2017 09:20:03 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:21:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:01 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:02 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92628dbb686d6df6b38867c356b791a3ffcd9f1bd2a7a866f53d6e1fba37b49`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279d022ec9fbae611b6eaa674e71a539866ec091b61bb1e118f6d12c33f5c18`  
		Last Modified: Wed, 13 Sep 2017 09:25:26 GMT  
		Size: 80.6 MB (80571521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbb9be0d01be5e3d08c40cc1ba009e83798200e9a43310f84af121dfac1d774`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9d84204a06e1ccc464e1ec8c062c2d1779db5e6a1076b2d8f27d933712a92`  
		Last Modified: Wed, 13 Sep 2017 09:25:04 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-windowsservercore`

```console
$ docker pull golang@sha256:d9ef443b10e244e4adfd817502d7fa821148c18d473fd2810a9d8f25b7307746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.9.0-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:d2a0f5ac5d53be21c52e309549198e26357756268fd97e8f9614a36386fa841a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5476375396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c78f7ab6bce330483aa08f1d3aebac88723f221ccf88a51bbc18d610b0c683`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 25 Aug 2017 00:07:47 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:11:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:11:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def4b20b5759f8e3919ec514c3cf9564dbada16eb1ad7d2ba492b32ec161436`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680cbb81a807fe00245f856c46d4c1655e6c7fb3d42e0d430c84d7979fc42dab`  
		Last Modified: Fri, 25 Aug 2017 00:15:15 GMT  
		Size: 114.7 MB (114739334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5069e23598f016a220e7be63bfbc3e4a54336fc0c90f61a0b27185034b9d6b8`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:d9ef443b10e244e4adfd817502d7fa821148c18d473fd2810a9d8f25b7307746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:d2a0f5ac5d53be21c52e309549198e26357756268fd97e8f9614a36386fa841a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5476375396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c78f7ab6bce330483aa08f1d3aebac88723f221ccf88a51bbc18d610b0c683`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 25 Aug 2017 00:07:47 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:11:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:11:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def4b20b5759f8e3919ec514c3cf9564dbada16eb1ad7d2ba492b32ec161436`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680cbb81a807fe00245f856c46d4c1655e6c7fb3d42e0d430c84d7979fc42dab`  
		Last Modified: Fri, 25 Aug 2017 00:15:15 GMT  
		Size: 114.7 MB (114739334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5069e23598f016a220e7be63bfbc3e4a54336fc0c90f61a0b27185034b9d6b8`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:d9ef443b10e244e4adfd817502d7fa821148c18d473fd2810a9d8f25b7307746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:d2a0f5ac5d53be21c52e309549198e26357756268fd97e8f9614a36386fa841a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5476375396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c78f7ab6bce330483aa08f1d3aebac88723f221ccf88a51bbc18d610b0c683`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 25 Aug 2017 00:07:47 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:11:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:11:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def4b20b5759f8e3919ec514c3cf9564dbada16eb1ad7d2ba492b32ec161436`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680cbb81a807fe00245f856c46d4c1655e6c7fb3d42e0d430c84d7979fc42dab`  
		Last Modified: Fri, 25 Aug 2017 00:15:15 GMT  
		Size: 114.7 MB (114739334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5069e23598f016a220e7be63bfbc3e4a54336fc0c90f61a0b27185034b9d6b8`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:d9ef443b10e244e4adfd817502d7fa821148c18d473fd2810a9d8f25b7307746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:d2a0f5ac5d53be21c52e309549198e26357756268fd97e8f9614a36386fa841a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5476375396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c78f7ab6bce330483aa08f1d3aebac88723f221ccf88a51bbc18d610b0c683`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 25 Aug 2017 00:07:47 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:11:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:11:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def4b20b5759f8e3919ec514c3cf9564dbada16eb1ad7d2ba492b32ec161436`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680cbb81a807fe00245f856c46d4c1655e6c7fb3d42e0d430c84d7979fc42dab`  
		Last Modified: Fri, 25 Aug 2017 00:15:15 GMT  
		Size: 114.7 MB (114739334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5069e23598f016a220e7be63bfbc3e4a54336fc0c90f61a0b27185034b9d6b8`  
		Last Modified: Fri, 25 Aug 2017 00:14:55 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-nanoserver`

```console
$ docker pull golang@sha256:f66d06ae63d249890c9cc777747a19daee8060e3e12491127f1225f807fd2827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.9.0-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:7c50df57c4cd13cd0a96d4dd93ccf2ef688ddbd21c38ebaf2f042cb478b9272a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500181945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23578fbd6216093145028d0c282685944c5b021e4bb4892400ba657b09c21d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 25 Aug 2017 00:11:30 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:14:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfcc887569b2e6895e379b33b123f792617d75bb4264896a5f9dc0dd51b6ff`  
		Last Modified: Fri, 25 Aug 2017 00:15:32 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc7e329b9afa5cc95bdcbf96e806904358ade6e7a90be23603887d449968ce5`  
		Last Modified: Fri, 25 Aug 2017 00:15:51 GMT  
		Size: 109.3 MB (109312533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a19b0bb17f24e7338b1ba929d0dbcbd19573a3e30ca74639eb08a94210aae2`  
		Last Modified: Fri, 25 Aug 2017 00:15:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:f66d06ae63d249890c9cc777747a19daee8060e3e12491127f1225f807fd2827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:7c50df57c4cd13cd0a96d4dd93ccf2ef688ddbd21c38ebaf2f042cb478b9272a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500181945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23578fbd6216093145028d0c282685944c5b021e4bb4892400ba657b09c21d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 25 Aug 2017 00:11:30 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:14:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfcc887569b2e6895e379b33b123f792617d75bb4264896a5f9dc0dd51b6ff`  
		Last Modified: Fri, 25 Aug 2017 00:15:32 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc7e329b9afa5cc95bdcbf96e806904358ade6e7a90be23603887d449968ce5`  
		Last Modified: Fri, 25 Aug 2017 00:15:51 GMT  
		Size: 109.3 MB (109312533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a19b0bb17f24e7338b1ba929d0dbcbd19573a3e30ca74639eb08a94210aae2`  
		Last Modified: Fri, 25 Aug 2017 00:15:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:f66d06ae63d249890c9cc777747a19daee8060e3e12491127f1225f807fd2827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:7c50df57c4cd13cd0a96d4dd93ccf2ef688ddbd21c38ebaf2f042cb478b9272a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500181945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23578fbd6216093145028d0c282685944c5b021e4bb4892400ba657b09c21d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 25 Aug 2017 00:11:30 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:14:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfcc887569b2e6895e379b33b123f792617d75bb4264896a5f9dc0dd51b6ff`  
		Last Modified: Fri, 25 Aug 2017 00:15:32 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc7e329b9afa5cc95bdcbf96e806904358ade6e7a90be23603887d449968ce5`  
		Last Modified: Fri, 25 Aug 2017 00:15:51 GMT  
		Size: 109.3 MB (109312533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a19b0bb17f24e7338b1ba929d0dbcbd19573a3e30ca74639eb08a94210aae2`  
		Last Modified: Fri, 25 Aug 2017 00:15:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:f66d06ae63d249890c9cc777747a19daee8060e3e12491127f1225f807fd2827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:7c50df57c4cd13cd0a96d4dd93ccf2ef688ddbd21c38ebaf2f042cb478b9272a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500181945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23578fbd6216093145028d0c282685944c5b021e4bb4892400ba657b09c21d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 25 Aug 2017 00:11:30 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:14:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbfcc887569b2e6895e379b33b123f792617d75bb4264896a5f9dc0dd51b6ff`  
		Last Modified: Fri, 25 Aug 2017 00:15:32 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc7e329b9afa5cc95bdcbf96e806904358ade6e7a90be23603887d449968ce5`  
		Last Modified: Fri, 25 Aug 2017 00:15:51 GMT  
		Size: 109.3 MB (109312533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a19b0bb17f24e7338b1ba929d0dbcbd19573a3e30ca74639eb08a94210aae2`  
		Last Modified: Fri, 25 Aug 2017 00:15:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-stretch`

```console
$ docker pull golang@sha256:d2e50eb26d955612e9ccb9d3c4e693de9fd45868e2ce229be71145fa8e7bdc20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.3-stretch` - linux; amd64

```console
$ docker pull golang@sha256:b317f2f434a29d465bcb48cf08e364b8657724c8893b708bb24a59fef3e256ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258147588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b025b239eb00f65ef53de5ed65236250d0aa6a615a20e21739e4ca3664231fa`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:04 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:13 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:14 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef39ad7c5f93dfed6717477f5c1edcf5f269800ef59ccd48536e51fa3b7217f4`  
		Last Modified: Wed, 13 Sep 2017 09:26:14 GMT  
		Size: 90.0 MB (90038857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0d81f327d53e9e5bb84dec52070ed287dcb2c8776d388e99afa2856fe0a53a`  
		Last Modified: Wed, 13 Sep 2017 09:25:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb8f21d2457d5e8a53ac51e202489467478c4001ef9cc566f903f0b09ef8c84`  
		Last Modified: Wed, 13 Sep 2017 09:25:55 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:afac6f69693deb69722a6a5b108abc0fe4019545b8bb3eb1ff097e7c30bccca3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226054124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85c65bc13c9ff74cad38975b754d4f07a8313fa75cee173db4a304496a5116`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:25:06 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:25:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:25:58 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:25:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:26:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:26:02 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:12 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59b9b953652b32d044af860eb820245834744488084f756659d307352f463d`  
		Last Modified: Fri, 11 Aug 2017 19:41:58 GMT  
		Size: 78.0 MB (78000454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6722cc4f0591c4895a4fd151990e49072b463e92c1f688d4388066f871f9ebd`  
		Last Modified: Fri, 11 Aug 2017 19:41:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13aee072761e3c2907f1b85273ffcceaaaa8e08d41fb748edba3b333acfd299`  
		Last Modified: Fri, 01 Sep 2017 23:09:10 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-stretch` - linux; 386

```console
$ docker pull golang@sha256:5864be0e75d27862826a461c690172475a4c600e7549781c5d36ce1fcd0ff3a6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253094075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6807f6421ab29b2d0b10554b98ab3c96b1f49de482728cc7007aff49de63c8a7`
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
# Sat, 09 Sep 2017 14:30:33 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:30:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:30:53 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:55 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:55 GMT
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
	-	`sha256:27bc9d2cef7a1e710ca2300544b56b29cbba3e63ad1272fc2707388107eb8947`  
		Last Modified: Sat, 09 Sep 2017 14:45:39 GMT  
		Size: 77.7 MB (77735916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a723cac63564e95f28c1ac0c351ffd6935ac6425f968a96832ce7d231958d3a`  
		Last Modified: Sat, 09 Sep 2017 14:45:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dfc9ea4c6906b90d81bd55e81af2f582f12d5d2ac5b3916b5e746b111a0cd`  
		Last Modified: Sat, 09 Sep 2017 14:45:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:60967aa399c5531421c8b658498384bc7fa31154768a5169da0d440261f935d4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239665399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e5075f348f8e4730bbad506935898348a39386aceae6ea0997d5c88660db99`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:32:25 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:32:40 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:32:41 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:32:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:32:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:32:48 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7168a9e46ab1de8b0c3add92cbed32e49df24c130c961dfe73d3d4137af401`  
		Last Modified: Tue, 25 Jul 2017 04:36:32 GMT  
		Size: 76.7 MB (76657791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013886594e42e02cfbbc47df90f1ed14f46f20a42818d17daf20a99c84c2dce2`  
		Last Modified: Tue, 25 Jul 2017 04:36:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a30003b308bcf84d75ab4dc69c3d25454d791c4f78ba8f85556f384e6f711`  
		Last Modified: Wed, 30 Aug 2017 15:51:32 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-stretch` - linux; s390x

```console
$ docker pull golang@sha256:37e6d436de031282f375000513056a074f741f4a150d6d92fbe5f6c97f5c3beb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231854964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c40206c3bb76057edd51a8bb6722e24fccc48862868a0cff29a29960eea18f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:07 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:15 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:16 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060f62c8c0b0303e2a7370b66c56d7867e18da3c342fbf2a95235feeffe05c86`  
		Last Modified: Fri, 08 Sep 2017 17:03:01 GMT  
		Size: 75.3 MB (75344240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16928b0a09a4bf61805c54ca1d1099705f0f3947ae251a09e26fe43d2b22db0`  
		Last Modified: Fri, 08 Sep 2017 17:02:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf9a497b1b3d024fd7ff48910eac3dbc28359f400e3128a664ed011559ac40`  
		Last Modified: Fri, 08 Sep 2017 17:02:44 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:d2e50eb26d955612e9ccb9d3c4e693de9fd45868e2ce229be71145fa8e7bdc20
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
$ docker pull golang@sha256:b317f2f434a29d465bcb48cf08e364b8657724c8893b708bb24a59fef3e256ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258147588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b025b239eb00f65ef53de5ed65236250d0aa6a615a20e21739e4ca3664231fa`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:04 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:13 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:14 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82cfe51da678f73e6282cd061348678b5ef6e18632855431a4af8661c4bc0b`  
		Last Modified: Wed, 13 Sep 2017 09:24:25 GMT  
		Size: 57.5 MB (57451794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef39ad7c5f93dfed6717477f5c1edcf5f269800ef59ccd48536e51fa3b7217f4`  
		Last Modified: Wed, 13 Sep 2017 09:26:14 GMT  
		Size: 90.0 MB (90038857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0d81f327d53e9e5bb84dec52070ed287dcb2c8776d388e99afa2856fe0a53a`  
		Last Modified: Wed, 13 Sep 2017 09:25:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb8f21d2457d5e8a53ac51e202489467478c4001ef9cc566f903f0b09ef8c84`  
		Last Modified: Wed, 13 Sep 2017 09:25:55 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:afac6f69693deb69722a6a5b108abc0fe4019545b8bb3eb1ff097e7c30bccca3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226054124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85c65bc13c9ff74cad38975b754d4f07a8313fa75cee173db4a304496a5116`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:25:06 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:25:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:25:58 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:25:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:26:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:26:02 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:12 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59b9b953652b32d044af860eb820245834744488084f756659d307352f463d`  
		Last Modified: Fri, 11 Aug 2017 19:41:58 GMT  
		Size: 78.0 MB (78000454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6722cc4f0591c4895a4fd151990e49072b463e92c1f688d4388066f871f9ebd`  
		Last Modified: Fri, 11 Aug 2017 19:41:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13aee072761e3c2907f1b85273ffcceaaaa8e08d41fb748edba3b333acfd299`  
		Last Modified: Fri, 01 Sep 2017 23:09:10 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; 386

```console
$ docker pull golang@sha256:5864be0e75d27862826a461c690172475a4c600e7549781c5d36ce1fcd0ff3a6
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253094075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6807f6421ab29b2d0b10554b98ab3c96b1f49de482728cc7007aff49de63c8a7`
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
# Sat, 09 Sep 2017 14:30:33 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:30:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:30:53 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:55 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:55 GMT
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
	-	`sha256:27bc9d2cef7a1e710ca2300544b56b29cbba3e63ad1272fc2707388107eb8947`  
		Last Modified: Sat, 09 Sep 2017 14:45:39 GMT  
		Size: 77.7 MB (77735916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a723cac63564e95f28c1ac0c351ffd6935ac6425f968a96832ce7d231958d3a`  
		Last Modified: Sat, 09 Sep 2017 14:45:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dfc9ea4c6906b90d81bd55e81af2f582f12d5d2ac5b3916b5e746b111a0cd`  
		Last Modified: Sat, 09 Sep 2017 14:45:15 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:60967aa399c5531421c8b658498384bc7fa31154768a5169da0d440261f935d4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239665399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e5075f348f8e4730bbad506935898348a39386aceae6ea0997d5c88660db99`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:32:25 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:32:40 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:32:41 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:32:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:32:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:32:48 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e15f698d0897c61a01c603546911364fc94e1d6574aef3db1bb407a01ab277d`  
		Last Modified: Tue, 25 Jul 2017 04:35:17 GMT  
		Size: 52.7 MB (52668537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7168a9e46ab1de8b0c3add92cbed32e49df24c130c961dfe73d3d4137af401`  
		Last Modified: Tue, 25 Jul 2017 04:36:32 GMT  
		Size: 76.7 MB (76657791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013886594e42e02cfbbc47df90f1ed14f46f20a42818d17daf20a99c84c2dce2`  
		Last Modified: Tue, 25 Jul 2017 04:36:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a30003b308bcf84d75ab4dc69c3d25454d791c4f78ba8f85556f384e6f711`  
		Last Modified: Wed, 30 Aug 2017 15:51:32 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-stretch` - linux; s390x

```console
$ docker pull golang@sha256:37e6d436de031282f375000513056a074f741f4a150d6d92fbe5f6c97f5c3beb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231854964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c40206c3bb76057edd51a8bb6722e24fccc48862868a0cff29a29960eea18f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:07 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:15 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:16 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060f62c8c0b0303e2a7370b66c56d7867e18da3c342fbf2a95235feeffe05c86`  
		Last Modified: Fri, 08 Sep 2017 17:03:01 GMT  
		Size: 75.3 MB (75344240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16928b0a09a4bf61805c54ca1d1099705f0f3947ae251a09e26fe43d2b22db0`  
		Last Modified: Fri, 08 Sep 2017 17:02:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf9a497b1b3d024fd7ff48910eac3dbc28359f400e3128a664ed011559ac40`  
		Last Modified: Fri, 08 Sep 2017 17:02:44 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-jessie`

```console
$ docker pull golang@sha256:5d0bd20bb1a85ae8dea23f94934623d2736cce05e85c73245f183d95d1e0f22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.3-jessie` - linux; amd64

```console
$ docker pull golang@sha256:6cc7887dc0bae2573ed75aed6b079c15cbf9345073a3256574f8d5b32190be97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d716e7d465c4173c6f4f5f502e500476a802a478fa04b4ca9eb470a8b013a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:f46c30156e7abcc2ec243c45ded2123a31d50e44932e2a4eba01ed5d262e5341
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9ce41840bf33bcb1bd621bbdd4ae182b9d5079a34cdcd0ccc56fa422e76b24`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-jessie` - linux; 386

```console
$ docker pull golang@sha256:283723cec75428a37936066625227bb33f4c7086dada05b72251e03aad3fbd8e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdbdb06feb0f7a74e7dd669868f031f0d3deee507097e6b897287ad7d5b5297`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:3f283d130e45e18e60f94ac7a8e4c0f1c11b08469054fa5bace6b4fcf6d58448
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f335e8b305ed9dec8c1615658195cfca377510d33bf0f1f5ed491691974f4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-jessie` - linux; s390x

```console
$ docker pull golang@sha256:085e4fb03f021dff003017199e32eb5959ae97c7831ee43c79b4773deb5f2e2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc768aecc500874c8e601f3fa355dbc332cdc9847aaa839dba9579257eb0ac`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-jessie`

```console
$ docker pull golang@sha256:5d0bd20bb1a85ae8dea23f94934623d2736cce05e85c73245f183d95d1e0f22b
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
$ docker pull golang@sha256:6cc7887dc0bae2573ed75aed6b079c15cbf9345073a3256574f8d5b32190be97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d716e7d465c4173c6f4f5f502e500476a802a478fa04b4ca9eb470a8b013a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; arm variant v7

```console
$ docker pull golang@sha256:f46c30156e7abcc2ec243c45ded2123a31d50e44932e2a4eba01ed5d262e5341
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9ce41840bf33bcb1bd621bbdd4ae182b9d5079a34cdcd0ccc56fa422e76b24`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; 386

```console
$ docker pull golang@sha256:283723cec75428a37936066625227bb33f4c7086dada05b72251e03aad3fbd8e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdbdb06feb0f7a74e7dd669868f031f0d3deee507097e6b897287ad7d5b5297`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; ppc64le

```console
$ docker pull golang@sha256:3f283d130e45e18e60f94ac7a8e4c0f1c11b08469054fa5bace6b4fcf6d58448
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f335e8b305ed9dec8c1615658195cfca377510d33bf0f1f5ed491691974f4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-jessie` - linux; s390x

```console
$ docker pull golang@sha256:085e4fb03f021dff003017199e32eb5959ae97c7831ee43c79b4773deb5f2e2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc768aecc500874c8e601f3fa355dbc332cdc9847aaa839dba9579257eb0ac`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3`

```console
$ docker pull golang@sha256:5d0bd20bb1a85ae8dea23f94934623d2736cce05e85c73245f183d95d1e0f22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.3` - linux; amd64

```console
$ docker pull golang@sha256:6cc7887dc0bae2573ed75aed6b079c15cbf9345073a3256574f8d5b32190be97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d716e7d465c4173c6f4f5f502e500476a802a478fa04b4ca9eb470a8b013a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3` - linux; arm variant v7

```console
$ docker pull golang@sha256:f46c30156e7abcc2ec243c45ded2123a31d50e44932e2a4eba01ed5d262e5341
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9ce41840bf33bcb1bd621bbdd4ae182b9d5079a34cdcd0ccc56fa422e76b24`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3` - linux; 386

```console
$ docker pull golang@sha256:283723cec75428a37936066625227bb33f4c7086dada05b72251e03aad3fbd8e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdbdb06feb0f7a74e7dd669868f031f0d3deee507097e6b897287ad7d5b5297`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3` - linux; ppc64le

```console
$ docker pull golang@sha256:3f283d130e45e18e60f94ac7a8e4c0f1c11b08469054fa5bace6b4fcf6d58448
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f335e8b305ed9dec8c1615658195cfca377510d33bf0f1f5ed491691974f4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3` - linux; s390x

```console
$ docker pull golang@sha256:085e4fb03f021dff003017199e32eb5959ae97c7831ee43c79b4773deb5f2e2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc768aecc500874c8e601f3fa355dbc332cdc9847aaa839dba9579257eb0ac`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:5d0bd20bb1a85ae8dea23f94934623d2736cce05e85c73245f183d95d1e0f22b
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
$ docker pull golang@sha256:6cc7887dc0bae2573ed75aed6b079c15cbf9345073a3256574f8d5b32190be97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d716e7d465c4173c6f4f5f502e500476a802a478fa04b4ca9eb470a8b013a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; arm variant v7

```console
$ docker pull golang@sha256:f46c30156e7abcc2ec243c45ded2123a31d50e44932e2a4eba01ed5d262e5341
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9ce41840bf33bcb1bd621bbdd4ae182b9d5079a34cdcd0ccc56fa422e76b24`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; 386

```console
$ docker pull golang@sha256:283723cec75428a37936066625227bb33f4c7086dada05b72251e03aad3fbd8e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdbdb06feb0f7a74e7dd669868f031f0d3deee507097e6b897287ad7d5b5297`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; ppc64le

```console
$ docker pull golang@sha256:3f283d130e45e18e60f94ac7a8e4c0f1c11b08469054fa5bace6b4fcf6d58448
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f335e8b305ed9dec8c1615658195cfca377510d33bf0f1f5ed491691974f4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8` - linux; s390x

```console
$ docker pull golang@sha256:085e4fb03f021dff003017199e32eb5959ae97c7831ee43c79b4773deb5f2e2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc768aecc500874c8e601f3fa355dbc332cdc9847aaa839dba9579257eb0ac`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine3.6`

```console
$ docker pull golang@sha256:d2d2d621650ad7d1ef5b661408a2a939cd46bd6d44db6ec3a14766010d50ddfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:887d8818ab541db48e12128d5d8c5228891288e7db9675341100a23b3ac65eeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78783527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c054155dc2a4aa4cdc3ead6ca549786d14fc982706186c5deb3d3624ba8dfd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:21:50 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:50 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:22:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:22:45 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:22:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:22:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:22:46 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:22:46 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d96e35728838bc3907473d68671f312af0c05e7cdc9bb521ff10be3348663e`  
		Last Modified: Wed, 13 Sep 2017 09:27:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ac3cdb98cea0abafb2ccd86a0ad9f4b9cc56046e110cca7957462ee7f1cd34`  
		Last Modified: Wed, 13 Sep 2017 09:27:19 GMT  
		Size: 76.4 MB (76439805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078ba6c1baaf6745c645d77e637e88730a7f9078211aaa46142f3687075d4ae`  
		Last Modified: Wed, 13 Sep 2017 09:27:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c1b7d7b415ea24a8c179a9caa47c2af83ae7d5688810e854b2173e4af959b`  
		Last Modified: Wed, 13 Sep 2017 09:27:04 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.6`

```console
$ docker pull golang@sha256:d2d2d621650ad7d1ef5b661408a2a939cd46bd6d44db6ec3a14766010d50ddfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:887d8818ab541db48e12128d5d8c5228891288e7db9675341100a23b3ac65eeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78783527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c054155dc2a4aa4cdc3ead6ca549786d14fc982706186c5deb3d3624ba8dfd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:20:03 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:21:50 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:50 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:22:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:22:45 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:22:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:22:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:22:46 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:22:46 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c8aba2e1196a020f81a4efac43beb05cd8abaf52f6b7375d2feb760daebc5`  
		Last Modified: Wed, 13 Sep 2017 09:25:05 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d96e35728838bc3907473d68671f312af0c05e7cdc9bb521ff10be3348663e`  
		Last Modified: Wed, 13 Sep 2017 09:27:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ac3cdb98cea0abafb2ccd86a0ad9f4b9cc56046e110cca7957462ee7f1cd34`  
		Last Modified: Wed, 13 Sep 2017 09:27:19 GMT  
		Size: 76.4 MB (76439805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078ba6c1baaf6745c645d77e637e88730a7f9078211aaa46142f3687075d4ae`  
		Last Modified: Wed, 13 Sep 2017 09:27:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c1b7d7b415ea24a8c179a9caa47c2af83ae7d5688810e854b2173e4af959b`  
		Last Modified: Wed, 13 Sep 2017 09:27:04 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine3.5`

```console
$ docker pull golang@sha256:ad9e8e961e12c3cae598870c53043fd7dfe1b07503ebaf7c49c08f02f1d8db5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:202d90616db38aa1881d8dd182df3264113b86722272d4175742a575721c455a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e4e10ab63fe2e8b6a7ce0ae3385a1283834bc42b4da4e0947ea64c1e18e317`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:22:51 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:22:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:22:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:23:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:23:53 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:23:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:23:53 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:23:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016dc9725310633d94191cf3d6fedc882e0b6fd70a92e0898d377e59d74c883`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 350.7 KB (350676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187bb73965ead7c121e9665c9dbb59b41573b9c3c27cf65e8f076cce5c4fd57`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332595ce9fc50f516696a33db19d18719b050c8654851b6f035b9755d026eab3`  
		Last Modified: Wed, 13 Sep 2017 09:27:46 GMT  
		Size: 75.6 MB (75627747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627fa951aa52b0472e654eb5a69e4a60059c5d4633125e8112f24fc5e1d51432`  
		Last Modified: Wed, 13 Sep 2017 09:27:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8072a79a11acbd4d38b9200b4687c4c177862a5e62daa58a66d3e7b2fcc160`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.5`

```console
$ docker pull golang@sha256:ad9e8e961e12c3cae598870c53043fd7dfe1b07503ebaf7c49c08f02f1d8db5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.5` - linux; amd64

```console
$ docker pull golang@sha256:202d90616db38aa1881d8dd182df3264113b86722272d4175742a575721c455a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e4e10ab63fe2e8b6a7ce0ae3385a1283834bc42b4da4e0947ea64c1e18e317`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:22:51 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:22:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:22:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:23:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:23:53 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:23:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:23:53 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:23:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016dc9725310633d94191cf3d6fedc882e0b6fd70a92e0898d377e59d74c883`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 350.7 KB (350676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187bb73965ead7c121e9665c9dbb59b41573b9c3c27cf65e8f076cce5c4fd57`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332595ce9fc50f516696a33db19d18719b050c8654851b6f035b9755d026eab3`  
		Last Modified: Wed, 13 Sep 2017 09:27:46 GMT  
		Size: 75.6 MB (75627747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627fa951aa52b0472e654eb5a69e4a60059c5d4633125e8112f24fc5e1d51432`  
		Last Modified: Wed, 13 Sep 2017 09:27:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8072a79a11acbd4d38b9200b4687c4c177862a5e62daa58a66d3e7b2fcc160`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine`

```console
$ docker pull golang@sha256:ad9e8e961e12c3cae598870c53043fd7dfe1b07503ebaf7c49c08f02f1d8db5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine` - linux; amd64

```console
$ docker pull golang@sha256:202d90616db38aa1881d8dd182df3264113b86722272d4175742a575721c455a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e4e10ab63fe2e8b6a7ce0ae3385a1283834bc42b4da4e0947ea64c1e18e317`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:22:51 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:22:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:22:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:23:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:23:53 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:23:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:23:53 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:23:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016dc9725310633d94191cf3d6fedc882e0b6fd70a92e0898d377e59d74c883`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 350.7 KB (350676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187bb73965ead7c121e9665c9dbb59b41573b9c3c27cf65e8f076cce5c4fd57`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332595ce9fc50f516696a33db19d18719b050c8654851b6f035b9755d026eab3`  
		Last Modified: Wed, 13 Sep 2017 09:27:46 GMT  
		Size: 75.6 MB (75627747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627fa951aa52b0472e654eb5a69e4a60059c5d4633125e8112f24fc5e1d51432`  
		Last Modified: Wed, 13 Sep 2017 09:27:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8072a79a11acbd4d38b9200b4687c4c177862a5e62daa58a66d3e7b2fcc160`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:ad9e8e961e12c3cae598870c53043fd7dfe1b07503ebaf7c49c08f02f1d8db5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

```console
$ docker pull golang@sha256:202d90616db38aa1881d8dd182df3264113b86722272d4175742a575721c455a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e4e10ab63fe2e8b6a7ce0ae3385a1283834bc42b4da4e0947ea64c1e18e317`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 09:22:51 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 09:22:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:22:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 13 Sep 2017 09:23:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:23:53 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:23:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:23:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:23:53 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:23:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016dc9725310633d94191cf3d6fedc882e0b6fd70a92e0898d377e59d74c883`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 350.7 KB (350676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187bb73965ead7c121e9665c9dbb59b41573b9c3c27cf65e8f076cce5c4fd57`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332595ce9fc50f516696a33db19d18719b050c8654851b6f035b9755d026eab3`  
		Last Modified: Wed, 13 Sep 2017 09:27:46 GMT  
		Size: 75.6 MB (75627747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627fa951aa52b0472e654eb5a69e4a60059c5d4633125e8112f24fc5e1d51432`  
		Last Modified: Wed, 13 Sep 2017 09:27:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8072a79a11acbd4d38b9200b4687c4c177862a5e62daa58a66d3e7b2fcc160`  
		Last Modified: Wed, 13 Sep 2017 09:27:31 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-onbuild`

```console
$ docker pull golang@sha256:a6375572047c59cc42bb2a2331fdb3360920906d8f95d03e5ceab62851bb0c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.8.3-onbuild` - linux; amd64

```console
$ docker pull golang@sha256:de7bbfdc43ac19e289d9b5121f5fae8a17818ab6a62866ac5c3760e131d980fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ac697594b1ce24db7fccecb85e544b6e6a6701482587aa22a7a875c6b70111`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:23:55 GMT
RUN mkdir -p /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
WORKDIR /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
CMD ["go-wrapper" "run"]
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD COPY . /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD RUN go-wrapper download
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affad00350ff192dd1b6298cb421de67cc82c0de865ac3def89e7a47bc368621`  
		Last Modified: Wed, 13 Sep 2017 09:28:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:566da4ccb1a32f31304553fa233746af8a27703d7e0106776f49d49d19d57752
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c19a85d0ce67d4992b7b2cdcba3d819000121153a79c0387ff86ac6adcf081`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 01 Sep 2017 23:08:20 GMT
RUN mkdir -p /go/src/app
# Fri, 01 Sep 2017 23:08:21 GMT
WORKDIR /go/src/app
# Fri, 01 Sep 2017 23:08:21 GMT
CMD ["go-wrapper" "run"]
# Fri, 01 Sep 2017 23:08:22 GMT
ONBUILD COPY . /go/src/app
# Fri, 01 Sep 2017 23:08:23 GMT
ONBUILD RUN go-wrapper download
# Fri, 01 Sep 2017 23:08:24 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683d02a52374bb3b246f2546c089e8d9bc85aba24d191dc8cd041576ca740fd1`  
		Last Modified: Fri, 01 Sep 2017 23:09:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-onbuild` - linux; 386

```console
$ docker pull golang@sha256:7510cce7bfa8a6e2481e3b06c6bf9d1a3bd337b598209f4e1240743dc64600b8
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61410d1ead29453c3ee7f2eaf699249b99a27aa4e645d728e96cf13610c39cb4`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Sat, 09 Sep 2017 14:40:05 GMT
RUN mkdir -p /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
WORKDIR /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
CMD ["go-wrapper" "run"]
# Sat, 09 Sep 2017 14:40:06 GMT
ONBUILD COPY . /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
ONBUILD RUN go-wrapper download
# Sat, 09 Sep 2017 14:40:07 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3cb8de87f395567773ad63fe4e9f3ea12b637fb3ca66f600fcfa1eda4f94f`  
		Last Modified: Sat, 09 Sep 2017 14:50:09 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:1bc661e9a747a13d95141c1014133595b2593ec82bfc77717b8452ac711f28df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da481f192626bf23dd6e17bc569f8464d98b2f91a0ab24680f5742d221262a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 30 Aug 2017 15:50:37 GMT
RUN mkdir -p /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
WORKDIR /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD COPY . /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7774a18c8a0bd20cea13932abeb439fef0b5ce8720092c367037e01ff5c8f8c4`  
		Last Modified: Wed, 30 Aug 2017 15:52:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8.3-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:282bf8077bcdeb5909e396cb9274ed6ec70521dddbde487ef58d3ceccb4cdc2a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f37ae596cf7be70e2a4c768ddbffd41bb5aec0eed7b3c56b95e33f59ef4e60`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:01:56 GMT
RUN mkdir -p /go/src/app
# Fri, 08 Sep 2017 17:01:56 GMT
WORKDIR /go/src/app
# Fri, 08 Sep 2017 17:01:56 GMT
CMD ["go-wrapper" "run"]
# Fri, 08 Sep 2017 17:01:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 08 Sep 2017 17:01:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 08 Sep 2017 17:01:58 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6152e865dc081739004f4849463d9b2e7b6a216ffb63041295d9dc4a59af60`  
		Last Modified: Fri, 08 Sep 2017 17:03:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:a6375572047c59cc42bb2a2331fdb3360920906d8f95d03e5ceab62851bb0c23
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
$ docker pull golang@sha256:de7bbfdc43ac19e289d9b5121f5fae8a17818ab6a62866ac5c3760e131d980fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266005620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ac697594b1ce24db7fccecb85e544b6e6a6701482587aa22a7a875c6b70111`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:21:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 13 Sep 2017 09:21:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Sep 2017 09:21:48 GMT
ENV GOPATH=/go
# Wed, 13 Sep 2017 09:21:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 09:21:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Sep 2017 09:21:49 GMT
WORKDIR /go
# Wed, 13 Sep 2017 09:21:49 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 13 Sep 2017 09:23:55 GMT
RUN mkdir -p /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
WORKDIR /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
CMD ["go-wrapper" "run"]
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD COPY . /go/src/app
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD RUN go-wrapper download
# Wed, 13 Sep 2017 09:23:56 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b8cc3f8a60eceafa1895355a63ceecd2e62b6eff622f133f4772ac267eec57`  
		Last Modified: Wed, 13 Sep 2017 09:26:37 GMT  
		Size: 60.9 MB (60878347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cebb56dc5693f8dbe209ebef1249ff9d9464eb89496adef46040168e04ef1f`  
		Last Modified: Wed, 13 Sep 2017 09:26:46 GMT  
		Size: 90.0 MB (90038818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e6de14da5946bfa8f7b72bdac07d81d9f48bb668d0533e02626ff9777338ed`  
		Last Modified: Wed, 13 Sep 2017 09:26:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200cb76acf6c2ac337cec0651669021955e374c78f379371fea8733601a73618`  
		Last Modified: Wed, 13 Sep 2017 09:26:26 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affad00350ff192dd1b6298cb421de67cc82c0de865ac3def89e7a47bc368621`  
		Last Modified: Wed, 13 Sep 2017 09:28:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; arm variant v7

```console
$ docker pull golang@sha256:566da4ccb1a32f31304553fa233746af8a27703d7e0106776f49d49d19d57752
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c19a85d0ce67d4992b7b2cdcba3d819000121153a79c0387ff86ac6adcf081`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:12:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:34:36 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 11 Aug 2017 19:35:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Aug 2017 19:35:33 GMT
ENV GOPATH=/go
# Fri, 11 Aug 2017 19:35:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Aug 2017 19:35:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Aug 2017 19:35:37 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 01 Sep 2017 23:08:20 GMT
RUN mkdir -p /go/src/app
# Fri, 01 Sep 2017 23:08:21 GMT
WORKDIR /go/src/app
# Fri, 01 Sep 2017 23:08:21 GMT
CMD ["go-wrapper" "run"]
# Fri, 01 Sep 2017 23:08:22 GMT
ONBUILD COPY . /go/src/app
# Fri, 01 Sep 2017 23:08:23 GMT
ONBUILD RUN go-wrapper download
# Fri, 01 Sep 2017 23:08:24 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855c033b6b2b6a6cb7639654e910055310e66f41d96d8a26b954e1f6e7742cd`  
		Last Modified: Fri, 11 Aug 2017 18:50:04 GMT  
		Size: 39.7 MB (39688172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b901692b9e04b75d8014b7b6ec1e5d5d657c0ec71861c58a957083076e2241e`  
		Last Modified: Fri, 11 Aug 2017 19:43:08 GMT  
		Size: 43.9 MB (43917225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb03ac9edcd7e4803cba2dee775969ff85a0bd070d3921d1230340b3219979c2`  
		Last Modified: Fri, 11 Aug 2017 19:43:36 GMT  
		Size: 78.0 MB (77999898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1765a51a3a0a2a237316ff072ebd23e118d1d299240c04ec52a5659c9c410`  
		Last Modified: Fri, 11 Aug 2017 19:42:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51207a1e6ecadc54a9bc93076327de63566561f9d83c354d064b3cdd49bd61e9`  
		Last Modified: Fri, 01 Sep 2017 23:09:21 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683d02a52374bb3b246f2546c089e8d9bc85aba24d191dc8cd041576ca740fd1`  
		Last Modified: Fri, 01 Sep 2017 23:09:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; 386

```console
$ docker pull golang@sha256:7510cce7bfa8a6e2481e3b06c6bf9d1a3bd337b598209f4e1240743dc64600b8
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256584378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61410d1ead29453c3ee7f2eaf699249b99a27aa4e645d728e96cf13610c39cb4`
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
# Sat, 09 Sep 2017 14:35:50 GMT
ENV GOLANG_VERSION=1.8.3
# Sat, 09 Sep 2017 14:36:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:36:00 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:36:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:36:01 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:36:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Sat, 09 Sep 2017 14:40:05 GMT
RUN mkdir -p /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
WORKDIR /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
CMD ["go-wrapper" "run"]
# Sat, 09 Sep 2017 14:40:06 GMT
ONBUILD COPY . /go/src/app
# Sat, 09 Sep 2017 14:40:06 GMT
ONBUILD RUN go-wrapper download
# Sat, 09 Sep 2017 14:40:07 GMT
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
	-	`sha256:e7a8b62361825f3cb24aa1aedf5b4e572ab0249a5a512d4db35b95d13933e17b`  
		Last Modified: Sat, 09 Sep 2017 14:46:22 GMT  
		Size: 77.7 MB (77735779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0a319ebb33a85ba4551f685120cda2197a3647936b4d1c909f24b5f3a7725`  
		Last Modified: Sat, 09 Sep 2017 14:45:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94df37ba5d82291ea32a57017e1f69013c1337f60e682bb583a8c182a166707f`  
		Last Modified: Sat, 09 Sep 2017 14:46:00 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3cb8de87f395567773ad63fe4e9f3ea12b637fb3ca66f600fcfa1eda4f94f`  
		Last Modified: Sat, 09 Sep 2017 14:50:09 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; ppc64le

```console
$ docker pull golang@sha256:1bc661e9a747a13d95141c1014133595b2593ec82bfc77717b8452ac711f28df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.1 MB (239123406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da481f192626bf23dd6e17bc569f8464d98b2f91a0ab24680f5742d221262a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:33:23 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 25 Jul 2017 04:33:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 25 Jul 2017 04:33:39 GMT
ENV GOPATH=/go
# Tue, 25 Jul 2017 04:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 04:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 25 Jul 2017 04:33:44 GMT
WORKDIR /go
# Wed, 30 Aug 2017 15:50:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Wed, 30 Aug 2017 15:50:37 GMT
RUN mkdir -p /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
WORKDIR /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD COPY . /go/src/app
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 30 Aug 2017 15:50:38 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7578a5cc21ad4322162e2c95f06786242e7a2f7224390074bd2d05a6fdd4d848`  
		Last Modified: Tue, 25 Jul 2017 04:37:17 GMT  
		Size: 48.7 MB (48720064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927043be769079cfc3fdb68da9469b434cd100ef84182fe1aa711bd8ff97bbf2`  
		Last Modified: Tue, 25 Jul 2017 04:37:27 GMT  
		Size: 76.7 MB (76657451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47466371624ce7762dbffe00b9826b5aaa8fd89a117bc95580765cebe961617c`  
		Last Modified: Tue, 25 Jul 2017 04:36:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d06593da0368c7c95011c2eb968508406e3492f1115c5c629415b7189500b`  
		Last Modified: Wed, 30 Aug 2017 15:51:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7774a18c8a0bd20cea13932abeb439fef0b5ce8720092c367037e01ff5c8f8c4`  
		Last Modified: Wed, 30 Aug 2017 15:52:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.8-onbuild` - linux; s390x

```console
$ docker pull golang@sha256:282bf8077bcdeb5909e396cb9274ed6ec70521dddbde487ef58d3ceccb4cdc2a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233004676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f37ae596cf7be70e2a4c768ddbffd41bb5aec0eed7b3c56b95e33f59ef4e60`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:01:42 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 08 Sep 2017 17:01:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:52 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:53 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Fri, 08 Sep 2017 17:01:56 GMT
RUN mkdir -p /go/src/app
# Fri, 08 Sep 2017 17:01:56 GMT
WORKDIR /go/src/app
# Fri, 08 Sep 2017 17:01:56 GMT
CMD ["go-wrapper" "run"]
# Fri, 08 Sep 2017 17:01:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 08 Sep 2017 17:01:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 08 Sep 2017 17:01:58 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f912b7befb19eaf03925ab6e6214a1c30581126de920bb4c39a9b89126c140`  
		Last Modified: Fri, 08 Sep 2017 17:03:16 GMT  
		Size: 42.0 MB (42035626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504ba98577e1f67368b1fd04e4a84fd5467597fb9d8eec654891dce3c4647515`  
		Last Modified: Fri, 08 Sep 2017 17:03:25 GMT  
		Size: 75.3 MB (75344476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264925dff84e46b4e91ed89f866209b68cd142433c497888f6d9bd6cb92c5ae3`  
		Last Modified: Fri, 08 Sep 2017 17:03:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0c067276f40686296aa98629327ce79ad54518cbd78f50d50a2337260bd56f`  
		Last Modified: Fri, 08 Sep 2017 17:03:10 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6152e865dc081739004f4849463d9b2e7b6a216ffb63041295d9dc4a59af60`  
		Last Modified: Fri, 08 Sep 2017 17:03:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-windowsservercore`

```console
$ docker pull golang@sha256:9841dc7949ae409af42b1878901c54939d253204dc3eab6787eda5f816ab729d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.8.3-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:535c7d6a1ac73d88ac9078fb66755bbf0fe4ada0540f75e5b22c2d43bf02f2a1
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5463629506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de78bb17c95678804dc1bfc8224e3f81abee8ed5b8f5f163c4b8d440ca03d02c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Aug 2017 23:11:17 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 09 Aug 2017 23:14:11 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:14:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef8b59866991f58b3045fb73ddf4bf3c1115a2fa54fb84e1b0477b861f74b2`  
		Last Modified: Wed, 09 Aug 2017 23:23:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b633d25a30bb68621b55d867f4841ed61641543545c4d6f503d74a96c7e5078f`  
		Last Modified: Wed, 09 Aug 2017 23:24:14 GMT  
		Size: 102.0 MB (101993445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63acac46250969cebc1f2aab3f68e3510f098f7265505b94fe6627a204468515`  
		Last Modified: Wed, 09 Aug 2017 23:23:48 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:9841dc7949ae409af42b1878901c54939d253204dc3eab6787eda5f816ab729d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.8-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:535c7d6a1ac73d88ac9078fb66755bbf0fe4ada0540f75e5b22c2d43bf02f2a1
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5463629506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de78bb17c95678804dc1bfc8224e3f81abee8ed5b8f5f163c4b8d440ca03d02c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:02:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:02:49 GMT
ENV GIT_VERSION=2.11.1
# Wed, 09 Aug 2017 23:02:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 09 Aug 2017 23:02:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 09 Aug 2017 23:02:57 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 09 Aug 2017 23:03:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:03:49 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:04:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Aug 2017 23:11:17 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 09 Aug 2017 23:14:11 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:14:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ccc26568c531f834e36947c2392a7ef8702cad1e6ae3c8ee6f3887b588d68de3`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2461b5d23777d595639dbcfd94b314ce68b271ae9d03d65f26aec29cc03a638`  
		Last Modified: Wed, 09 Aug 2017 23:22:26 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d716c85deb4ca39cbb12696d83f08ea8c226171b12071731f66e8a0056edade7`  
		Last Modified: Wed, 09 Aug 2017 23:22:24 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21316779ba82b63367b8828bfe39b2e1d89d8d160029f5be2c0b03674d80159f`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9138ea572b95cbe2decbd1dc194b547925094cf33c30755fa1b2fd0427018d13`  
		Last Modified: Wed, 09 Aug 2017 23:22:22 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563393b476b86653ae40533a9392c711fcbf9e092246278d76184e799092cca6`  
		Last Modified: Wed, 09 Aug 2017 23:22:29 GMT  
		Size: 29.2 MB (29183702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c30beacd1c8e8cd41ad1b4798474546ff75350d5951ca9fdd6be903b904ec`  
		Last Modified: Wed, 09 Aug 2017 23:22:17 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a0c6238373507e8174da22c0bd9871bd1b49abb95d81b70d44881f209bb5e`  
		Last Modified: Wed, 09 Aug 2017 23:22:20 GMT  
		Size: 4.8 MB (4758224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef8b59866991f58b3045fb73ddf4bf3c1115a2fa54fb84e1b0477b861f74b2`  
		Last Modified: Wed, 09 Aug 2017 23:23:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b633d25a30bb68621b55d867f4841ed61641543545c4d6f503d74a96c7e5078f`  
		Last Modified: Wed, 09 Aug 2017 23:24:14 GMT  
		Size: 102.0 MB (101993445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63acac46250969cebc1f2aab3f68e3510f098f7265505b94fe6627a204468515`  
		Last Modified: Wed, 09 Aug 2017 23:23:48 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-nanoserver`

```console
$ docker pull golang@sha256:b625566b1d7189c96bb5d000e7cec4c1bed206e32d65706db2003a89ee2d0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.8.3-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:37a9e39bab5032174e36603914884dc161788f6a7cd6decfaf154a7a3fc027e5
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.4 MB (484383389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed658038738bf92d653c7626ffce2d173bbf4fa8f92bbb0562fb7dfceba9cdc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 09 Aug 2017 23:14:17 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 09 Aug 2017 23:16:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:16:58 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e219b28a126fb0c4706509ba360e0a39b810d26cf32db160c1eba3856cdeb3`  
		Last Modified: Wed, 09 Aug 2017 23:24:34 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96ca82dab1b7b5c51bb1e5ffbdfae87d971fd85a7cc4a99e900e0253bb92df0`  
		Last Modified: Wed, 09 Aug 2017 23:24:51 GMT  
		Size: 93.5 MB (93513963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a56a4f0295e0ed34b9149c59584ad459a8e9a5776f315c0fda2167aef08383`  
		Last Modified: Wed, 09 Aug 2017 23:24:29 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:b625566b1d7189c96bb5d000e7cec4c1bed206e32d65706db2003a89ee2d0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `golang:1.8-nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull golang@sha256:37a9e39bab5032174e36603914884dc161788f6a7cd6decfaf154a7a3fc027e5
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.4 MB (484383389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed658038738bf92d653c7626ffce2d173bbf4fa8f92bbb0562fb7dfceba9cdc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:07:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Aug 2017 23:07:35 GMT
ENV GOPATH=C:\gopath
# Wed, 09 Aug 2017 23:08:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 09 Aug 2017 23:14:17 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 09 Aug 2017 23:16:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:16:58 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:821e97e3a65935dc586383dd3c52cce4e7210667621ed4856002d3552b35e0df`  
		Last Modified: Wed, 09 Aug 2017 23:23:09 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a52e37ada99bef8b80f7c7cea1677050da6155b62605e52895b8030f011a29`  
		Last Modified: Wed, 09 Aug 2017 23:23:05 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59fee285e132f12d844c7e490b6e5d48ebaa5784a41ca8f35edc2a063c99a`  
		Last Modified: Wed, 09 Aug 2017 23:23:07 GMT  
		Size: 822.6 KB (822562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e219b28a126fb0c4706509ba360e0a39b810d26cf32db160c1eba3856cdeb3`  
		Last Modified: Wed, 09 Aug 2017 23:24:34 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96ca82dab1b7b5c51bb1e5ffbdfae87d971fd85a7cc4a99e900e0253bb92df0`  
		Last Modified: Wed, 09 Aug 2017 23:24:51 GMT  
		Size: 93.5 MB (93513963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a56a4f0295e0ed34b9149c59584ad459a8e9a5776f315c0fda2167aef08383`  
		Last Modified: Wed, 09 Aug 2017 23:24:29 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
