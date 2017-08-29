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
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1.9.0-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1.9-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1.9.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:57a7b96bc4c4244706339947a812aaec67a7fee7050a56ebc8f1380f6d95f0a4
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270491320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2f23f821ca755dd3ecff56666abcea33047d308de3b72c1d939c6ddb1d008b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Aug 2017 23:50:53 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:51:06 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:51:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:51:07 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67e3940d3dc2b9c569eb81faf2618e2507c8d50ee14f38b4ee386200d7d32c1`  
		Last Modified: Thu, 24 Aug 2017 23:53:34 GMT  
		Size: 102.6 MB (102596106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba53fcc5f2dc0b0ae2602ffcb20900c27f35b9866e3a0695331eff7211887b48`  
		Last Modified: Thu, 24 Aug 2017 23:53:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14e5b438854fdadb98575301ce5bab81b4e1767aa772c071690e901edfeaa6a`  
		Last Modified: Tue, 29 Aug 2017 20:21:57 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-alpine3.6`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1.9.0-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.6`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.6`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-alpine`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1.9.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:1cfa7d45b5010b62ae37fdc40dafc5a9d7d60ea4b468fb310213064e76e1c894
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82915377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302f3a9967d67c8e63ddbd6e943b3aef326a32c3501698e4de95fa1945e10ed3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Thu, 24 Aug 2017 23:51:13 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:51:13 GMT
COPY file:9c751f4a8b882686654a3b1ed338206ee5d076457c178547f59b35159e17a438 in /go-alpine-patches/ 
# Thu, 24 Aug 2017 23:52:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Aug 2017 23:52:18 GMT
ENV GOPATH=/go
# Thu, 24 Aug 2017 23:52:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Aug 2017 23:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Aug 2017 23:52:20 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078ece33e4035c9024579e7e41f4d5b8053091a316adc21db297338203a535a`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fb06d353c82784a034b7ba086d63f2812a1b600e4b4fc3659dc295410be170`  
		Last Modified: Thu, 24 Aug 2017 23:55:19 GMT  
		Size: 80.6 MB (80571709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7086be2842902772437ae9225948156390dfe6c7129494cfd018b6a6aee9c7c`  
		Last Modified: Thu, 24 Aug 2017 23:54:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea968140ca88bd3a3fd8df8156569ef84ee7a26cdc260399e150135b027422db`  
		Last Modified: Tue, 29 Aug 2017 20:22:57 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-windowsservercore`

```console
$ docker pull golang@sha256:730dcf48108ed97d95dc156e6da399ecae6fe18ab18b69dcdcefa892928519cc
```

-	Platforms:
	-	windows; amd64

