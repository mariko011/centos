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
-	[`golang:1.8.1`](#golang181)
-	[`golang:1.8`](#golang18)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.8.1-onbuild`](#golang181-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.8.1-stretch`](#golang181-stretch)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:stretch`](#golangstretch)
-	[`golang:1.8.1-alpine`](#golang181-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.8.1-windowsservercore`](#golang181-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.8.1-nanoserver`](#golang181-nanoserver)
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
$ docker pull golang@sha256:91753d06b73bcb3643552cd3a87a2de69e6e0b2a85a6fcb41ce815b15ca0dbd0
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347541645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b524e688ad04f2588eea1323bc942e6e121b8f5da1eeb194e562ec1ea1d095cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:00:46 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 07 Apr 2017 22:00:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 07 Apr 2017 22:00:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 07 Apr 2017 22:04:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:04:25 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f943e0c896362130e69d5ba1c8579b09981416751c4e992bb3820b42d545e8b9`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43a7fa076cca7c4d4521ab81c9677269606a70017e48ea0ff57ecd1fee03db1`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9b28206765e87cf5b266fb86af79e5d955b40003a4e382dfac4b55a6ad438c`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559f997e1ce303858faa8f3e3aeb59b1acc5f77334f765283ae04481d0738276`  
		Last Modified: Fri, 07 Apr 2017 22:20:31 GMT  
		Size: 96.4 MB (96359421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a380a40fa6d0f3fc2f59f2d82d39f8865ccecc8942c2f3a571b53d8780e9d279`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:91753d06b73bcb3643552cd3a87a2de69e6e0b2a85a6fcb41ce815b15ca0dbd0
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347541645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b524e688ad04f2588eea1323bc942e6e121b8f5da1eeb194e562ec1ea1d095cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:00:46 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 07 Apr 2017 22:00:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 07 Apr 2017 22:00:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 07 Apr 2017 22:04:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:04:25 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f943e0c896362130e69d5ba1c8579b09981416751c4e992bb3820b42d545e8b9`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43a7fa076cca7c4d4521ab81c9677269606a70017e48ea0ff57ecd1fee03db1`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9b28206765e87cf5b266fb86af79e5d955b40003a4e382dfac4b55a6ad438c`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559f997e1ce303858faa8f3e3aeb59b1acc5f77334f765283ae04481d0738276`  
		Last Modified: Fri, 07 Apr 2017 22:20:31 GMT  
		Size: 96.4 MB (96359421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a380a40fa6d0f3fc2f59f2d82d39f8865ccecc8942c2f3a571b53d8780e9d279`  
		Last Modified: Fri, 07 Apr 2017 22:19:55 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-nanoserver`

```console
$ docker pull golang@sha256:d319cd0159e5cd89fa95633db173b905c49f3c0769f56c16587b35fbe6e8fcac
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456554728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f981995cbdf193a903372fd5ca6edc6338d110f84dd93385facee86bf95200cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:04:49 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 07 Apr 2017 22:04:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 07 Apr 2017 22:04:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 07 Apr 2017 22:07:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:07:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b013a820d63c63248446e589d64fae513bac646e8049dae44d29007f4c567bc`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42cc3c7b5c70370274c6483cbeabafb0efab0ccfdc14c2aeb9b8a826d2d6642`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842311c3c456c210b5149c29aeac8c3fd42422e6d94e6a859e71fb6934ba6034`  
		Last Modified: Fri, 07 Apr 2017 22:20:43 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53622ecb45c69c01980957cb87f803695f8919fcb393458aec8f687249c6f53`  
		Last Modified: Fri, 07 Apr 2017 22:21:03 GMT  
		Size: 88.1 MB (88064243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f861aa93d8c4bb870ac30939154159ff683f7b6e621704cd9cad2dd7725389d`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:d319cd0159e5cd89fa95633db173b905c49f3c0769f56c16587b35fbe6e8fcac
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456554728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f981995cbdf193a903372fd5ca6edc6338d110f84dd93385facee86bf95200cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:04:49 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 07 Apr 2017 22:04:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.windows-amd64.zip
# Fri, 07 Apr 2017 22:04:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa
# Fri, 07 Apr 2017 22:07:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:07:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b013a820d63c63248446e589d64fae513bac646e8049dae44d29007f4c567bc`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42cc3c7b5c70370274c6483cbeabafb0efab0ccfdc14c2aeb9b8a826d2d6642`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842311c3c456c210b5149c29aeac8c3fd42422e6d94e6a859e71fb6934ba6034`  
		Last Modified: Fri, 07 Apr 2017 22:20:43 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53622ecb45c69c01980957cb87f803695f8919fcb393458aec8f687249c6f53`  
		Last Modified: Fri, 07 Apr 2017 22:21:03 GMT  
		Size: 88.1 MB (88064243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f861aa93d8c4bb870ac30939154159ff683f7b6e621704cd9cad2dd7725389d`  
		Last Modified: Fri, 07 Apr 2017 22:20:42 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1`

```console
$ docker pull golang@sha256:fb555736a861ae3ee8d1d45162d0a74e187840e4fd5e852830b1c7a7f72aacf7
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ccf5f2c0365842c2a2faeb28e8058761e83832ebccf4c10558f106e88ab89e`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:fb555736a861ae3ee8d1d45162d0a74e187840e4fd5e852830b1c7a7f72aacf7
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ccf5f2c0365842c2a2faeb28e8058761e83832ebccf4c10558f106e88ab89e`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:fb555736a861ae3ee8d1d45162d0a74e187840e4fd5e852830b1c7a7f72aacf7
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ccf5f2c0365842c2a2faeb28e8058761e83832ebccf4c10558f106e88ab89e`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:fb555736a861ae3ee8d1d45162d0a74e187840e4fd5e852830b1c7a7f72aacf7
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ccf5f2c0365842c2a2faeb28e8058761e83832ebccf4c10558f106e88ab89e`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-onbuild`

```console
$ docker pull golang@sha256:886a63b8de95d5767e779dee4ce5ce3c0437fa48524aedd93199fb12526f15e0
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad323f40f596ebac4de63a1e27dbd79db2f4276353db474615a59623f34e7d94`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 07 Apr 2017 21:59:38 GMT
RUN mkdir -p /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
WORKDIR /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
CMD ["go-wrapper" "run"]
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD COPY . /go/src/app
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper download
# Fri, 07 Apr 2017 21:59:39 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc96f59ddc5dc000e370de1dd032f9f99787be08ffc84871fdcbe9c8f4f5ee`  
		Last Modified: Fri, 07 Apr 2017 22:06:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:886a63b8de95d5767e779dee4ce5ce3c0437fa48524aedd93199fb12526f15e0
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad323f40f596ebac4de63a1e27dbd79db2f4276353db474615a59623f34e7d94`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 07 Apr 2017 21:59:38 GMT
RUN mkdir -p /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
WORKDIR /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
CMD ["go-wrapper" "run"]
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD COPY . /go/src/app
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper download
# Fri, 07 Apr 2017 21:59:39 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc96f59ddc5dc000e370de1dd032f9f99787be08ffc84871fdcbe9c8f4f5ee`  
		Last Modified: Fri, 07 Apr 2017 22:06:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:886a63b8de95d5767e779dee4ce5ce3c0437fa48524aedd93199fb12526f15e0
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad323f40f596ebac4de63a1e27dbd79db2f4276353db474615a59623f34e7d94`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 07 Apr 2017 21:59:38 GMT
RUN mkdir -p /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
WORKDIR /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
CMD ["go-wrapper" "run"]
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD COPY . /go/src/app
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper download
# Fri, 07 Apr 2017 21:59:39 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc96f59ddc5dc000e370de1dd032f9f99787be08ffc84871fdcbe9c8f4f5ee`  
		Last Modified: Fri, 07 Apr 2017 22:06:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:886a63b8de95d5767e779dee4ce5ce3c0437fa48524aedd93199fb12526f15e0
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad323f40f596ebac4de63a1e27dbd79db2f4276353db474615a59623f34e7d94`
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
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 07 Apr 2017 21:59:38 GMT
RUN mkdir -p /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
WORKDIR /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
CMD ["go-wrapper" "run"]
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD COPY . /go/src/app
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper download
# Fri, 07 Apr 2017 21:59:39 GMT
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
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc96f59ddc5dc000e370de1dd032f9f99787be08ffc84871fdcbe9c8f4f5ee`  
		Last Modified: Fri, 07 Apr 2017 22:06:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-stretch`

```console
$ docker pull golang@sha256:e8de42b6b28ea894bd3b4a2d5f1f1f66c870288abb89ed9a6dc710e1f9c590ff
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251257621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e8b7ecea4c49f5eb12512c2f4b7a83495bf7c96b76401d0d37f59fbfbdde5`
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
# Fri, 07 Apr 2017 21:59:40 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:52 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:53 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:55 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:55 GMT
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
	-	`sha256:efd59769037265f7e19982eb871ad5ca8e0312fdd1955970a4c23e71ad11de59`  
		Last Modified: Fri, 07 Apr 2017 22:08:26 GMT  
		Size: 90.4 MB (90401043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51f5553890a5db3c70ab5cec0742e492e8dbc276c2809c0e3d54949b134fbd5`  
		Last Modified: Fri, 07 Apr 2017 22:07:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654071d4ff65eba5afc836bc06c78f48ed310ce5ed2ea0ec87db84a4c3914593`  
		Last Modified: Fri, 07 Apr 2017 22:07:59 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:e8de42b6b28ea894bd3b4a2d5f1f1f66c870288abb89ed9a6dc710e1f9c590ff
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251257621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e8b7ecea4c49f5eb12512c2f4b7a83495bf7c96b76401d0d37f59fbfbdde5`
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
# Fri, 07 Apr 2017 21:59:40 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:52 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:53 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:55 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:55 GMT
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
	-	`sha256:efd59769037265f7e19982eb871ad5ca8e0312fdd1955970a4c23e71ad11de59`  
		Last Modified: Fri, 07 Apr 2017 22:08:26 GMT  
		Size: 90.4 MB (90401043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51f5553890a5db3c70ab5cec0742e492e8dbc276c2809c0e3d54949b134fbd5`  
		Last Modified: Fri, 07 Apr 2017 22:07:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654071d4ff65eba5afc836bc06c78f48ed310ce5ed2ea0ec87db84a4c3914593`  
		Last Modified: Fri, 07 Apr 2017 22:07:59 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:e8de42b6b28ea894bd3b4a2d5f1f1f66c870288abb89ed9a6dc710e1f9c590ff
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251257621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e8b7ecea4c49f5eb12512c2f4b7a83495bf7c96b76401d0d37f59fbfbdde5`
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
# Fri, 07 Apr 2017 21:59:40 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:52 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:53 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:55 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:55 GMT
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
	-	`sha256:efd59769037265f7e19982eb871ad5ca8e0312fdd1955970a4c23e71ad11de59`  
		Last Modified: Fri, 07 Apr 2017 22:08:26 GMT  
		Size: 90.4 MB (90401043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51f5553890a5db3c70ab5cec0742e492e8dbc276c2809c0e3d54949b134fbd5`  
		Last Modified: Fri, 07 Apr 2017 22:07:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654071d4ff65eba5afc836bc06c78f48ed310ce5ed2ea0ec87db84a4c3914593`  
		Last Modified: Fri, 07 Apr 2017 22:07:59 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:e8de42b6b28ea894bd3b4a2d5f1f1f66c870288abb89ed9a6dc710e1f9c590ff
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251257621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e8b7ecea4c49f5eb12512c2f4b7a83495bf7c96b76401d0d37f59fbfbdde5`
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
# Fri, 07 Apr 2017 21:59:40 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:52 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:53 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:55 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:55 GMT
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
	-	`sha256:efd59769037265f7e19982eb871ad5ca8e0312fdd1955970a4c23e71ad11de59`  
		Last Modified: Fri, 07 Apr 2017 22:08:26 GMT  
		Size: 90.4 MB (90401043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51f5553890a5db3c70ab5cec0742e492e8dbc276c2809c0e3d54949b134fbd5`  
		Last Modified: Fri, 07 Apr 2017 22:07:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654071d4ff65eba5afc836bc06c78f48ed310ce5ed2ea0ec87db84a4c3914593`  
		Last Modified: Fri, 07 Apr 2017 22:07:59 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-alpine`

```console
$ docker pull golang@sha256:e653d2c77c9225d336bcc8d209100ef1b078047f4d6651f87e69c68f5d443513
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f63bb29285e331eedcbf6d7797c92b808045d900e3da632dd9a6c643d07ca`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.1.src.tar.gz
# Fri, 07 Apr 2017 21:59:57 GMT
ENV GOLANG_SRC_SHA256=33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57
# Fri, 07 Apr 2017 21:59:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 07 Apr 2017 22:00:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 07 Apr 2017 22:00:56 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 22:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 22:00:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 22:00:57 GMT
WORKDIR /go
# Fri, 07 Apr 2017 22:00:58 GMT
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
	-	`sha256:b6acb96fee14b46e190778268c18b3621457fe46e2dea0805b1e8a5dee807b1a`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be5afddf19763bfac86c67279aa6489c75b9e893d4b4a5ca5009a3c5f9a854`  
		Last Modified: Fri, 07 Apr 2017 22:10:15 GMT  
		Size: 74.8 MB (74763228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca17cdcfc93e8b6a16f18e37041b0f0ac05a9520af52ad8fa0597dbc7c3f0fd`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cf0844f5eee550fdb0ac950c21eb11cfa122d4dcd778140751cfe49bfcd68`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:e653d2c77c9225d336bcc8d209100ef1b078047f4d6651f87e69c68f5d443513
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f63bb29285e331eedcbf6d7797c92b808045d900e3da632dd9a6c643d07ca`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.1.src.tar.gz
# Fri, 07 Apr 2017 21:59:57 GMT
ENV GOLANG_SRC_SHA256=33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57
# Fri, 07 Apr 2017 21:59:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 07 Apr 2017 22:00:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 07 Apr 2017 22:00:56 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 22:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 22:00:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 22:00:57 GMT
WORKDIR /go
# Fri, 07 Apr 2017 22:00:58 GMT
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
	-	`sha256:b6acb96fee14b46e190778268c18b3621457fe46e2dea0805b1e8a5dee807b1a`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be5afddf19763bfac86c67279aa6489c75b9e893d4b4a5ca5009a3c5f9a854`  
		Last Modified: Fri, 07 Apr 2017 22:10:15 GMT  
		Size: 74.8 MB (74763228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca17cdcfc93e8b6a16f18e37041b0f0ac05a9520af52ad8fa0597dbc7c3f0fd`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cf0844f5eee550fdb0ac950c21eb11cfa122d4dcd778140751cfe49bfcd68`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:e653d2c77c9225d336bcc8d209100ef1b078047f4d6651f87e69c68f5d443513
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f63bb29285e331eedcbf6d7797c92b808045d900e3da632dd9a6c643d07ca`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.1.src.tar.gz
# Fri, 07 Apr 2017 21:59:57 GMT
ENV GOLANG_SRC_SHA256=33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57
# Fri, 07 Apr 2017 21:59:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 07 Apr 2017 22:00:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 07 Apr 2017 22:00:56 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 22:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 22:00:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 22:00:57 GMT
WORKDIR /go
# Fri, 07 Apr 2017 22:00:58 GMT
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
	-	`sha256:b6acb96fee14b46e190778268c18b3621457fe46e2dea0805b1e8a5dee807b1a`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be5afddf19763bfac86c67279aa6489c75b9e893d4b4a5ca5009a3c5f9a854`  
		Last Modified: Fri, 07 Apr 2017 22:10:15 GMT  
		Size: 74.8 MB (74763228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca17cdcfc93e8b6a16f18e37041b0f0ac05a9520af52ad8fa0597dbc7c3f0fd`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cf0844f5eee550fdb0ac950c21eb11cfa122d4dcd778140751cfe49bfcd68`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:e653d2c77c9225d336bcc8d209100ef1b078047f4d6651f87e69c68f5d443513
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f63bb29285e331eedcbf6d7797c92b808045d900e3da632dd9a6c643d07ca`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8.1.src.tar.gz
# Fri, 07 Apr 2017 21:59:57 GMT
ENV GOLANG_SRC_SHA256=33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57
# Fri, 07 Apr 2017 21:59:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 07 Apr 2017 22:00:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 07 Apr 2017 22:00:56 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 22:00:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 22:00:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 22:00:57 GMT
WORKDIR /go
# Fri, 07 Apr 2017 22:00:58 GMT
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
	-	`sha256:b6acb96fee14b46e190778268c18b3621457fe46e2dea0805b1e8a5dee807b1a`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be5afddf19763bfac86c67279aa6489c75b9e893d4b4a5ca5009a3c5f9a854`  
		Last Modified: Fri, 07 Apr 2017 22:10:15 GMT  
		Size: 74.8 MB (74763228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca17cdcfc93e8b6a16f18e37041b0f0ac05a9520af52ad8fa0597dbc7c3f0fd`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cf0844f5eee550fdb0ac950c21eb11cfa122d4dcd778140751cfe49bfcd68`  
		Last Modified: Fri, 07 Apr 2017 22:09:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-windowsservercore`

```console
$ docker pull golang@sha256:346800dbea89ee9937e9360ea56d785cb8bc8e7b95242814ae24f62b10d25324
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353308467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880b0cc194dc6ec5eadcb2652b1a15204ef871f9be8a096c7172ea3afc4dc89e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:07:42 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:07:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:07:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:11:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:11:12 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be9b84d84eab5ad28776329991d9f9770ec8b84d040303d6c92b5199f299918`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef511bac52361fb0185887885cf0bff92e2f1ea6858de8ed978986dc8e7bf3`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ecf9254baac957833f42344b74fa48c2f2b7a485a72b26cbd538f89b3c08c7`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a988ae41fea4f62f96857696e7b4dbce954074670bb146ea2a05f187c64902`  
		Last Modified: Fri, 07 Apr 2017 22:21:37 GMT  
		Size: 102.1 MB (102126266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ef2e9e4c7d13ce3f8b5d8a4e274fbc1c35166e22c54f8464ba284192d7cbe5`  
		Last Modified: Fri, 07 Apr 2017 22:21:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:346800dbea89ee9937e9360ea56d785cb8bc8e7b95242814ae24f62b10d25324
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353308467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880b0cc194dc6ec5eadcb2652b1a15204ef871f9be8a096c7172ea3afc4dc89e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:07:42 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:07:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:07:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:11:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:11:12 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be9b84d84eab5ad28776329991d9f9770ec8b84d040303d6c92b5199f299918`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef511bac52361fb0185887885cf0bff92e2f1ea6858de8ed978986dc8e7bf3`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ecf9254baac957833f42344b74fa48c2f2b7a485a72b26cbd538f89b3c08c7`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a988ae41fea4f62f96857696e7b4dbce954074670bb146ea2a05f187c64902`  
		Last Modified: Fri, 07 Apr 2017 22:21:37 GMT  
		Size: 102.1 MB (102126266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ef2e9e4c7d13ce3f8b5d8a4e274fbc1c35166e22c54f8464ba284192d7cbe5`  
		Last Modified: Fri, 07 Apr 2017 22:21:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:346800dbea89ee9937e9360ea56d785cb8bc8e7b95242814ae24f62b10d25324
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353308467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880b0cc194dc6ec5eadcb2652b1a15204ef871f9be8a096c7172ea3afc4dc89e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:07:42 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:07:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:07:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:11:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:11:12 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be9b84d84eab5ad28776329991d9f9770ec8b84d040303d6c92b5199f299918`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef511bac52361fb0185887885cf0bff92e2f1ea6858de8ed978986dc8e7bf3`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ecf9254baac957833f42344b74fa48c2f2b7a485a72b26cbd538f89b3c08c7`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a988ae41fea4f62f96857696e7b4dbce954074670bb146ea2a05f187c64902`  
		Last Modified: Fri, 07 Apr 2017 22:21:37 GMT  
		Size: 102.1 MB (102126266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ef2e9e4c7d13ce3f8b5d8a4e274fbc1c35166e22c54f8464ba284192d7cbe5`  
		Last Modified: Fri, 07 Apr 2017 22:21:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:346800dbea89ee9937e9360ea56d785cb8bc8e7b95242814ae24f62b10d25324
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5353308467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880b0cc194dc6ec5eadcb2652b1a15204ef871f9be8a096c7172ea3afc4dc89e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 21:59:16 GMT
ENV GIT_VERSION=2.11.1
# Fri, 07 Apr 2017 21:59:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 07 Apr 2017 21:59:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 07 Apr 2017 21:59:29 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 07 Apr 2017 22:00:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:00:19 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:00:43 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 07 Apr 2017 22:07:42 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:07:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:07:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:11:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:11:12 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce0b115b6c55be6788035e60ff18f898e2769ae359c7d56b8b32943f8d00fd`  
		Last Modified: Fri, 07 Apr 2017 22:20:12 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd2a5dcbb4ecffbd4b9fff95333ac0914f221a11c7e604ea8a75596302a281d`  
		Last Modified: Fri, 07 Apr 2017 22:20:11 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5dc01e8d397ea078683256672135ecaacc8e49ae72be82d90532ef84b8b604`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cb468017f133a31a1e5e6dca19fac8e63945a5c7c6f5b6f0cf7c665d06b75`  
		Last Modified: Fri, 07 Apr 2017 22:20:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc301663650116d948bb6bddf8e57c3f692a3b9dcc1a0f23354947e2499bb91`  
		Last Modified: Fri, 07 Apr 2017 22:20:14 GMT  
		Size: 29.3 MB (29302041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9655627fde3df75bc7571116794faf8316c3490168b43f03223c7e6101e30d90`  
		Last Modified: Fri, 07 Apr 2017 22:20:00 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214cead46da1bf1ba0b6fa3ec7f216be8cc8e58cc28df3fa7bd136fff5f14b5c`  
		Last Modified: Fri, 07 Apr 2017 22:20:02 GMT  
		Size: 4.6 MB (4614242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be9b84d84eab5ad28776329991d9f9770ec8b84d040303d6c92b5199f299918`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deef511bac52361fb0185887885cf0bff92e2f1ea6858de8ed978986dc8e7bf3`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ecf9254baac957833f42344b74fa48c2f2b7a485a72b26cbd538f89b3c08c7`  
		Last Modified: Fri, 07 Apr 2017 22:21:15 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a988ae41fea4f62f96857696e7b4dbce954074670bb146ea2a05f187c64902`  
		Last Modified: Fri, 07 Apr 2017 22:21:37 GMT  
		Size: 102.1 MB (102126266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ef2e9e4c7d13ce3f8b5d8a4e274fbc1c35166e22c54f8464ba284192d7cbe5`  
		Last Modified: Fri, 07 Apr 2017 22:21:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-nanoserver`

```console
$ docker pull golang@sha256:44bff2e3ea3ca899c46c428ac340ac53b2a862281c21f9c6a43aea77328055a5
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466236278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafb2fcbe4a6a2b46c19029a59b884bb4fce90ab6c88bbbb9cfbcf4faaa3ce1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:11:16 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:11:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:11:21 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:19:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:19:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb515ee93382d134d0fa4ca8a337c5c0c16e285e76df20e756e786ad236947`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2540f9eefc16e6331b8aee7f2eff08efced0cb644cc348851b784c0e5e8a5848`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab735ed697b591737c3371aab8fb4be26b07d5670a7cd1bf89b14d744cc6a31`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9e7289be4ab9839dcb9f999c59d9bbc6efe5e027a878737ed0d56e19b171c0`  
		Last Modified: Fri, 07 Apr 2017 22:22:17 GMT  
		Size: 97.7 MB (97745799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd83325cc5bb69359050afa7d539ec206e14cd472f118018f915ac6070021f95`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:44bff2e3ea3ca899c46c428ac340ac53b2a862281c21f9c6a43aea77328055a5
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466236278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafb2fcbe4a6a2b46c19029a59b884bb4fce90ab6c88bbbb9cfbcf4faaa3ce1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:11:16 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:11:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:11:21 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:19:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:19:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb515ee93382d134d0fa4ca8a337c5c0c16e285e76df20e756e786ad236947`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2540f9eefc16e6331b8aee7f2eff08efced0cb644cc348851b784c0e5e8a5848`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab735ed697b591737c3371aab8fb4be26b07d5670a7cd1bf89b14d744cc6a31`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9e7289be4ab9839dcb9f999c59d9bbc6efe5e027a878737ed0d56e19b171c0`  
		Last Modified: Fri, 07 Apr 2017 22:22:17 GMT  
		Size: 97.7 MB (97745799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd83325cc5bb69359050afa7d539ec206e14cd472f118018f915ac6070021f95`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:44bff2e3ea3ca899c46c428ac340ac53b2a862281c21f9c6a43aea77328055a5
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466236278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafb2fcbe4a6a2b46c19029a59b884bb4fce90ab6c88bbbb9cfbcf4faaa3ce1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:11:16 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:11:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:11:21 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:19:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:19:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb515ee93382d134d0fa4ca8a337c5c0c16e285e76df20e756e786ad236947`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2540f9eefc16e6331b8aee7f2eff08efced0cb644cc348851b784c0e5e8a5848`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab735ed697b591737c3371aab8fb4be26b07d5670a7cd1bf89b14d744cc6a31`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9e7289be4ab9839dcb9f999c59d9bbc6efe5e027a878737ed0d56e19b171c0`  
		Last Modified: Fri, 07 Apr 2017 22:22:17 GMT  
		Size: 97.7 MB (97745799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd83325cc5bb69359050afa7d539ec206e14cd472f118018f915ac6070021f95`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:44bff2e3ea3ca899c46c428ac340ac53b2a862281c21f9c6a43aea77328055a5
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466236278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafb2fcbe4a6a2b46c19029a59b884bb4fce90ab6c88bbbb9cfbcf4faaa3ce1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 07 Apr 2017 22:04:28 GMT
ENV GOPATH=C:\gopath
# Fri, 07 Apr 2017 22:04:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 07 Apr 2017 22:11:16 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 22:11:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.windows-amd64.zip
# Fri, 07 Apr 2017 22:11:21 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee
# Fri, 07 Apr 2017 22:19:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 07 Apr 2017 22:19:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72fdad5e3357285f73b9aa74d5c4c8c4291db57cdb0ea51e882e3516566f70e`  
		Last Modified: Fri, 07 Apr 2017 22:20:53 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7486d5f6114c3f3af637cd0871fb74aa7751e9a65930a866f06659bb2466c07`  
		Last Modified: Fri, 07 Apr 2017 22:20:57 GMT  
		Size: 868.4 KB (868388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb515ee93382d134d0fa4ca8a337c5c0c16e285e76df20e756e786ad236947`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2540f9eefc16e6331b8aee7f2eff08efced0cb644cc348851b784c0e5e8a5848`  
		Last Modified: Fri, 07 Apr 2017 22:21:55 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab735ed697b591737c3371aab8fb4be26b07d5670a7cd1bf89b14d744cc6a31`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9e7289be4ab9839dcb9f999c59d9bbc6efe5e027a878737ed0d56e19b171c0`  
		Last Modified: Fri, 07 Apr 2017 22:22:17 GMT  
		Size: 97.7 MB (97745799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd83325cc5bb69359050afa7d539ec206e14cd472f118018f915ac6070021f95`  
		Last Modified: Fri, 07 Apr 2017 22:21:56 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
