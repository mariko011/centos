<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1.7.5`](#golang175)
-	[`golang:1.7`](#golang17)
-	[`golang:1.7.5-onbuild`](#golang175-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1.7.5-wheezy`](#golang175-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1.7.5-alpine`](#golang175-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1.7.5-alpine3.5`](#golang175-alpine35)
-	[`golang:1.7-alpine3.5`](#golang17-alpine35)
-	[`golang:1.7.5-windowsservercore`](#golang175-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1.7.5-nanoserver`](#golang175-nanoserver)
-	[`golang:1.7-nanoserver`](#golang17-nanoserver)
-	[`golang:1.8.0`](#golang180)
-	[`golang:1.8`](#golang18)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.8.0-onbuild`](#golang180-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.8.0-stretch`](#golang180-stretch)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:stretch`](#golangstretch)
-	[`golang:1.8.0-alpine`](#golang180-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.8.0-windowsservercore`](#golang180-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.8.0-nanoserver`](#golang180-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)

## `golang:1.7.5`

```console
$ docker pull golang@sha256:df1b6600d4bc712d11baa07859bfdc5e72b42617c2d9d9a181e364c70bc92f2f
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255532809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00cd706eb8c2c2b9be449e8810b24f7b024b15d4a445c4916c478d1b25219c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:03 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:14 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:16 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85989dde0a8f2140469128438ce079df390d9b49951fe587ec4d5a30385e83`  
		Last Modified: Thu, 23 Mar 2017 18:13:16 GMT  
		Size: 83.3 MB (83251351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8a433298d212707c8b1650a953769458b66c3f08283ba2ea997bdf6b8c88c`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf62022c824017d53f498f9129885851efe899d8070bba0b9754dada7814478`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:df1b6600d4bc712d11baa07859bfdc5e72b42617c2d9d9a181e364c70bc92f2f
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255532809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00cd706eb8c2c2b9be449e8810b24f7b024b15d4a445c4916c478d1b25219c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:03 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:14 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:16 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85989dde0a8f2140469128438ce079df390d9b49951fe587ec4d5a30385e83`  
		Last Modified: Thu, 23 Mar 2017 18:13:16 GMT  
		Size: 83.3 MB (83251351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8a433298d212707c8b1650a953769458b66c3f08283ba2ea997bdf6b8c88c`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf62022c824017d53f498f9129885851efe899d8070bba0b9754dada7814478`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-onbuild`

```console
$ docker pull golang@sha256:1ac4e44a8f8c60813b59191a9c09a8a876a0b80bb64f7645d0623dc9deff7b22
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255532941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae99316c892187aceb4a3ce62c5814c899c1a6237121ba1201e6f2e7a5e3786`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:03 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:14 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:16 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:36:18 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:36:18 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:36:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85989dde0a8f2140469128438ce079df390d9b49951fe587ec4d5a30385e83`  
		Last Modified: Thu, 23 Mar 2017 18:13:16 GMT  
		Size: 83.3 MB (83251351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8a433298d212707c8b1650a953769458b66c3f08283ba2ea997bdf6b8c88c`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf62022c824017d53f498f9129885851efe899d8070bba0b9754dada7814478`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9352d2446e1b6d0d7d12eb4c853b6a43b727dc3161a4c2b0892cbce13f3151ee`  
		Last Modified: Thu, 23 Mar 2017 18:14:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:1ac4e44a8f8c60813b59191a9c09a8a876a0b80bb64f7645d0623dc9deff7b22
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255532941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae99316c892187aceb4a3ce62c5814c899c1a6237121ba1201e6f2e7a5e3786`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:03 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:14 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:16 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:36:18 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:36:18 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:36:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:36:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85989dde0a8f2140469128438ce079df390d9b49951fe587ec4d5a30385e83`  
		Last Modified: Thu, 23 Mar 2017 18:13:16 GMT  
		Size: 83.3 MB (83251351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8a433298d212707c8b1650a953769458b66c3f08283ba2ea997bdf6b8c88c`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf62022c824017d53f498f9129885851efe899d8070bba0b9754dada7814478`  
		Last Modified: Thu, 23 Mar 2017 18:12:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9352d2446e1b6d0d7d12eb4c853b6a43b727dc3161a4c2b0892cbce13f3151ee`  
		Last Modified: Thu, 23 Mar 2017 18:14:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-wheezy`

```console
$ docker pull golang@sha256:5802f2a01492e57c1db618e060c8f1e226e83617d1f25d8c475b6359394a2004
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201245169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55d940af8dc71b9eb67a615f3c002ef9d4de718202ed3ddc2a9d1b974d224b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:49 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:59 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:37:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:37:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:37:01 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:37:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da70d996316663e68d1ad0aec81e44357e1688eeb8d4f984f85d03a00237b81`  
		Last Modified: Thu, 23 Mar 2017 18:15:00 GMT  
		Size: 36.5 MB (36453627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c53fc464efdce9cbd0d2ce89ca7fdd9908646f20550c8ef1d15bafd44064aaf`  
		Last Modified: Thu, 23 Mar 2017 18:15:19 GMT  
		Size: 83.3 MB (83251363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7163035a67adc4f200d5804dd69347129ed2d5d6291ab5b50fb34c8b260b42`  
		Last Modified: Thu, 23 Mar 2017 18:14:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c659cc817a7e3ab75e35fd63f62b249a871cb145f872dd1a106fb2ede5c36`  
		Last Modified: Thu, 23 Mar 2017 18:14:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:5802f2a01492e57c1db618e060c8f1e226e83617d1f25d8c475b6359394a2004
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201245169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55d940af8dc71b9eb67a615f3c002ef9d4de718202ed3ddc2a9d1b974d224b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:36:49 GMT
ENV GOLANG_VERSION=1.7.5
# Tue, 21 Mar 2017 20:36:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:36:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Tue, 21 Mar 2017 20:36:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:59 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:37:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:37:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:37:01 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:37:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da70d996316663e68d1ad0aec81e44357e1688eeb8d4f984f85d03a00237b81`  
		Last Modified: Thu, 23 Mar 2017 18:15:00 GMT  
		Size: 36.5 MB (36453627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c53fc464efdce9cbd0d2ce89ca7fdd9908646f20550c8ef1d15bafd44064aaf`  
		Last Modified: Thu, 23 Mar 2017 18:15:19 GMT  
		Size: 83.3 MB (83251363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7163035a67adc4f200d5804dd69347129ed2d5d6291ab5b50fb34c8b260b42`  
		Last Modified: Thu, 23 Mar 2017 18:14:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c659cc817a7e3ab75e35fd63f62b249a871cb145f872dd1a106fb2ede5c36`  
		Last Modified: Thu, 23 Mar 2017 18:14:44 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine`

```console
$ docker pull golang@sha256:95edb5cf7f7ef1ea63ca8dbdf7b29995587c9902a328572556f7be8c2edbb539
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72916903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5e34b5a2af1867bce5f3e665814afa334bea1060a4cdb4fd1ba8e4890892d2`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:52:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 03 Mar 2017 21:52:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 03 Mar 2017 21:52:46 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 03 Mar 2017 21:52:46 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 03 Mar 2017 21:53:43 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:53:44 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:53:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:53:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:53:45 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:53:46 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0dc0740ded98e77fbbb18968fe848dfc5ba10426ab7b280c6b870751888ea4`  
		Last Modified: Sat, 04 Mar 2017 04:54:20 GMT  
		Size: 348.7 KB (348723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd2b27ad47e07d1466fd6022208123170148d1033c4764df4bd4e5dffce941f`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e94c589581f686ce246c20205575d358eeab53a6eccfd5fe62809ec4aecb84e`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b3320c7f1c80a0fcaf21b2328dc8a23b521fe411a1d97b878220b8f954a431`  
		Last Modified: Sat, 04 Mar 2017 04:54:51 GMT  
		Size: 70.3 MB (70252109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b2b7cffd67376e6c631422ce0ecb742199e9e316b809296636e4994ded2928`  
		Last Modified: Sat, 04 Mar 2017 04:54:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8373df1aca2ceb5b944ea2072889986df81dacca95beadb6eae9298802ebcf2`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:95edb5cf7f7ef1ea63ca8dbdf7b29995587c9902a328572556f7be8c2edbb539
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72916903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5e34b5a2af1867bce5f3e665814afa334bea1060a4cdb4fd1ba8e4890892d2`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:52:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 03 Mar 2017 21:52:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 03 Mar 2017 21:52:46 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 03 Mar 2017 21:52:46 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 03 Mar 2017 21:53:43 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:53:44 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:53:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:53:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:53:45 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:53:46 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0dc0740ded98e77fbbb18968fe848dfc5ba10426ab7b280c6b870751888ea4`  
		Last Modified: Sat, 04 Mar 2017 04:54:20 GMT  
		Size: 348.7 KB (348723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd2b27ad47e07d1466fd6022208123170148d1033c4764df4bd4e5dffce941f`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e94c589581f686ce246c20205575d358eeab53a6eccfd5fe62809ec4aecb84e`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b3320c7f1c80a0fcaf21b2328dc8a23b521fe411a1d97b878220b8f954a431`  
		Last Modified: Sat, 04 Mar 2017 04:54:51 GMT  
		Size: 70.3 MB (70252109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b2b7cffd67376e6c631422ce0ecb742199e9e316b809296636e4994ded2928`  
		Last Modified: Sat, 04 Mar 2017 04:54:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8373df1aca2ceb5b944ea2072889986df81dacca95beadb6eae9298802ebcf2`  
		Last Modified: Sat, 04 Mar 2017 04:54:17 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine3.5`

```console
$ docker pull golang@sha256:7316f9585ea1dee345d63ed18163b65949347b919d5f692475ed167e79d983bd
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71704574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099fce572d9d44662266c290bb3c2d819c9bf61200b708f1187ebe0f1e062712`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 03 Mar 2017 21:53:47 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 03 Mar 2017 21:53:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 03 Mar 2017 21:53:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 03 Mar 2017 21:54:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:54:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:54:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:54:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:54:41 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:54:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f16b56299d23594d56069f755434807fe3a63f7fd3cbe59740f1af8621fef53`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34165ecd64c8f7197b4dfe1e1e90970d1a58b3c2c077e9a4a6e7202037fac39c`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325cf1468d9aee83d735bcb21caca33d01431cb95fdce37641b4cc375968ec45`  
		Last Modified: Sat, 04 Mar 2017 04:56:02 GMT  
		Size: 69.4 MB (69443861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8faa464bf3bbd30ffe6fab12b6aa5bf7c39d32f0f2f693b08dcc4083547c13d`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d68e7465e8792bdb5868a45f341fe5e5579c0024ffc21bc15e2726b6f722f5`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine3.5`

```console
$ docker pull golang@sha256:7316f9585ea1dee345d63ed18163b65949347b919d5f692475ed167e79d983bd
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71704574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099fce572d9d44662266c290bb3c2d819c9bf61200b708f1187ebe0f1e062712`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 03 Mar 2017 21:53:47 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 03 Mar 2017 21:53:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 03 Mar 2017 21:53:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 03 Mar 2017 21:54:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:54:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:54:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:54:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:54:41 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:54:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f16b56299d23594d56069f755434807fe3a63f7fd3cbe59740f1af8621fef53`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34165ecd64c8f7197b4dfe1e1e90970d1a58b3c2c077e9a4a6e7202037fac39c`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325cf1468d9aee83d735bcb21caca33d01431cb95fdce37641b4cc375968ec45`  
		Last Modified: Sat, 04 Mar 2017 04:56:02 GMT  
		Size: 69.4 MB (69443861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8faa464bf3bbd30ffe6fab12b6aa5bf7c39d32f0f2f693b08dcc4083547c13d`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d68e7465e8792bdb5868a45f341fe5e5579c0024ffc21bc15e2726b6f722f5`  
		Last Modified: Sat, 04 Mar 2017 04:55:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-windowsservercore`

```console
$ docker pull golang@sha256:2d1acb787d9688b656a53365990e1531b6f3a7b095fd100d6c83f1b9e07b00c9
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5121059539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43631c470b68c4def172568ae6480d28fc8dc035ff4865120e45cf800b848064`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Feb 2017 20:32:18 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 15 Feb 2017 20:32:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Wed, 15 Feb 2017 20:32:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Wed, 15 Feb 2017 20:35:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:36:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5aa9e5e5bd30c5d639c232338ee55ab5f0cd69337e39ef5b949ded9a71fdb6`  
		Last Modified: Wed, 15 Feb 2017 20:41:12 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222d21078fa49385466fb2e2d2c819d27b802e4f709ef76ce3b8b5001ead1d5b`  
		Last Modified: Wed, 15 Feb 2017 20:41:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6a8b4aaeec4adef291deb991c9a246954014f1b103c5dc03d9950e3f232bf`  
		Last Modified: Wed, 15 Feb 2017 20:41:13 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab639055500dc3e1496cbcc2e1079bd17fac6e47ca6d8f8442b805e67cb074f7`  
		Last Modified: Wed, 15 Feb 2017 20:41:34 GMT  
		Size: 96.4 MB (96357958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2f9202ed2c819b90e9626a4fc62bc87c46692a475b8ee49e2df966a74176e`  
		Last Modified: Wed, 15 Feb 2017 20:41:14 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:2d1acb787d9688b656a53365990e1531b6f3a7b095fd100d6c83f1b9e07b00c9
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5121059539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43631c470b68c4def172568ae6480d28fc8dc035ff4865120e45cf800b848064`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Feb 2017 20:32:18 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 15 Feb 2017 20:32:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Wed, 15 Feb 2017 20:32:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Wed, 15 Feb 2017 20:35:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:36:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5aa9e5e5bd30c5d639c232338ee55ab5f0cd69337e39ef5b949ded9a71fdb6`  
		Last Modified: Wed, 15 Feb 2017 20:41:12 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222d21078fa49385466fb2e2d2c819d27b802e4f709ef76ce3b8b5001ead1d5b`  
		Last Modified: Wed, 15 Feb 2017 20:41:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6a8b4aaeec4adef291deb991c9a246954014f1b103c5dc03d9950e3f232bf`  
		Last Modified: Wed, 15 Feb 2017 20:41:13 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab639055500dc3e1496cbcc2e1079bd17fac6e47ca6d8f8442b805e67cb074f7`  
		Last Modified: Wed, 15 Feb 2017 20:41:34 GMT  
		Size: 96.4 MB (96357958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2f9202ed2c819b90e9626a4fc62bc87c46692a475b8ee49e2df966a74176e`  
		Last Modified: Wed, 15 Feb 2017 20:41:14 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-nanoserver`

```console
$ docker pull golang@sha256:0d576ca2910bc4659325ec3d67b874b04d76811d89a80268a9a90d08c575e8cd
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422245164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e18f682e25eed9a59e7cb72f5db4334086faef1bde47490115c581a50a7e78d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:16:53 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 10 Feb 2017 00:16:55 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 10 Feb 2017 00:16:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 10 Feb 2017 00:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 10 Feb 2017 00:20:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6028b099788fdb160407eac7b97da8f21e7cbc8e6492878cd3f5949035d9c0f7`  
		Last Modified: Fri, 10 Feb 2017 00:29:02 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1d64ffd1412095acb2736ebf4efda098ec61852665f7cf9e6cddc7f868bd59`  
		Last Modified: Fri, 10 Feb 2017 00:29:00 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5da06f9ec0c9656394a3f1bcb99bb3cd267c0ef5167c60c50edea9e1a6571`  
		Last Modified: Fri, 10 Feb 2017 00:29:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40335ceda4944709085a04ab7db05c29b71400bfd31253396439c482f4a5164`  
		Last Modified: Fri, 10 Feb 2017 00:29:23 GMT  
		Size: 88.1 MB (88065265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93ce5b8cb64f7fcb8db4dd5d668ee44544389ed4f2b18dbf2160bedf1e5f571`  
		Last Modified: Fri, 10 Feb 2017 00:29:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:0d576ca2910bc4659325ec3d67b874b04d76811d89a80268a9a90d08c575e8cd
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422245164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e18f682e25eed9a59e7cb72f5db4334086faef1bde47490115c581a50a7e78d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:16:53 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 10 Feb 2017 00:16:55 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 10 Feb 2017 00:16:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 10 Feb 2017 00:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 10 Feb 2017 00:20:13 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6028b099788fdb160407eac7b97da8f21e7cbc8e6492878cd3f5949035d9c0f7`  
		Last Modified: Fri, 10 Feb 2017 00:29:02 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1d64ffd1412095acb2736ebf4efda098ec61852665f7cf9e6cddc7f868bd59`  
		Last Modified: Fri, 10 Feb 2017 00:29:00 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5da06f9ec0c9656394a3f1bcb99bb3cd267c0ef5167c60c50edea9e1a6571`  
		Last Modified: Fri, 10 Feb 2017 00:29:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40335ceda4944709085a04ab7db05c29b71400bfd31253396439c482f4a5164`  
		Last Modified: Fri, 10 Feb 2017 00:29:23 GMT  
		Size: 88.1 MB (88065265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93ce5b8cb64f7fcb8db4dd5d668ee44544389ed4f2b18dbf2160bedf1e5f571`  
		Last Modified: Fri, 10 Feb 2017 00:29:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0`

```console
$ docker pull golang@sha256:70317de915e3414b6bd8e1a0f714d6c4e2d11262abf6815fe9895495a1b3d635
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9519276d16090c23ca6331349358bf53b3fe3370707f64cb11d49a4d8ab4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:70317de915e3414b6bd8e1a0f714d6c4e2d11262abf6815fe9895495a1b3d635
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9519276d16090c23ca6331349358bf53b3fe3370707f64cb11d49a4d8ab4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:70317de915e3414b6bd8e1a0f714d6c4e2d11262abf6815fe9895495a1b3d635
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9519276d16090c23ca6331349358bf53b3fe3370707f64cb11d49a4d8ab4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:70317de915e3414b6bd8e1a0f714d6c4e2d11262abf6815fe9895495a1b3d635
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9519276d16090c23ca6331349358bf53b3fe3370707f64cb11d49a4d8ab4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-onbuild`

```console
$ docker pull golang@sha256:5d7acdc54f8032604ca480d4873d60fe9ca2bc920db7b9baf511700c5ea02727
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71d3309fd55d701dab5373a42e5dfdc73baf6ac5127737c289022b3961c7f73`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:35:29 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:35:30 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b59fecf09132bcf3a4285e650213a5452a2cc043df7f0c3982ad63b1e9e19`  
		Last Modified: Thu, 23 Mar 2017 18:19:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:5d7acdc54f8032604ca480d4873d60fe9ca2bc920db7b9baf511700c5ea02727
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71d3309fd55d701dab5373a42e5dfdc73baf6ac5127737c289022b3961c7f73`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:35:29 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:35:30 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b59fecf09132bcf3a4285e650213a5452a2cc043df7f0c3982ad63b1e9e19`  
		Last Modified: Thu, 23 Mar 2017 18:19:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:5d7acdc54f8032604ca480d4873d60fe9ca2bc920db7b9baf511700c5ea02727
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71d3309fd55d701dab5373a42e5dfdc73baf6ac5127737c289022b3961c7f73`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:35:29 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:35:30 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b59fecf09132bcf3a4285e650213a5452a2cc043df7f0c3982ad63b1e9e19`  
		Last Modified: Thu, 23 Mar 2017 18:19:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:5d7acdc54f8032604ca480d4873d60fe9ca2bc920db7b9baf511700c5ea02727
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71d3309fd55d701dab5373a42e5dfdc73baf6ac5127737c289022b3961c7f73`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:35:29 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:35:30 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b59fecf09132bcf3a4285e650213a5452a2cc043df7f0c3982ad63b1e9e19`  
		Last Modified: Thu, 23 Mar 2017 18:19:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-stretch`

```console
$ docker pull golang@sha256:23b903b2320e54c8f16264fd5a33a52f814cac937c2a81ff28228ae0e6557488
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.0-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249795293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5b8e76609561f636002a8be903ea310dc80105c658b8fabe9103ef71939b8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:00 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:02 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5599172933f0a55dd542490e8ed782029f2e9c17687edc85f21a10707eda05`  
		Last Modified: Thu, 23 Mar 2017 18:21:53 GMT  
		Size: 55.7 MB (55699700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b70506d9c3d78fe669e83f3ab7f2c7c2c13848e5046a82dcb88f0c0b7d7a52f`  
		Last Modified: Thu, 23 Mar 2017 18:22:10 GMT  
		Size: 88.9 MB (88938715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a984a51edfc1375685aeb027fbbb3308290bfdc4e63d759f30cdfe18e7ff3`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9ef329cb89390e72357037c64b2ae43962ee3baf1d39c585e1ca4749653bf`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:23b903b2320e54c8f16264fd5a33a52f814cac937c2a81ff28228ae0e6557488
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249795293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5b8e76609561f636002a8be903ea310dc80105c658b8fabe9103ef71939b8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:00 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:02 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5599172933f0a55dd542490e8ed782029f2e9c17687edc85f21a10707eda05`  
		Last Modified: Thu, 23 Mar 2017 18:21:53 GMT  
		Size: 55.7 MB (55699700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b70506d9c3d78fe669e83f3ab7f2c7c2c13848e5046a82dcb88f0c0b7d7a52f`  
		Last Modified: Thu, 23 Mar 2017 18:22:10 GMT  
		Size: 88.9 MB (88938715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a984a51edfc1375685aeb027fbbb3308290bfdc4e63d759f30cdfe18e7ff3`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9ef329cb89390e72357037c64b2ae43962ee3baf1d39c585e1ca4749653bf`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:23b903b2320e54c8f16264fd5a33a52f814cac937c2a81ff28228ae0e6557488
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249795293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5b8e76609561f636002a8be903ea310dc80105c658b8fabe9103ef71939b8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:00 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:02 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5599172933f0a55dd542490e8ed782029f2e9c17687edc85f21a10707eda05`  
		Last Modified: Thu, 23 Mar 2017 18:21:53 GMT  
		Size: 55.7 MB (55699700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b70506d9c3d78fe669e83f3ab7f2c7c2c13848e5046a82dcb88f0c0b7d7a52f`  
		Last Modified: Thu, 23 Mar 2017 18:22:10 GMT  
		Size: 88.9 MB (88938715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a984a51edfc1375685aeb027fbbb3308290bfdc4e63d759f30cdfe18e7ff3`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9ef329cb89390e72357037c64b2ae43962ee3baf1d39c585e1ca4749653bf`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:23b903b2320e54c8f16264fd5a33a52f814cac937c2a81ff28228ae0e6557488
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249795293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5b8e76609561f636002a8be903ea310dc80105c658b8fabe9103ef71939b8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:59 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:36:00 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:36:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:36:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:36:02 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:36:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5599172933f0a55dd542490e8ed782029f2e9c17687edc85f21a10707eda05`  
		Last Modified: Thu, 23 Mar 2017 18:21:53 GMT  
		Size: 55.7 MB (55699700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b70506d9c3d78fe669e83f3ab7f2c7c2c13848e5046a82dcb88f0c0b7d7a52f`  
		Last Modified: Thu, 23 Mar 2017 18:22:10 GMT  
		Size: 88.9 MB (88938715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a984a51edfc1375685aeb027fbbb3308290bfdc4e63d759f30cdfe18e7ff3`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9ef329cb89390e72357037c64b2ae43962ee3baf1d39c585e1ca4749653bf`  
		Last Modified: Thu, 23 Mar 2017 18:21:29 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-alpine`

```console
$ docker pull golang@sha256:94ee795387b35fa8dce7bc92891fda423abad0fb075f3e12b9f4320cc0e451b7
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76997026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb935bbf1daa45326103355d4c2410367b2382eb4701055153f8e9cfd57e9f3`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:51:43 GMT
ENV GOLANG_VERSION=1.8
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.src.tar.gz
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_SHA256=406865f587b44be7092f206d73fc1de252600b79b3cacc587b74b5ef5c623596
# Fri, 03 Mar 2017 21:51:44 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 03 Mar 2017 21:52:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:52:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:52:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:52:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:52:42 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:52:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bcdad0ebaf4b8926aee53013dc9a2a73b20f9dcb715c7090333040d2ef26`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c018073abd268f5850152cebe650b0356e8f9990f4dbc5d3110612251d210664`  
		Last Modified: Sat, 04 Mar 2017 04:57:16 GMT  
		Size: 74.7 MB (74737084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2855f535c50f4ea77d04e1c10851b941ff1650bbd3db4b7051ba7b03e28c022`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23480a2f73d81b420f14f7a0eb342ce0587ccd9df8fb85ed3d3de9e9664de462`  
		Last Modified: Sat, 04 Mar 2017 04:56:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:94ee795387b35fa8dce7bc92891fda423abad0fb075f3e12b9f4320cc0e451b7
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76997026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb935bbf1daa45326103355d4c2410367b2382eb4701055153f8e9cfd57e9f3`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:51:43 GMT
ENV GOLANG_VERSION=1.8
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.src.tar.gz
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_SHA256=406865f587b44be7092f206d73fc1de252600b79b3cacc587b74b5ef5c623596
# Fri, 03 Mar 2017 21:51:44 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 03 Mar 2017 21:52:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:52:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:52:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:52:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:52:42 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:52:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bcdad0ebaf4b8926aee53013dc9a2a73b20f9dcb715c7090333040d2ef26`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c018073abd268f5850152cebe650b0356e8f9990f4dbc5d3110612251d210664`  
		Last Modified: Sat, 04 Mar 2017 04:57:16 GMT  
		Size: 74.7 MB (74737084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2855f535c50f4ea77d04e1c10851b941ff1650bbd3db4b7051ba7b03e28c022`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23480a2f73d81b420f14f7a0eb342ce0587ccd9df8fb85ed3d3de9e9664de462`  
		Last Modified: Sat, 04 Mar 2017 04:56:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:94ee795387b35fa8dce7bc92891fda423abad0fb075f3e12b9f4320cc0e451b7
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76997026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb935bbf1daa45326103355d4c2410367b2382eb4701055153f8e9cfd57e9f3`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:51:43 GMT
ENV GOLANG_VERSION=1.8
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.src.tar.gz
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_SHA256=406865f587b44be7092f206d73fc1de252600b79b3cacc587b74b5ef5c623596
# Fri, 03 Mar 2017 21:51:44 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 03 Mar 2017 21:52:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:52:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:52:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:52:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:52:42 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:52:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bcdad0ebaf4b8926aee53013dc9a2a73b20f9dcb715c7090333040d2ef26`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c018073abd268f5850152cebe650b0356e8f9990f4dbc5d3110612251d210664`  
		Last Modified: Sat, 04 Mar 2017 04:57:16 GMT  
		Size: 74.7 MB (74737084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2855f535c50f4ea77d04e1c10851b941ff1650bbd3db4b7051ba7b03e28c022`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23480a2f73d81b420f14f7a0eb342ce0587ccd9df8fb85ed3d3de9e9664de462`  
		Last Modified: Sat, 04 Mar 2017 04:56:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:94ee795387b35fa8dce7bc92891fda423abad0fb075f3e12b9f4320cc0e451b7
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76997026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb935bbf1daa45326103355d4c2410367b2382eb4701055153f8e9cfd57e9f3`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:51:43 GMT
ENV GOLANG_VERSION=1.8
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.src.tar.gz
# Fri, 03 Mar 2017 21:51:44 GMT
ENV GOLANG_SRC_SHA256=406865f587b44be7092f206d73fc1de252600b79b3cacc587b74b5ef5c623596
# Fri, 03 Mar 2017 21:51:44 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 03 Mar 2017 21:52:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 03 Mar 2017 21:52:40 GMT
ENV GOPATH=/go
# Fri, 03 Mar 2017 21:52:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 21:52:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 03 Mar 2017 21:52:42 GMT
WORKDIR /go
# Fri, 03 Mar 2017 21:52:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800e3417eb116ab89d333fefcf7620dbd06b9867ee7c16df06d7c2ea94682ff`  
		Last Modified: Sat, 04 Mar 2017 04:55:34 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bcdad0ebaf4b8926aee53013dc9a2a73b20f9dcb715c7090333040d2ef26`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c018073abd268f5850152cebe650b0356e8f9990f4dbc5d3110612251d210664`  
		Last Modified: Sat, 04 Mar 2017 04:57:16 GMT  
		Size: 74.7 MB (74737084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2855f535c50f4ea77d04e1c10851b941ff1650bbd3db4b7051ba7b03e28c022`  
		Last Modified: Sat, 04 Mar 2017 04:56:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23480a2f73d81b420f14f7a0eb342ce0587ccd9df8fb85ed3d3de9e9664de462`  
		Last Modified: Sat, 04 Mar 2017 04:56:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-windowsservercore`

```console
$ docker pull golang@sha256:4714b98b1d9cace1cab73dc8b4fc008884ff76085d15c5e264510e36c6d5118b
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5126343607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de920b72f3979e7cd4517dcf3c76531e7fca6536e72fe5ee47a55fd2c58bde0c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Feb 2017 23:21:10 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:21:13 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:21:16 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:25:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:25:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207c0640cc8594c733b8c979642f737033ff1e97a98c6b5526d165345794897f`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54176c15eddbdec0401a7698304db2fc41d2daabde37352b67732f7308d2facc`  
		Last Modified: Thu, 16 Feb 2017 23:29:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683f52848a04d4b07cb327896a85c8bca33acf4b1af99b3c68474753d33bd4e`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1773ae09eefeebec3baafc00b839a2329437955a0f393fad847a36fbfe8b23`  
		Last Modified: Thu, 16 Feb 2017 23:29:58 GMT  
		Size: 101.6 MB (101642015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071401ef7de6d962ecb05d63e0e2b55a82de0b5f87a96f47a4940c8098507fa1`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:4714b98b1d9cace1cab73dc8b4fc008884ff76085d15c5e264510e36c6d5118b
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5126343607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de920b72f3979e7cd4517dcf3c76531e7fca6536e72fe5ee47a55fd2c58bde0c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Feb 2017 23:21:10 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:21:13 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:21:16 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:25:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:25:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207c0640cc8594c733b8c979642f737033ff1e97a98c6b5526d165345794897f`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54176c15eddbdec0401a7698304db2fc41d2daabde37352b67732f7308d2facc`  
		Last Modified: Thu, 16 Feb 2017 23:29:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683f52848a04d4b07cb327896a85c8bca33acf4b1af99b3c68474753d33bd4e`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1773ae09eefeebec3baafc00b839a2329437955a0f393fad847a36fbfe8b23`  
		Last Modified: Thu, 16 Feb 2017 23:29:58 GMT  
		Size: 101.6 MB (101642015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071401ef7de6d962ecb05d63e0e2b55a82de0b5f87a96f47a4940c8098507fa1`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:4714b98b1d9cace1cab73dc8b4fc008884ff76085d15c5e264510e36c6d5118b
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5126343607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de920b72f3979e7cd4517dcf3c76531e7fca6536e72fe5ee47a55fd2c58bde0c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Feb 2017 23:21:10 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:21:13 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:21:16 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:25:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:25:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207c0640cc8594c733b8c979642f737033ff1e97a98c6b5526d165345794897f`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54176c15eddbdec0401a7698304db2fc41d2daabde37352b67732f7308d2facc`  
		Last Modified: Thu, 16 Feb 2017 23:29:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683f52848a04d4b07cb327896a85c8bca33acf4b1af99b3c68474753d33bd4e`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1773ae09eefeebec3baafc00b839a2329437955a0f393fad847a36fbfe8b23`  
		Last Modified: Thu, 16 Feb 2017 23:29:58 GMT  
		Size: 101.6 MB (101642015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071401ef7de6d962ecb05d63e0e2b55a82de0b5f87a96f47a4940c8098507fa1`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:4714b98b1d9cace1cab73dc8b4fc008884ff76085d15c5e264510e36c6d5118b
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5126343607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de920b72f3979e7cd4517dcf3c76531e7fca6536e72fe5ee47a55fd2c58bde0c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Feb 2017 20:27:19 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Feb 2017 20:27:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Feb 2017 20:27:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Feb 2017 20:27:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Feb 2017 20:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:28:09 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Feb 2017 20:28:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 16 Feb 2017 23:21:10 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:21:13 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:21:16 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:25:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:25:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6257b3811def44ee6b788cc3f855820ccf44038641d8d8ad23dac1accc4760`  
		Last Modified: Wed, 15 Feb 2017 20:40:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb455a144c287f63ab88e55546f753cb4454f5a3e85b0d52a65b0b206aebc2e`  
		Last Modified: Wed, 15 Feb 2017 20:40:31 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3d32c5bd38ab16138f5b6bf6cea5bcd0aa67824aceb075840739de217de1b`  
		Last Modified: Wed, 15 Feb 2017 20:40:30 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0edfd99f5adb5dec83cf253725121285d8e425b9be2ef09ebbd9e248e0fce19`  
		Last Modified: Wed, 15 Feb 2017 20:40:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d539344b85c3378e0a8c90f0671a0e8b1691cf0dc196e0fe486932f4730d3eb`  
		Last Modified: Wed, 15 Feb 2017 20:40:42 GMT  
		Size: 33.6 MB (33587430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c72df54202f58a190e11d26d1c905e6bedd08cdf2f1828cc177fba0605842e`  
		Last Modified: Wed, 15 Feb 2017 20:40:25 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c980f6e1f89dcdfb186c88eae59f0f6cd8c8b9c9b6819cdb460f8ac39c98a`  
		Last Modified: Wed, 15 Feb 2017 20:40:27 GMT  
		Size: 8.0 MB (7970960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207c0640cc8594c733b8c979642f737033ff1e97a98c6b5526d165345794897f`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54176c15eddbdec0401a7698304db2fc41d2daabde37352b67732f7308d2facc`  
		Last Modified: Thu, 16 Feb 2017 23:29:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683f52848a04d4b07cb327896a85c8bca33acf4b1af99b3c68474753d33bd4e`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1773ae09eefeebec3baafc00b839a2329437955a0f393fad847a36fbfe8b23`  
		Last Modified: Thu, 16 Feb 2017 23:29:58 GMT  
		Size: 101.6 MB (101642015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071401ef7de6d962ecb05d63e0e2b55a82de0b5f87a96f47a4940c8098507fa1`  
		Last Modified: Thu, 16 Feb 2017 23:29:37 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-nanoserver`

```console
$ docker pull golang@sha256:757cfc961a44d657d676fdf1d18da5d22edc3a759bca01367f92f700103d195a
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.0-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.5 MB (427496435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f2f11bd5a9ca3e96f3b8125f1daf87cdd5dd1b4b520cb6446604f37bce066`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 16 Feb 2017 23:25:22 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:25:24 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:25:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:29:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:29:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4abcd29061afe3cdff8a549aefe9901167791dab4bd3462443d0cda3bf85e`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7d93d45cc155ddd99eba58a04933f98ab5a86a3ecec43b0e7f635e6733cca`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08233125ea0ca9ce2051b54050fd01d09e42343549d0389230cbca9d5b55a8`  
		Last Modified: Thu, 16 Feb 2017 23:30:18 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c242161608ad4e6f56aa863c0836a19067bf59530267938f34d22a2f38391b`  
		Last Modified: Thu, 16 Feb 2017 23:30:36 GMT  
		Size: 93.3 MB (93316525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee48bf12a369c06a063a88d8d35cc83533bde5052ebcf7ed2842fa6d4a446ed`  
		Last Modified: Thu, 16 Feb 2017 23:30:17 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:757cfc961a44d657d676fdf1d18da5d22edc3a759bca01367f92f700103d195a
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.5 MB (427496435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f2f11bd5a9ca3e96f3b8125f1daf87cdd5dd1b4b520cb6446604f37bce066`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 16 Feb 2017 23:25:22 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:25:24 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:25:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:29:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:29:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4abcd29061afe3cdff8a549aefe9901167791dab4bd3462443d0cda3bf85e`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7d93d45cc155ddd99eba58a04933f98ab5a86a3ecec43b0e7f635e6733cca`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08233125ea0ca9ce2051b54050fd01d09e42343549d0389230cbca9d5b55a8`  
		Last Modified: Thu, 16 Feb 2017 23:30:18 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c242161608ad4e6f56aa863c0836a19067bf59530267938f34d22a2f38391b`  
		Last Modified: Thu, 16 Feb 2017 23:30:36 GMT  
		Size: 93.3 MB (93316525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee48bf12a369c06a063a88d8d35cc83533bde5052ebcf7ed2842fa6d4a446ed`  
		Last Modified: Thu, 16 Feb 2017 23:30:17 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:757cfc961a44d657d676fdf1d18da5d22edc3a759bca01367f92f700103d195a
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.5 MB (427496435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f2f11bd5a9ca3e96f3b8125f1daf87cdd5dd1b4b520cb6446604f37bce066`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 16 Feb 2017 23:25:22 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:25:24 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:25:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:29:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:29:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4abcd29061afe3cdff8a549aefe9901167791dab4bd3462443d0cda3bf85e`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7d93d45cc155ddd99eba58a04933f98ab5a86a3ecec43b0e7f635e6733cca`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08233125ea0ca9ce2051b54050fd01d09e42343549d0389230cbca9d5b55a8`  
		Last Modified: Thu, 16 Feb 2017 23:30:18 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c242161608ad4e6f56aa863c0836a19067bf59530267938f34d22a2f38391b`  
		Last Modified: Thu, 16 Feb 2017 23:30:36 GMT  
		Size: 93.3 MB (93316525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee48bf12a369c06a063a88d8d35cc83533bde5052ebcf7ed2842fa6d4a446ed`  
		Last Modified: Thu, 16 Feb 2017 23:30:17 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:757cfc961a44d657d676fdf1d18da5d22edc3a759bca01367f92f700103d195a
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.5 MB (427496435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8f2f11bd5a9ca3e96f3b8125f1daf87cdd5dd1b4b520cb6446604f37bce066`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 16 Feb 2017 23:25:22 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:25:24 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.windows-amd64.zip
# Thu, 16 Feb 2017 23:25:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=cb27fe210f3a9d10329d48514895d2a1e3651125a7c3c758f0358a5bfc0e3060
# Thu, 16 Feb 2017 23:29:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 16 Feb 2017 23:29:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ea2ec6249baec774cf0bb6d4c46f383320ec4ad5e0a72597d9c1ef1834b32`  
		Last Modified: Fri, 13 Jan 2017 18:00:04 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15068a1a55e80e8468c9cd1bfd0c5b53faf86bd29b5b2a6692b41986129b29a8`  
		Last Modified: Fri, 13 Jan 2017 18:00:08 GMT  
		Size: 865.5 KB (865469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4abcd29061afe3cdff8a549aefe9901167791dab4bd3462443d0cda3bf85e`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7d93d45cc155ddd99eba58a04933f98ab5a86a3ecec43b0e7f635e6733cca`  
		Last Modified: Thu, 16 Feb 2017 23:30:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08233125ea0ca9ce2051b54050fd01d09e42343549d0389230cbca9d5b55a8`  
		Last Modified: Thu, 16 Feb 2017 23:30:18 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c242161608ad4e6f56aa863c0836a19067bf59530267938f34d22a2f38391b`  
		Last Modified: Thu, 16 Feb 2017 23:30:36 GMT  
		Size: 93.3 MB (93316525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee48bf12a369c06a063a88d8d35cc83533bde5052ebcf7ed2842fa6d4a446ed`  
		Last Modified: Thu, 16 Feb 2017 23:30:17 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