### `golang:1.9.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443929488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092a1c42a84dab9305c5ed99953f641dbb9cbfae193cd019add69395d712050`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Aug 2017 23:53:00 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:56:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 23:56:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa985be47b4d5ae373357a264dc67a02d19ff40888a652428be340518380d2a`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3db3b3a02dc68e55e3726309748a1c0493272503e005ec0385f6001edcc4dc`  
		Last Modified: Fri, 25 Aug 2017 00:00:38 GMT  
		Size: 114.7 MB (114695330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a716923bbf5f7944d211fc4879c9ebf0e2fc940125fb6b5c52f893b424c89a0`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:730dcf48108ed97d95dc156e6da399ecae6fe18ab18b69dcdcefa892928519cc
```

-	Platforms:
	-	windows; amd64

### `golang:1.9-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443929488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092a1c42a84dab9305c5ed99953f641dbb9cbfae193cd019add69395d712050`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Aug 2017 23:53:00 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:56:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 23:56:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa985be47b4d5ae373357a264dc67a02d19ff40888a652428be340518380d2a`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3db3b3a02dc68e55e3726309748a1c0493272503e005ec0385f6001edcc4dc`  
		Last Modified: Fri, 25 Aug 2017 00:00:38 GMT  
		Size: 114.7 MB (114695330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a716923bbf5f7944d211fc4879c9ebf0e2fc940125fb6b5c52f893b424c89a0`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:730dcf48108ed97d95dc156e6da399ecae6fe18ab18b69dcdcefa892928519cc
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443929488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092a1c42a84dab9305c5ed99953f641dbb9cbfae193cd019add69395d712050`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Aug 2017 23:53:00 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:56:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 23:56:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa985be47b4d5ae373357a264dc67a02d19ff40888a652428be340518380d2a`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3db3b3a02dc68e55e3726309748a1c0493272503e005ec0385f6001edcc4dc`  
		Last Modified: Fri, 25 Aug 2017 00:00:38 GMT  
		Size: 114.7 MB (114695330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a716923bbf5f7944d211fc4879c9ebf0e2fc940125fb6b5c52f893b424c89a0`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:730dcf48108ed97d95dc156e6da399ecae6fe18ab18b69dcdcefa892928519cc
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443929488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1092a1c42a84dab9305c5ed99953f641dbb9cbfae193cd019add69395d712050`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Aug 2017 23:53:00 GMT
ENV GOLANG_VERSION=1.9
# Thu, 24 Aug 2017 23:56:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 23:56:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa985be47b4d5ae373357a264dc67a02d19ff40888a652428be340518380d2a`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3db3b3a02dc68e55e3726309748a1c0493272503e005ec0385f6001edcc4dc`  
		Last Modified: Fri, 25 Aug 2017 00:00:38 GMT  
		Size: 114.7 MB (114695330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a716923bbf5f7944d211fc4879c9ebf0e2fc940125fb6b5c52f893b424c89a0`  
		Last Modified: Fri, 25 Aug 2017 00:00:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.0-nanoserver`

```console
$ docker pull golang@sha256:b3b90f01fcf5b51e824d045d174c7d251e09a26f09c3a999e61180330c031b49
```

-	Platforms:
	-	windows; amd64

### `golang:1.9.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 MB (493082749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b52637036566a18019d723555e33884689965465153617687f84dd8bab33b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 24 Aug 2017 23:56:38 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:00:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:00:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae128a03fd32a2e037378dc3ca2e4ddb7873984049222b31facd8b79d1ae4`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c3c2ab14432037c1307b60ad5bd37155ebf5941f5aab10fa034d612c1bd05`  
		Last Modified: Fri, 25 Aug 2017 00:01:13 GMT  
		Size: 109.4 MB (109411725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caea420ca4a8ae9e09362ce719ffd11abb339a759de4e96d685ace6748e98ad`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:b3b90f01fcf5b51e824d045d174c7d251e09a26f09c3a999e61180330c031b49
```

-	Platforms:
	-	windows; amd64

### `golang:1.9-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 MB (493082749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b52637036566a18019d723555e33884689965465153617687f84dd8bab33b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 24 Aug 2017 23:56:38 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:00:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:00:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae128a03fd32a2e037378dc3ca2e4ddb7873984049222b31facd8b79d1ae4`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c3c2ab14432037c1307b60ad5bd37155ebf5941f5aab10fa034d612c1bd05`  
		Last Modified: Fri, 25 Aug 2017 00:01:13 GMT  
		Size: 109.4 MB (109411725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caea420ca4a8ae9e09362ce719ffd11abb339a759de4e96d685ace6748e98ad`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:b3b90f01fcf5b51e824d045d174c7d251e09a26f09c3a999e61180330c031b49
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 MB (493082749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b52637036566a18019d723555e33884689965465153617687f84dd8bab33b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 24 Aug 2017 23:56:38 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:00:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:00:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae128a03fd32a2e037378dc3ca2e4ddb7873984049222b31facd8b79d1ae4`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c3c2ab14432037c1307b60ad5bd37155ebf5941f5aab10fa034d612c1bd05`  
		Last Modified: Fri, 25 Aug 2017 00:01:13 GMT  
		Size: 109.4 MB (109411725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caea420ca4a8ae9e09362ce719ffd11abb339a759de4e96d685ace6748e98ad`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:b3b90f01fcf5b51e824d045d174c7d251e09a26f09c3a999e61180330c031b49
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 MB (493082749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b52637036566a18019d723555e33884689965465153617687f84dd8bab33b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 24 Aug 2017 23:56:38 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:00:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '874b144b994643cff1d3f5875369d65c01c216bb23b8edddf608facc43966c8b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 25 Aug 2017 00:00:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae128a03fd32a2e037378dc3ca2e4ddb7873984049222b31facd8b79d1ae4`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c3c2ab14432037c1307b60ad5bd37155ebf5941f5aab10fa034d612c1bd05`  
		Last Modified: Fri, 25 Aug 2017 00:01:13 GMT  
		Size: 109.4 MB (109411725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caea420ca4a8ae9e09362ce719ffd11abb339a759de4e96d685ace6748e98ad`  
		Last Modified: Fri, 25 Aug 2017 00:00:52 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-stretch`

```console
$ docker pull golang@sha256:65a864508c0a2a1c7e9ae34b2f35dc0510610841b569f4f7db47fba9013d31ff
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257934050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff8b552a687ee57fdabe2304d4f76bc732eb608b7d7568eaf7ccb43d0a26151`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:22 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:13:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:13:32 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:13:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:13:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:13:34 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08de036b622127b1271077fcbc0ee0b4ccc8eba35d4d4d98acf9868ab7060a21`  
		Last Modified: Wed, 26 Jul 2017 05:17:06 GMT  
		Size: 90.0 MB (90038835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2d6d95e35c1699c7976d2632f62232d63894d9345a21e9f1dd2631f66b9e64`  
		Last Modified: Wed, 26 Jul 2017 05:16:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c596db4a0707edc001bec564b93359cf44e3d2c6965a40061736b3f64db03371`  
		Last Modified: Tue, 29 Aug 2017 20:23:53 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:65a864508c0a2a1c7e9ae34b2f35dc0510610841b569f4f7db47fba9013d31ff
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257934050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff8b552a687ee57fdabe2304d4f76bc732eb608b7d7568eaf7ccb43d0a26151`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:22 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:13:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:13:32 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:13:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:13:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:13:34 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08de036b622127b1271077fcbc0ee0b4ccc8eba35d4d4d98acf9868ab7060a21`  
		Last Modified: Wed, 26 Jul 2017 05:17:06 GMT  
		Size: 90.0 MB (90038835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2d6d95e35c1699c7976d2632f62232d63894d9345a21e9f1dd2631f66b9e64`  
		Last Modified: Wed, 26 Jul 2017 05:16:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c596db4a0707edc001bec564b93359cf44e3d2c6965a40061736b3f64db03371`  
		Last Modified: Tue, 29 Aug 2017 20:23:53 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-jessie`

```console
$ docker pull golang@sha256:0f85ae9960c719a53174b51974554c14e530828c2c8d0f4c1e76d58fd8341dce
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1b36e593955188de3f4d204737a389a16bd5e40eb1b3df88ff0ab1bc89bad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-jessie`

```console
$ docker pull golang@sha256:0f85ae9960c719a53174b51974554c14e530828c2c8d0f4c1e76d58fd8341dce
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1b36e593955188de3f4d204737a389a16bd5e40eb1b3df88ff0ab1bc89bad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3`

```console
$ docker pull golang@sha256:0f85ae9960c719a53174b51974554c14e530828c2c8d0f4c1e76d58fd8341dce
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1b36e593955188de3f4d204737a389a16bd5e40eb1b3df88ff0ab1bc89bad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:0f85ae9960c719a53174b51974554c14e530828c2c8d0f4c1e76d58fd8341dce
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1b36e593955188de3f4d204737a389a16bd5e40eb1b3df88ff0ab1bc89bad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine3.6`

```console
$ docker pull golang@sha256:5a366aba112c43a2dc3507c4a1c96b0e09233d17191d8716a51b5da5d94e46a3
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78381688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c9eaa22f23202e363b355de2e769625cc458ccbbcaeab355954007c7565f43`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:22:40 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:22:41 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:23:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:27:51 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:27:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:27:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:28:18 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aafb53833126b19e7319f0534d44b2760eb8432c33054f6c04473b58b8550f`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c75b9264d7f890c885174f8f1436a964c4f40d4a785ba4606836671b94785d`  
		Last Modified: Thu, 29 Jun 2017 20:50:00 GMT  
		Size: 76.0 MB (76038025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c035f37ef25bb28fd852b1915e842a040343a76f1164f25a487c539f320a4c`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6350c3bfc8e8e4357729323ba29510d0a5295e014e9e749693687c7c0396354d`  
		Last Modified: Tue, 29 Aug 2017 20:24:42 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.6`

```console
$ docker pull golang@sha256:5a366aba112c43a2dc3507c4a1c96b0e09233d17191d8716a51b5da5d94e46a3
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78381688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c9eaa22f23202e363b355de2e769625cc458ccbbcaeab355954007c7565f43`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:22:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:22:40 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:22:41 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:23:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:27:51 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:27:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:27:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:28:18 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:34 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d78e8fb0eed688aedde0b885747e92f5bc3c2f1862dc7b5c3e942cf7a34b6d`  
		Last Modified: Thu, 29 Jun 2017 20:45:55 GMT  
		Size: 351.3 KB (351305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aafb53833126b19e7319f0534d44b2760eb8432c33054f6c04473b58b8550f`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c75b9264d7f890c885174f8f1436a964c4f40d4a785ba4606836671b94785d`  
		Last Modified: Thu, 29 Jun 2017 20:50:00 GMT  
		Size: 76.0 MB (76038025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c035f37ef25bb28fd852b1915e842a040343a76f1164f25a487c539f320a4c`  
		Last Modified: Thu, 29 Jun 2017 20:49:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6350c3bfc8e8e4357729323ba29510d0a5295e014e9e749693687c7c0396354d`  
		Last Modified: Tue, 29 Aug 2017 20:24:42 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine3.5`

```console
$ docker pull golang@sha256:2287e0e274c1d2e9076c1f81d04f1a63c86b73c73603b09caada5da307a8f86d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920fc795cf626b339ceff08b68f00392c5ec8c84b289d836c67dddc9252f60`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:18:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:18:17 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:18:19 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:19:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:20:53 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:20:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:21:21 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba570f08729ac83b7bc6f5085ee63a7d954e70c2533535b34f20a2de45726822`  
		Last Modified: Thu, 29 Jun 2017 20:44:34 GMT  
		Size: 350.6 KB (350626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f959ba8ec26796853ce5b7f03901095df431c7033b60e31ccd90004e0d8469`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43126a124ea63a2f031b5203728ffda8abc62068222c301672e2591af813acfa`  
		Last Modified: Thu, 29 Jun 2017 20:47:47 GMT  
		Size: 75.6 MB (75627926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c83f72e91e2b174f968ea36fac65e6098c3794b968760a9f1c42e23fbb8759`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b1bf6a3d175898f3652b9d0348e453c7519b6b6c4450b5402209dd71692d51`  
		Last Modified: Tue, 29 Aug 2017 20:25:00 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine3.5`

```console
$ docker pull golang@sha256:2287e0e274c1d2e9076c1f81d04f1a63c86b73c73603b09caada5da307a8f86d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920fc795cf626b339ceff08b68f00392c5ec8c84b289d836c67dddc9252f60`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:18:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:18:17 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:18:19 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:19:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:20:53 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:20:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:21:21 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba570f08729ac83b7bc6f5085ee63a7d954e70c2533535b34f20a2de45726822`  
		Last Modified: Thu, 29 Jun 2017 20:44:34 GMT  
		Size: 350.6 KB (350626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f959ba8ec26796853ce5b7f03901095df431c7033b60e31ccd90004e0d8469`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43126a124ea63a2f031b5203728ffda8abc62068222c301672e2591af813acfa`  
		Last Modified: Thu, 29 Jun 2017 20:47:47 GMT  
		Size: 75.6 MB (75627926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c83f72e91e2b174f968ea36fac65e6098c3794b968760a9f1c42e23fbb8759`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b1bf6a3d175898f3652b9d0348e453c7519b6b6c4450b5402209dd71692d51`  
		Last Modified: Tue, 29 Aug 2017 20:25:00 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine`

```console
$ docker pull golang@sha256:2287e0e274c1d2e9076c1f81d04f1a63c86b73c73603b09caada5da307a8f86d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920fc795cf626b339ceff08b68f00392c5ec8c84b289d836c67dddc9252f60`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:18:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:18:17 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:18:19 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:19:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:20:53 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:20:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:21:21 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba570f08729ac83b7bc6f5085ee63a7d954e70c2533535b34f20a2de45726822`  
		Last Modified: Thu, 29 Jun 2017 20:44:34 GMT  
		Size: 350.6 KB (350626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f959ba8ec26796853ce5b7f03901095df431c7033b60e31ccd90004e0d8469`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43126a124ea63a2f031b5203728ffda8abc62068222c301672e2591af813acfa`  
		Last Modified: Thu, 29 Jun 2017 20:47:47 GMT  
		Size: 75.6 MB (75627926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c83f72e91e2b174f968ea36fac65e6098c3794b968760a9f1c42e23fbb8759`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b1bf6a3d175898f3652b9d0348e453c7519b6b6c4450b5402209dd71692d51`  
		Last Modified: Tue, 29 Aug 2017 20:25:00 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:2287e0e274c1d2e9076c1f81d04f1a63c86b73c73603b09caada5da307a8f86d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77950779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920fc795cf626b339ceff08b68f00392c5ec8c84b289d836c67dddc9252f60`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:18:16 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Jun 2017 21:18:17 GMT
ENV GOLANG_VERSION=1.8.3
# Tue, 27 Jun 2017 21:18:19 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 27 Jun 2017 21:19:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Jun 2017 21:20:53 GMT
ENV GOPATH=/go
# Tue, 27 Jun 2017 21:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:20:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Jun 2017 21:21:21 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba570f08729ac83b7bc6f5085ee63a7d954e70c2533535b34f20a2de45726822`  
		Last Modified: Thu, 29 Jun 2017 20:44:34 GMT  
		Size: 350.6 KB (350626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f959ba8ec26796853ce5b7f03901095df431c7033b60e31ccd90004e0d8469`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43126a124ea63a2f031b5203728ffda8abc62068222c301672e2591af813acfa`  
		Last Modified: Thu, 29 Jun 2017 20:47:47 GMT  
		Size: 75.6 MB (75627926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c83f72e91e2b174f968ea36fac65e6098c3794b968760a9f1c42e23fbb8759`  
		Last Modified: Thu, 29 Jun 2017 20:47:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b1bf6a3d175898f3652b9d0348e453c7519b6b6c4450b5402209dd71692d51`  
		Last Modified: Tue, 29 Aug 2017 20:25:00 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-onbuild`

```console
$ docker pull golang@sha256:88484bd78f3964f27e8dfa123cf6f12f1238c35caf458d0c40f5ef9d5b1bb09f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c648d02d02729171dbb144a8e4cb7923884d6149f99746ba8d6c343ed381aa`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:21:45 GMT
RUN mkdir -p /go/src/app
# Tue, 29 Aug 2017 20:21:46 GMT
WORKDIR /go/src/app
# Tue, 29 Aug 2017 20:21:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 29 Aug 2017 20:21:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 29 Aug 2017 20:21:47 GMT
ONBUILD RUN go-wrapper download
# Tue, 29 Aug 2017 20:21:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c89141495cf922edc9cad60eb813a28cd9d0da5b0fe23d47c03433742d3eac`  
		Last Modified: Tue, 29 Aug 2017 20:25:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:88484bd78f3964f27e8dfa123cf6f12f1238c35caf458d0c40f5ef9d5b1bb09f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c648d02d02729171dbb144a8e4cb7923884d6149f99746ba8d6c343ed381aa`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Tue, 29 Aug 2017 20:21:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:21:45 GMT
RUN mkdir -p /go/src/app
# Tue, 29 Aug 2017 20:21:46 GMT
WORKDIR /go/src/app
# Tue, 29 Aug 2017 20:21:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 29 Aug 2017 20:21:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 29 Aug 2017 20:21:47 GMT
ONBUILD RUN go-wrapper download
# Tue, 29 Aug 2017 20:21:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a802e694c5c4d75afe19a316b4122a5e8406e000b3ad594ab2c87b97b12fd74d`  
		Last Modified: Tue, 29 Aug 2017 20:24:12 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c89141495cf922edc9cad60eb813a28cd9d0da5b0fe23d47c03433742d3eac`  
		Last Modified: Tue, 29 Aug 2017 20:25:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-windowsservercore`

```console
$ docker pull golang@sha256:e6e1b71b49969cb6270d868bd83b48d85b0f86cc7dc3bc5d1b287a0f68e17407
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5431210556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e70f7796956cad253c6d89d128141ac611b4f5360e1c27b1b5a1d390b4cb5f0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 28 Jul 2017 18:39:14 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 28 Jul 2017 18:42:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e034a87ef6f55c55585187f3262b78ea7b89d1e5818afdaab6d4fc56b316e1e`  
		Last Modified: Fri, 28 Jul 2017 18:52:48 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375b21d34a92be95f9b07e7fcc1ffc561a4b39260862acb823207405e80d0ff1`  
		Last Modified: Fri, 28 Jul 2017 18:53:17 GMT  
		Size: 102.0 MB (101976394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ce1750ae1a113caadc13517219c391c0c66edd07329a2a305f3ded119a00af`  
		Last Modified: Fri, 28 Jul 2017 18:52:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:e6e1b71b49969cb6270d868bd83b48d85b0f86cc7dc3bc5d1b287a0f68e17407
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5431210556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e70f7796956cad253c6d89d128141ac611b4f5360e1c27b1b5a1d390b4cb5f0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:29:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:29:59 GMT
ENV GIT_VERSION=2.11.1
# Fri, 28 Jul 2017 18:30:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 28 Jul 2017 18:30:05 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 28 Jul 2017 18:30:09 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 28 Jul 2017 18:31:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:31:13 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:31:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 28 Jul 2017 18:39:14 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 28 Jul 2017 18:42:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:42:32 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:35931e174f3cc5f305233235f76454a6744970dcbe50000c4dba61b50742c54b`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e30e1b2d39b5701d2da02904a87709fd39a6b10293ef7b88e9462a3ae728a28`  
		Last Modified: Fri, 28 Jul 2017 18:51:25 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc759b266aca88b51a7756cd4113bccb1c0dc768778339d130e7beeefc1435`  
		Last Modified: Fri, 28 Jul 2017 18:51:24 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea2f49ce85160cd30e367cc22df74ae740290608771e983e5b4680acff42019`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488a673a3d122004bb2c6cc49c854abbe8b2864a54771d1e17a80e56144ff50c`  
		Last Modified: Fri, 28 Jul 2017 18:51:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0eee0957e14c721719051a42ed590f90382daed857af69ec67c195e766332`  
		Last Modified: Fri, 28 Jul 2017 18:51:29 GMT  
		Size: 29.2 MB (29154276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578957b53a2c7e8f48ce9742946b22afa9f4d58df393c436edc651543da1955`  
		Last Modified: Fri, 28 Jul 2017 18:51:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895188475ac2f7d1831f038b1f62e67441927f9cd03c729526e420e2ede5d795`  
		Last Modified: Fri, 28 Jul 2017 18:51:17 GMT  
		Size: 4.7 MB (4740566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e034a87ef6f55c55585187f3262b78ea7b89d1e5818afdaab6d4fc56b316e1e`  
		Last Modified: Fri, 28 Jul 2017 18:52:48 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375b21d34a92be95f9b07e7fcc1ffc561a4b39260862acb823207405e80d0ff1`  
		Last Modified: Fri, 28 Jul 2017 18:53:17 GMT  
		Size: 102.0 MB (101976394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ce1750ae1a113caadc13517219c391c0c66edd07329a2a305f3ded119a00af`  
		Last Modified: Fri, 28 Jul 2017 18:52:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-nanoserver`

```console
$ docker pull golang@sha256:885664fac796aefb6c32628ff1a9eadb471dc8776d0c1cbc49b6f94f726eb4fb
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.3 MB (480269008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf55ea7b6d4161e463c5024165f53943208dafa2c4a3969b3066c710c59f6f8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 28 Jul 2017 18:42:34 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 28 Jul 2017 18:45:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:45:28 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcaef503c314e357b448944cab27811caee24704b92041164299812e4998fdbb`  
		Last Modified: Fri, 28 Jul 2017 18:53:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417dca856fcd01fbd273e641fc68f131734b62ebbf32f18dc10e9f082a225662`  
		Last Modified: Fri, 28 Jul 2017 18:53:59 GMT  
		Size: 96.6 MB (96598001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc880e81c449e6e3a224388dd58024e1a277cedd5fa7248f4f71b2c6354df32`  
		Last Modified: Fri, 28 Jul 2017 18:53:31 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:885664fac796aefb6c32628ff1a9eadb471dc8776d0c1cbc49b6f94f726eb4fb
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.3 MB (480269008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf55ea7b6d4161e463c5024165f53943208dafa2c4a3969b3066c710c59f6f8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 28 Jul 2017 18:35:27 GMT
ENV GOPATH=C:\gopath
# Fri, 28 Jul 2017 18:35:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 28 Jul 2017 18:42:34 GMT
ENV GOLANG_VERSION=1.8.3
# Fri, 28 Jul 2017 18:45:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:45:28 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:815a90c7de022ec1ac26cff95bb4490cdfa114edbe90c97dad360471afc1acdf`  
		Last Modified: Fri, 28 Jul 2017 18:52:10 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0884473bda07c79dea6c1ba8a548ab14b92a4017e270cb9f6a13e62f73344f`  
		Last Modified: Fri, 28 Jul 2017 18:52:06 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b794d483efa6f708f8df6b786860975ae714a6432a3dee64a8e7e637118fa6`  
		Last Modified: Fri, 28 Jul 2017 18:52:07 GMT  
		Size: 819.0 KB (818953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcaef503c314e357b448944cab27811caee24704b92041164299812e4998fdbb`  
		Last Modified: Fri, 28 Jul 2017 18:53:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417dca856fcd01fbd273e641fc68f131734b62ebbf32f18dc10e9f082a225662`  
		Last Modified: Fri, 28 Jul 2017 18:53:59 GMT  
		Size: 96.6 MB (96598001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc880e81c449e6e3a224388dd58024e1a277cedd5fa7248f4f71b2c6354df32`  
		Last Modified: Fri, 28 Jul 2017 18:53:31 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
