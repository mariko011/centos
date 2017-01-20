<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1.6.4`](#golang164)
-	[`golang:1.6`](#golang16)
-	[`golang:1.6.4-onbuild`](#golang164-onbuild)
-	[`golang:1.6-onbuild`](#golang16-onbuild)
-	[`golang:1.6.4-wheezy`](#golang164-wheezy)
-	[`golang:1.6-wheezy`](#golang16-wheezy)
-	[`golang:1.6.4-alpine`](#golang164-alpine)
-	[`golang:1.6-alpine`](#golang16-alpine)
-	[`golang:1.6.4-windowsservercore`](#golang164-windowsservercore)
-	[`golang:1.6-windowsservercore`](#golang16-windowsservercore)
-	[`golang:1.6.4-nanoserver`](#golang164-nanoserver)
-	[`golang:1.6-nanoserver`](#golang16-nanoserver)
-	[`golang:1.7.4`](#golang174)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.4-onbuild`](#golang174-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.4-wheezy`](#golang174-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.4-alpine`](#golang174-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.4-alpine3.5`](#golang174-alpine35)
-	[`golang:1.7-alpine3.5`](#golang17-alpine35)
-	[`golang:1-alpine3.5`](#golang1-alpine35)
-	[`golang:alpine3.5`](#golangalpine35)
-	[`golang:1.7.4-windowsservercore`](#golang174-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.7.4-nanoserver`](#golang174-nanoserver)
-	[`golang:1.7-nanoserver`](#golang17-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:1.8rc2`](#golang18rc2)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8rc2-onbuild`](#golang18rc2-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8rc2-wheezy`](#golang18rc2-wheezy)
-	[`golang:1.8-wheezy`](#golang18-wheezy)
-	[`golang:1.8rc2-alpine`](#golang18rc2-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8rc2-windowsservercore`](#golang18rc2-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.8rc2-nanoserver`](#golang18rc2-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)

## `golang:1.6.4`

```console
$ docker pull golang@sha256:29116f0f6cd2ef6a882639ee222ccb6e2f6d88a1d97d461aaf4c4a2622d252a1
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258401555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63330314bb46ba21961f752e7170eeec68c952139714208284cea33c397d0880`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:43 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:54 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:56 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:56 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77855d2f51f632cff198a2467df06c85d8d0d69b254c9276c31e11e6f69f248a`  
		Last Modified: Wed, 18 Jan 2017 03:45:26 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989296b493d0431f1cc8872aedc458236fff219b67af083ad969654d1fc005e`  
		Last Modified: Wed, 18 Jan 2017 03:44:53 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d403c19702e7af5a10e5ccd8873108469797cce8cb663ca3c86272cee26301d`  
		Last Modified: Wed, 18 Jan 2017 03:44:52 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:29116f0f6cd2ef6a882639ee222ccb6e2f6d88a1d97d461aaf4c4a2622d252a1
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258401555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63330314bb46ba21961f752e7170eeec68c952139714208284cea33c397d0880`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:43 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:54 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:56 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:56 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77855d2f51f632cff198a2467df06c85d8d0d69b254c9276c31e11e6f69f248a`  
		Last Modified: Wed, 18 Jan 2017 03:45:26 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989296b493d0431f1cc8872aedc458236fff219b67af083ad969654d1fc005e`  
		Last Modified: Wed, 18 Jan 2017 03:44:53 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d403c19702e7af5a10e5ccd8873108469797cce8cb663ca3c86272cee26301d`  
		Last Modified: Wed, 18 Jan 2017 03:44:52 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-onbuild`

```console
$ docker pull golang@sha256:5307f272434d6fff934b0976d6b4c55e46792b100bfb4c66b9b9f16deca8b32f
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258401687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f87d4e5dc0f46c8557298728cf625cf82257c8b454b15f2afe269e52cb97cc`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:43 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:54 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:56 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:56 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:57 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:58 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:59 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77855d2f51f632cff198a2467df06c85d8d0d69b254c9276c31e11e6f69f248a`  
		Last Modified: Wed, 18 Jan 2017 03:45:26 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989296b493d0431f1cc8872aedc458236fff219b67af083ad969654d1fc005e`  
		Last Modified: Wed, 18 Jan 2017 03:44:53 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d403c19702e7af5a10e5ccd8873108469797cce8cb663ca3c86272cee26301d`  
		Last Modified: Wed, 18 Jan 2017 03:44:52 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34839605e0954bf21ad008354efa1d1262da04fc3d6a1058437a55bb7391b0c`  
		Last Modified: Wed, 18 Jan 2017 03:46:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:5307f272434d6fff934b0976d6b4c55e46792b100bfb4c66b9b9f16deca8b32f
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258401687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f87d4e5dc0f46c8557298728cf625cf82257c8b454b15f2afe269e52cb97cc`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:43 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:54 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:56 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:56 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:57 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:58 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:58 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:59 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77855d2f51f632cff198a2467df06c85d8d0d69b254c9276c31e11e6f69f248a`  
		Last Modified: Wed, 18 Jan 2017 03:45:26 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989296b493d0431f1cc8872aedc458236fff219b67af083ad969654d1fc005e`  
		Last Modified: Wed, 18 Jan 2017 03:44:53 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d403c19702e7af5a10e5ccd8873108469797cce8cb663ca3c86272cee26301d`  
		Last Modified: Wed, 18 Jan 2017 03:44:52 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34839605e0954bf21ad008354efa1d1262da04fc3d6a1058437a55bb7391b0c`  
		Last Modified: Wed, 18 Jan 2017 03:46:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-wheezy`

```console
$ docker pull golang@sha256:b8a7ebb332cc509ceac2b08430bc4f3e0bd6241ffc2e5bc8c777c4c68d82f126
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204339736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093cde301679aa05c442be720f6eab221a5646814e9e5092bef0941e64ce43be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:59 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:41:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:41:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:41:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:41:11 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:41:13 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:41:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa2d1c0654449abde666dc43f7983fed666399c904bf6ac18d63d4ed63638d4`  
		Last Modified: Wed, 18 Jan 2017 03:47:09 GMT  
		Size: 86.3 MB (86339341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e67cb4708e850498100edef15ce1ea6ae2e626dfc522f865651115890527d`  
		Last Modified: Wed, 18 Jan 2017 03:46:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4cf575cb1404ce5492f75d0739ae4346795754535a71767591f25230957e30`  
		Last Modified: Wed, 18 Jan 2017 03:46:36 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:b8a7ebb332cc509ceac2b08430bc4f3e0bd6241ffc2e5bc8c777c4c68d82f126
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204339736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093cde301679aa05c442be720f6eab221a5646814e9e5092bef0941e64ce43be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:59 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 17 Jan 2017 00:41:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:41:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 17 Jan 2017 00:41:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:41:11 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:41:13 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:41:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa2d1c0654449abde666dc43f7983fed666399c904bf6ac18d63d4ed63638d4`  
		Last Modified: Wed, 18 Jan 2017 03:47:09 GMT  
		Size: 86.3 MB (86339341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e67cb4708e850498100edef15ce1ea6ae2e626dfc522f865651115890527d`  
		Last Modified: Wed, 18 Jan 2017 03:46:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4cf575cb1404ce5492f75d0739ae4346795754535a71767591f25230957e30`  
		Last Modified: Wed, 18 Jan 2017 03:46:36 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-alpine`

```console
$ docker pull golang@sha256:269d188232cd9a6194f71650780cb2e903a76958182def1008cc7255f6f457d6
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72152052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea38172de324861326680a9316d56ba1f175833e049d58668ff9df5be6dbebe`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:00:01 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 27 Dec 2016 19:00:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.4.src.tar.gz
# Tue, 27 Dec 2016 19:00:12 GMT
ENV GOLANG_SRC_SHA256=8796cc48217b59595832aa9de6db45f58706dae68c9c7fbbd78c9fdbe3cd9032
# Tue, 27 Dec 2016 19:00:13 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 27 Dec 2016 19:00:13 GMT
COPY file:2fa52acd644eca7daa95fdcb2bc4d2bd13ea2fc960824d7b07887fa8a1f85ac0 in / 
# Tue, 27 Dec 2016 19:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:01:47 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:01:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:01:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:01:48 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:02:00 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f35c05c6f886d5161a67ffd9dd55abeceea27b79c50a68b229f9c6932c680f`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92b4d3b8ab3c18e900c4629162b0525ea5e718f0bf7462f29fcfd21d98eefb9`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6973cd4e099e8e72b2715c926dfb6f46e490c6828280eb1aac12075cd0cf5eb7`  
		Last Modified: Tue, 27 Dec 2016 19:05:38 GMT  
		Size: 69.5 MB (69492318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6930f3feba46d9bf35fd490a1bf1adf943bef748d57af61efa9945b4936f0c95`  
		Last Modified: Tue, 27 Dec 2016 19:05:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60124a1a7c2ce6cc33926cb522c5a4fb16bfd1ec3d03ea32ddf4aa7068803e2a`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:269d188232cd9a6194f71650780cb2e903a76958182def1008cc7255f6f457d6
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72152052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea38172de324861326680a9316d56ba1f175833e049d58668ff9df5be6dbebe`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:00:01 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 27 Dec 2016 19:00:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.4.src.tar.gz
# Tue, 27 Dec 2016 19:00:12 GMT
ENV GOLANG_SRC_SHA256=8796cc48217b59595832aa9de6db45f58706dae68c9c7fbbd78c9fdbe3cd9032
# Tue, 27 Dec 2016 19:00:13 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 27 Dec 2016 19:00:13 GMT
COPY file:2fa52acd644eca7daa95fdcb2bc4d2bd13ea2fc960824d7b07887fa8a1f85ac0 in / 
# Tue, 27 Dec 2016 19:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:01:47 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:01:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:01:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:01:48 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:02:00 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f35c05c6f886d5161a67ffd9dd55abeceea27b79c50a68b229f9c6932c680f`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92b4d3b8ab3c18e900c4629162b0525ea5e718f0bf7462f29fcfd21d98eefb9`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 783.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6973cd4e099e8e72b2715c926dfb6f46e490c6828280eb1aac12075cd0cf5eb7`  
		Last Modified: Tue, 27 Dec 2016 19:05:38 GMT  
		Size: 69.5 MB (69492318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6930f3feba46d9bf35fd490a1bf1adf943bef748d57af61efa9945b4936f0c95`  
		Last Modified: Tue, 27 Dec 2016 19:05:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60124a1a7c2ce6cc33926cb522c5a4fb16bfd1ec3d03ea32ddf4aa7068803e2a`  
		Last Modified: Tue, 27 Dec 2016 19:05:12 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-windowsservercore`

```console
$ docker pull golang@sha256:e7734d882b4585f0297bc3a99322ee3750fb097fe53a1aee1723ac5e38757c0d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5320084754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629c7d1f2ad4054b5ad9770677501a660dbc8f6dbb0068543da6597298c20a0e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 18 Jan 2017 00:26:47 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 18 Jan 2017 00:26:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 18 Jan 2017 00:26:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 18 Jan 2017 00:30:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:35:30 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e9c74ad35db3d34bff89e03e19f181e9dc7fc34759c5907cb29b2f57ce7ffd`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2398acd02d688283d1967b7523ff5d384e7b5a0e87c0fd373dd36d5aa0fdf27`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb62c35045d788bdd9ccc2625329ccb8c75e72beb3bfb354f4e9bb54e7d95c6`  
		Last Modified: Fri, 20 Jan 2017 22:01:09 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbf4503f36260b7d1a7b73d094bb8fbf0418ee9064c179f04d155d40bc77ad9`  
		Last Modified: Fri, 20 Jan 2017 22:02:06 GMT  
		Size: 99.1 MB (99086256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1683da21b6925119f6c655ad47762c9fe4cde4a4be39fa5cae5dd899f67c6`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:e7734d882b4585f0297bc3a99322ee3750fb097fe53a1aee1723ac5e38757c0d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5320084754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629c7d1f2ad4054b5ad9770677501a660dbc8f6dbb0068543da6597298c20a0e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 18 Jan 2017 00:26:47 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 18 Jan 2017 00:26:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 18 Jan 2017 00:26:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 18 Jan 2017 00:30:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:35:30 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e9c74ad35db3d34bff89e03e19f181e9dc7fc34759c5907cb29b2f57ce7ffd`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2398acd02d688283d1967b7523ff5d384e7b5a0e87c0fd373dd36d5aa0fdf27`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb62c35045d788bdd9ccc2625329ccb8c75e72beb3bfb354f4e9bb54e7d95c6`  
		Last Modified: Fri, 20 Jan 2017 22:01:09 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbf4503f36260b7d1a7b73d094bb8fbf0418ee9064c179f04d155d40bc77ad9`  
		Last Modified: Fri, 20 Jan 2017 22:02:06 GMT  
		Size: 99.1 MB (99086256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1683da21b6925119f6c655ad47762c9fe4cde4a4be39fa5cae5dd899f67c6`  
		Last Modified: Fri, 20 Jan 2017 22:01:10 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-nanoserver`

```console
$ docker pull golang@sha256:c1a3e344e818485c8577af9898fa9ce499ae14269f6728c9b0888a430f87b557
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.4 MB (428399896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877ae49593f789179a3ca892687b63a186749ecfdbe29d8b0644d8a78e26e858`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:35:35 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 20 Jan 2017 21:35:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:35:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 20 Jan 2017 21:41:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:41:34 GMT
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
	-	`sha256:d218fef097a55633eb1b8eb001bad48fa8487b97c549d712d747a52b82e2e2ff`  
		Last Modified: Fri, 20 Jan 2017 22:08:37 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e868c0410af5f32a327d58f3f4e995e51d2f4dd28f0a19df085391efc71f1c32`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932efe501fe7e7c8651999e44953cf23e86390459a569f36764a7b550dc6a1c3`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11cfe2254f4b71998b14c04bc963c3a7882bbe7fdc86646566002535b85d6e0`  
		Last Modified: Fri, 20 Jan 2017 22:09:38 GMT  
		Size: 94.2 MB (94219990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee5c2d745c9529eb5ecfb00336c4665f75872af7f24ecbb630685f098645e68`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-nanoserver`

```console
$ docker pull golang@sha256:c1a3e344e818485c8577af9898fa9ce499ae14269f6728c9b0888a430f87b557
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.4 MB (428399896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877ae49593f789179a3ca892687b63a186749ecfdbe29d8b0644d8a78e26e858`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:35:35 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 20 Jan 2017 21:35:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:35:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 20 Jan 2017 21:41:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:41:34 GMT
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
	-	`sha256:d218fef097a55633eb1b8eb001bad48fa8487b97c549d712d747a52b82e2e2ff`  
		Last Modified: Fri, 20 Jan 2017 22:08:37 GMT  
		Size: 966.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e868c0410af5f32a327d58f3f4e995e51d2f4dd28f0a19df085391efc71f1c32`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932efe501fe7e7c8651999e44953cf23e86390459a569f36764a7b550dc6a1c3`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11cfe2254f4b71998b14c04bc963c3a7882bbe7fdc86646566002535b85d6e0`  
		Last Modified: Fri, 20 Jan 2017 22:09:38 GMT  
		Size: 94.2 MB (94219990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee5c2d745c9529eb5ecfb00336c4665f75872af7f24ecbb630685f098645e68`  
		Last Modified: Fri, 20 Jan 2017 22:08:36 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4`

```console
$ docker pull golang@sha256:0b3787ac21ffb4edbd6710e0e60f991d5ded8d8a4f558209ef5987f73db4211a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bdc5e851ceac6f5871a83a655de79f1f57caa6fc6650b9133ac4d08a80fc48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:0b3787ac21ffb4edbd6710e0e60f991d5ded8d8a4f558209ef5987f73db4211a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bdc5e851ceac6f5871a83a655de79f1f57caa6fc6650b9133ac4d08a80fc48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:0b3787ac21ffb4edbd6710e0e60f991d5ded8d8a4f558209ef5987f73db4211a
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bdc5e851ceac6f5871a83a655de79f1f57caa6fc6650b9133ac4d08a80fc48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:0b3787ac21ffb4edbd6710e0e60f991d5ded8d8a4f558209ef5987f73db4211a
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bdc5e851ceac6f5871a83a655de79f1f57caa6fc6650b9133ac4d08a80fc48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-onbuild`

```console
$ docker pull golang@sha256:ce65c1d1fc3ada88796295326ac4633674af0b485c093c952251cb9ee99bf33a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef77113a667052a25bdc83a17926dd019eb735c4066a3aef49ad4466940e6323`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:17 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392730291e894383e08783b1e4a4478300b70083a1f2b3bed3704e24fd7d7765`  
		Last Modified: Wed, 18 Jan 2017 03:49:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:ce65c1d1fc3ada88796295326ac4633674af0b485c093c952251cb9ee99bf33a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef77113a667052a25bdc83a17926dd019eb735c4066a3aef49ad4466940e6323`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:17 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392730291e894383e08783b1e4a4478300b70083a1f2b3bed3704e24fd7d7765`  
		Last Modified: Wed, 18 Jan 2017 03:49:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:ce65c1d1fc3ada88796295326ac4633674af0b485c093c952251cb9ee99bf33a
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef77113a667052a25bdc83a17926dd019eb735c4066a3aef49ad4466940e6323`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:17 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392730291e894383e08783b1e4a4478300b70083a1f2b3bed3704e24fd7d7765`  
		Last Modified: Wed, 18 Jan 2017 03:49:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:ce65c1d1fc3ada88796295326ac4633674af0b485c093c952251cb9ee99bf33a
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef77113a667052a25bdc83a17926dd019eb735c4066a3aef49ad4466940e6323`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:17 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392730291e894383e08783b1e4a4478300b70083a1f2b3bed3704e24fd7d7765`  
		Last Modified: Wed, 18 Jan 2017 03:49:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-wheezy`

```console
$ docker pull golang@sha256:7bb06a5896040f6bb1e977fb9c28b393ad542bc671ec63f4f3de94fd1d179a49
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201086304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf4442a453a5b01179fbc44faa3963fc81c23274a79b0e72c6d664d68754d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:40 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:41 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c3b0b9715b3d50fc6110b44b64380a381b73a5ee6dea05d531af7782fb1d54`  
		Last Modified: Wed, 18 Jan 2017 03:50:54 GMT  
		Size: 83.1 MB (83085906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a0d7664b59b89b2b7aa9c6a1bc5897c86590bf93789883bdc060dd214842b4`  
		Last Modified: Wed, 18 Jan 2017 03:50:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9bd46e9fea7841e0b50a562f0cee75b1094971a442e2be83693b9171b19695`  
		Last Modified: Wed, 18 Jan 2017 03:50:26 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:7bb06a5896040f6bb1e977fb9c28b393ad542bc671ec63f4f3de94fd1d179a49
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201086304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf4442a453a5b01179fbc44faa3963fc81c23274a79b0e72c6d664d68754d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:40 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:41 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c3b0b9715b3d50fc6110b44b64380a381b73a5ee6dea05d531af7782fb1d54`  
		Last Modified: Wed, 18 Jan 2017 03:50:54 GMT  
		Size: 83.1 MB (83085906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a0d7664b59b89b2b7aa9c6a1bc5897c86590bf93789883bdc060dd214842b4`  
		Last Modified: Wed, 18 Jan 2017 03:50:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9bd46e9fea7841e0b50a562f0cee75b1094971a442e2be83693b9171b19695`  
		Last Modified: Wed, 18 Jan 2017 03:50:26 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:7bb06a5896040f6bb1e977fb9c28b393ad542bc671ec63f4f3de94fd1d179a49
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201086304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf4442a453a5b01179fbc44faa3963fc81c23274a79b0e72c6d664d68754d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:40 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:41 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c3b0b9715b3d50fc6110b44b64380a381b73a5ee6dea05d531af7782fb1d54`  
		Last Modified: Wed, 18 Jan 2017 03:50:54 GMT  
		Size: 83.1 MB (83085906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a0d7664b59b89b2b7aa9c6a1bc5897c86590bf93789883bdc060dd214842b4`  
		Last Modified: Wed, 18 Jan 2017 03:50:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9bd46e9fea7841e0b50a562f0cee75b1094971a442e2be83693b9171b19695`  
		Last Modified: Wed, 18 Jan 2017 03:50:26 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:7bb06a5896040f6bb1e977fb9c28b393ad542bc671ec63f4f3de94fd1d179a49
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201086304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bf4442a453a5b01179fbc44faa3963fc81c23274a79b0e72c6d664d68754d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:40 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:41 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c3b0b9715b3d50fc6110b44b64380a381b73a5ee6dea05d531af7782fb1d54`  
		Last Modified: Wed, 18 Jan 2017 03:50:54 GMT  
		Size: 83.1 MB (83085906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a0d7664b59b89b2b7aa9c6a1bc5897c86590bf93789883bdc060dd214842b4`  
		Last Modified: Wed, 18 Jan 2017 03:50:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9bd46e9fea7841e0b50a562f0cee75b1094971a442e2be83693b9171b19695`  
		Last Modified: Wed, 18 Jan 2017 03:50:26 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-alpine`

```console
$ docker pull golang@sha256:c8e35ff3c7b7cbc6d302822074e3c9b4f2c7a4ddcf64ffce81b627a639a93e33
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72907682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00371bbb49d513b10ac943ddf1f779d65357ddaf56709e796247a1fe4e1bed8f`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Tue, 27 Dec 2016 19:02:02 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 27 Dec 2016 19:02:13 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Tue, 27 Dec 2016 19:03:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:03:35 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:03:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:03:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:03:37 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:03:49 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f375f5f2391d8fb165d49c2b637fff6d40891741a1695583086cceb74c06fd`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3332414c0fc89c63cede08272eefb3d4995ba426536e5c6b39f92efba365a22`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c454c6104f987f5858d40e35d48e41a88c0ba7ddc36e00308d2dfc8df5669f3`  
		Last Modified: Tue, 27 Dec 2016 19:06:32 GMT  
		Size: 70.2 MB (70247960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07166ea045394ea4898eceef1acb7dbb6c399fffe52eb0bdeffdad57f5ca1a2`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3d80e80a46a4038ff69fe26a71a62eafb61dd76893558e91364c6559bfa123`  
		Last Modified: Tue, 27 Dec 2016 19:06:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:c8e35ff3c7b7cbc6d302822074e3c9b4f2c7a4ddcf64ffce81b627a639a93e33
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72907682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00371bbb49d513b10ac943ddf1f779d65357ddaf56709e796247a1fe4e1bed8f`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Tue, 27 Dec 2016 19:02:02 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 27 Dec 2016 19:02:13 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Tue, 27 Dec 2016 19:03:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:03:35 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:03:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:03:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:03:37 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:03:49 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f375f5f2391d8fb165d49c2b637fff6d40891741a1695583086cceb74c06fd`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3332414c0fc89c63cede08272eefb3d4995ba426536e5c6b39f92efba365a22`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c454c6104f987f5858d40e35d48e41a88c0ba7ddc36e00308d2dfc8df5669f3`  
		Last Modified: Tue, 27 Dec 2016 19:06:32 GMT  
		Size: 70.2 MB (70247960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07166ea045394ea4898eceef1acb7dbb6c399fffe52eb0bdeffdad57f5ca1a2`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3d80e80a46a4038ff69fe26a71a62eafb61dd76893558e91364c6559bfa123`  
		Last Modified: Tue, 27 Dec 2016 19:06:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:c8e35ff3c7b7cbc6d302822074e3c9b4f2c7a4ddcf64ffce81b627a639a93e33
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72907682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00371bbb49d513b10ac943ddf1f779d65357ddaf56709e796247a1fe4e1bed8f`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Tue, 27 Dec 2016 19:02:02 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 27 Dec 2016 19:02:13 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Tue, 27 Dec 2016 19:03:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:03:35 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:03:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:03:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:03:37 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:03:49 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f375f5f2391d8fb165d49c2b637fff6d40891741a1695583086cceb74c06fd`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3332414c0fc89c63cede08272eefb3d4995ba426536e5c6b39f92efba365a22`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c454c6104f987f5858d40e35d48e41a88c0ba7ddc36e00308d2dfc8df5669f3`  
		Last Modified: Tue, 27 Dec 2016 19:06:32 GMT  
		Size: 70.2 MB (70247960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07166ea045394ea4898eceef1acb7dbb6c399fffe52eb0bdeffdad57f5ca1a2`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3d80e80a46a4038ff69fe26a71a62eafb61dd76893558e91364c6559bfa123`  
		Last Modified: Tue, 27 Dec 2016 19:06:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:c8e35ff3c7b7cbc6d302822074e3c9b4f2c7a4ddcf64ffce81b627a639a93e33
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72907682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00371bbb49d513b10ac943ddf1f779d65357ddaf56709e796247a1fe4e1bed8f`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Tue, 27 Dec 2016 19:02:01 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Tue, 27 Dec 2016 19:02:02 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 27 Dec 2016 19:02:13 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Tue, 27 Dec 2016 19:03:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:03:35 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:03:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:03:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:03:37 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:03:49 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91365fe6b6b6700eb5f500cafe8641a95db6873dd9f1c2acd21f583126a699cc`  
		Last Modified: Tue, 27 Dec 2016 19:05:15 GMT  
		Size: 343.9 KB (343946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f375f5f2391d8fb165d49c2b637fff6d40891741a1695583086cceb74c06fd`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3332414c0fc89c63cede08272eefb3d4995ba426536e5c6b39f92efba365a22`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c454c6104f987f5858d40e35d48e41a88c0ba7ddc36e00308d2dfc8df5669f3`  
		Last Modified: Tue, 27 Dec 2016 19:06:32 GMT  
		Size: 70.2 MB (70247960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07166ea045394ea4898eceef1acb7dbb6c399fffe52eb0bdeffdad57f5ca1a2`  
		Last Modified: Tue, 27 Dec 2016 19:06:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3d80e80a46a4038ff69fe26a71a62eafb61dd76893558e91364c6559bfa123`  
		Last Modified: Tue, 27 Dec 2016 19:06:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-alpine3.5`

```console
$ docker pull golang@sha256:cfd3153a5c19d1e1637f38cc2755fae0c70aef52945b9bc81dc67f4e97a80bdb
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-alpine3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71692589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c89ae607c37dceca6650402ab57a18ec7d8f530c48c2ed926f79ce3fa9e434d`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Jan 2017 21:06:26 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 04 Jan 2017 21:06:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Wed, 04 Jan 2017 21:06:28 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Wed, 04 Jan 2017 21:06:28 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 04 Jan 2017 21:06:29 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Wed, 04 Jan 2017 21:07:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:07:21 GMT
ENV GOPATH=/go
# Wed, 04 Jan 2017 21:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Jan 2017 21:07:22 GMT
WORKDIR /go
# Wed, 04 Jan 2017 21:07:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcc391f06611b0d05acbd8ba438d32d632acc506b0507a171d4994e417f6415`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d933a812d93b072581af9a7bd0da8384fb613280c00a1ae96137e0f77e34f1f`  
		Last Modified: Wed, 04 Jan 2017 23:53:49 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0662dda3dccc1cac42678274718dcf99feaa225a7baab0255feab5343cd19b`  
		Last Modified: Wed, 04 Jan 2017 23:54:33 GMT  
		Size: 69.4 MB (69435090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917a735333bdbe0856d7c5c1650408ad8be08d742d8c9383616209927e04e02`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d2bbb7cb5effda14403a650038d87f617a3cb903699163f8e3fcaa96602d8`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine3.5`

```console
$ docker pull golang@sha256:cfd3153a5c19d1e1637f38cc2755fae0c70aef52945b9bc81dc67f4e97a80bdb
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71692589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c89ae607c37dceca6650402ab57a18ec7d8f530c48c2ed926f79ce3fa9e434d`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Jan 2017 21:06:26 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 04 Jan 2017 21:06:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Wed, 04 Jan 2017 21:06:28 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Wed, 04 Jan 2017 21:06:28 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 04 Jan 2017 21:06:29 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Wed, 04 Jan 2017 21:07:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:07:21 GMT
ENV GOPATH=/go
# Wed, 04 Jan 2017 21:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Jan 2017 21:07:22 GMT
WORKDIR /go
# Wed, 04 Jan 2017 21:07:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcc391f06611b0d05acbd8ba438d32d632acc506b0507a171d4994e417f6415`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d933a812d93b072581af9a7bd0da8384fb613280c00a1ae96137e0f77e34f1f`  
		Last Modified: Wed, 04 Jan 2017 23:53:49 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0662dda3dccc1cac42678274718dcf99feaa225a7baab0255feab5343cd19b`  
		Last Modified: Wed, 04 Jan 2017 23:54:33 GMT  
		Size: 69.4 MB (69435090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917a735333bdbe0856d7c5c1650408ad8be08d742d8c9383616209927e04e02`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d2bbb7cb5effda14403a650038d87f617a3cb903699163f8e3fcaa96602d8`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.5`

```console
$ docker pull golang@sha256:cfd3153a5c19d1e1637f38cc2755fae0c70aef52945b9bc81dc67f4e97a80bdb
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71692589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c89ae607c37dceca6650402ab57a18ec7d8f530c48c2ed926f79ce3fa9e434d`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Jan 2017 21:06:26 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 04 Jan 2017 21:06:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Wed, 04 Jan 2017 21:06:28 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Wed, 04 Jan 2017 21:06:28 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 04 Jan 2017 21:06:29 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Wed, 04 Jan 2017 21:07:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:07:21 GMT
ENV GOPATH=/go
# Wed, 04 Jan 2017 21:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Jan 2017 21:07:22 GMT
WORKDIR /go
# Wed, 04 Jan 2017 21:07:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcc391f06611b0d05acbd8ba438d32d632acc506b0507a171d4994e417f6415`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d933a812d93b072581af9a7bd0da8384fb613280c00a1ae96137e0f77e34f1f`  
		Last Modified: Wed, 04 Jan 2017 23:53:49 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0662dda3dccc1cac42678274718dcf99feaa225a7baab0255feab5343cd19b`  
		Last Modified: Wed, 04 Jan 2017 23:54:33 GMT  
		Size: 69.4 MB (69435090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917a735333bdbe0856d7c5c1650408ad8be08d742d8c9383616209927e04e02`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d2bbb7cb5effda14403a650038d87f617a3cb903699163f8e3fcaa96602d8`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.5`

```console
$ docker pull golang@sha256:cfd3153a5c19d1e1637f38cc2755fae0c70aef52945b9bc81dc67f4e97a80bdb
```

-	Platforms:
	-	linux; amd64

### `golang:alpine3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71692589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c89ae607c37dceca6650402ab57a18ec7d8f530c48c2ed926f79ce3fa9e434d`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Wed, 04 Jan 2017 21:06:26 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 04 Jan 2017 21:06:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Wed, 04 Jan 2017 21:06:28 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Wed, 04 Jan 2017 21:06:28 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 04 Jan 2017 21:06:29 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Wed, 04 Jan 2017 21:07:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:07:21 GMT
ENV GOPATH=/go
# Wed, 04 Jan 2017 21:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Jan 2017 21:07:22 GMT
WORKDIR /go
# Wed, 04 Jan 2017 21:07:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcc391f06611b0d05acbd8ba438d32d632acc506b0507a171d4994e417f6415`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d933a812d93b072581af9a7bd0da8384fb613280c00a1ae96137e0f77e34f1f`  
		Last Modified: Wed, 04 Jan 2017 23:53:49 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0662dda3dccc1cac42678274718dcf99feaa225a7baab0255feab5343cd19b`  
		Last Modified: Wed, 04 Jan 2017 23:54:33 GMT  
		Size: 69.4 MB (69435090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b917a735333bdbe0856d7c5c1650408ad8be08d742d8c9383616209927e04e02`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d2bbb7cb5effda14403a650038d87f617a3cb903699163f8e3fcaa96602d8`  
		Last Modified: Wed, 04 Jan 2017 23:53:48 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-windowsservercore`

```console
$ docker pull golang@sha256:fbfc1be131b53fc8bfb3d082fadca72b4da75bcd484062b0de8cf1c0ab95d685
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5317093563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54347770e63ccb51e801455ddffc0e6289a477cc295b950835281ba01139f49`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:41:40 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:41:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:41:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:48:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:48:14 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef27ca5db82072f22d30caa8cf4ddf5355b228be1402d1bf019f3081c5aab3`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26471d4a342228937ffb7e2ed324d30e815d42b1d5920f8d5696956ee8be7a`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4413cdb3db254bd9d08c195a80dc4815d569a9d8b8342132cb63dd9118af9`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294342d935462e5f63b0de47d38cc867b6eacca5f7d9b2e91db15fe92cb6c3e9`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 96.1 MB (96095037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e5a5f5f115df518164a797b3abee13adb4608dbb005643154b345200d444c`  
		Last Modified: Fri, 20 Jan 2017 22:09:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:fbfc1be131b53fc8bfb3d082fadca72b4da75bcd484062b0de8cf1c0ab95d685
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5317093563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54347770e63ccb51e801455ddffc0e6289a477cc295b950835281ba01139f49`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:41:40 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:41:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:41:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:48:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:48:14 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef27ca5db82072f22d30caa8cf4ddf5355b228be1402d1bf019f3081c5aab3`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26471d4a342228937ffb7e2ed324d30e815d42b1d5920f8d5696956ee8be7a`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4413cdb3db254bd9d08c195a80dc4815d569a9d8b8342132cb63dd9118af9`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294342d935462e5f63b0de47d38cc867b6eacca5f7d9b2e91db15fe92cb6c3e9`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 96.1 MB (96095037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e5a5f5f115df518164a797b3abee13adb4608dbb005643154b345200d444c`  
		Last Modified: Fri, 20 Jan 2017 22:09:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:fbfc1be131b53fc8bfb3d082fadca72b4da75bcd484062b0de8cf1c0ab95d685
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5317093563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54347770e63ccb51e801455ddffc0e6289a477cc295b950835281ba01139f49`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:41:40 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:41:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:41:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:48:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:48:14 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef27ca5db82072f22d30caa8cf4ddf5355b228be1402d1bf019f3081c5aab3`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26471d4a342228937ffb7e2ed324d30e815d42b1d5920f8d5696956ee8be7a`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4413cdb3db254bd9d08c195a80dc4815d569a9d8b8342132cb63dd9118af9`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294342d935462e5f63b0de47d38cc867b6eacca5f7d9b2e91db15fe92cb6c3e9`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 96.1 MB (96095037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e5a5f5f115df518164a797b3abee13adb4608dbb005643154b345200d444c`  
		Last Modified: Fri, 20 Jan 2017 22:09:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:fbfc1be131b53fc8bfb3d082fadca72b4da75bcd484062b0de8cf1c0ab95d685
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5317093563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54347770e63ccb51e801455ddffc0e6289a477cc295b950835281ba01139f49`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:41:40 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:41:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:41:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:48:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:48:14 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef27ca5db82072f22d30caa8cf4ddf5355b228be1402d1bf019f3081c5aab3`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26471d4a342228937ffb7e2ed324d30e815d42b1d5920f8d5696956ee8be7a`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4413cdb3db254bd9d08c195a80dc4815d569a9d8b8342132cb63dd9118af9`  
		Last Modified: Fri, 20 Jan 2017 22:09:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294342d935462e5f63b0de47d38cc867b6eacca5f7d9b2e91db15fe92cb6c3e9`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 96.1 MB (96095037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e5a5f5f115df518164a797b3abee13adb4608dbb005643154b345200d444c`  
		Last Modified: Fri, 20 Jan 2017 22:09:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-nanoserver`

```console
$ docker pull golang@sha256:fd70c47fcc87610282de1c576046e00d1dff84c0b431f0f03d5575bc815d39b3
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425250464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347bfa3d161591bc4e27f0be916a1bb2dc5e3b13baf4aeac4e84cc8e96f8ca23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:48:18 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:48:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:48:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:52:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:53:01 GMT
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
	-	`sha256:1ca0b6d4bb52011967d519d01891fe6f292b308e2967fef54ab300fb961a4aaf`  
		Last Modified: Fri, 20 Jan 2017 22:10:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806ca21cb94cc00d9bf2982e66a30759144148194cf81e9b5f872cd05eace85`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116af2b4c14eaf708382237ae230ac5638bfca987053a733e9bd9926341fc757`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1145eea9033a32d107c73094ed34d685b594aa8a255ef5fcd6758f42602e43c`  
		Last Modified: Fri, 20 Jan 2017 22:11:13 GMT  
		Size: 91.1 MB (91070560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14a57de1b75b3737bf2af1710cb33a2b555aecc141aacf3c17bcb986bfff750`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:fd70c47fcc87610282de1c576046e00d1dff84c0b431f0f03d5575bc815d39b3
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425250464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347bfa3d161591bc4e27f0be916a1bb2dc5e3b13baf4aeac4e84cc8e96f8ca23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:48:18 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:48:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:48:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:52:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:53:01 GMT
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
	-	`sha256:1ca0b6d4bb52011967d519d01891fe6f292b308e2967fef54ab300fb961a4aaf`  
		Last Modified: Fri, 20 Jan 2017 22:10:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806ca21cb94cc00d9bf2982e66a30759144148194cf81e9b5f872cd05eace85`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116af2b4c14eaf708382237ae230ac5638bfca987053a733e9bd9926341fc757`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1145eea9033a32d107c73094ed34d685b594aa8a255ef5fcd6758f42602e43c`  
		Last Modified: Fri, 20 Jan 2017 22:11:13 GMT  
		Size: 91.1 MB (91070560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14a57de1b75b3737bf2af1710cb33a2b555aecc141aacf3c17bcb986bfff750`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:fd70c47fcc87610282de1c576046e00d1dff84c0b431f0f03d5575bc815d39b3
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425250464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347bfa3d161591bc4e27f0be916a1bb2dc5e3b13baf4aeac4e84cc8e96f8ca23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:48:18 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:48:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:48:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:52:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:53:01 GMT
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
	-	`sha256:1ca0b6d4bb52011967d519d01891fe6f292b308e2967fef54ab300fb961a4aaf`  
		Last Modified: Fri, 20 Jan 2017 22:10:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806ca21cb94cc00d9bf2982e66a30759144148194cf81e9b5f872cd05eace85`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116af2b4c14eaf708382237ae230ac5638bfca987053a733e9bd9926341fc757`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1145eea9033a32d107c73094ed34d685b594aa8a255ef5fcd6758f42602e43c`  
		Last Modified: Fri, 20 Jan 2017 22:11:13 GMT  
		Size: 91.1 MB (91070560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14a57de1b75b3737bf2af1710cb33a2b555aecc141aacf3c17bcb986bfff750`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:fd70c47fcc87610282de1c576046e00d1dff84c0b431f0f03d5575bc815d39b3
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425250464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347bfa3d161591bc4e27f0be916a1bb2dc5e3b13baf4aeac4e84cc8e96f8ca23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:48:18 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 20 Jan 2017 21:48:21 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 20 Jan 2017 21:48:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 20 Jan 2017 21:52:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:53:01 GMT
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
	-	`sha256:1ca0b6d4bb52011967d519d01891fe6f292b308e2967fef54ab300fb961a4aaf`  
		Last Modified: Fri, 20 Jan 2017 22:10:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806ca21cb94cc00d9bf2982e66a30759144148194cf81e9b5f872cd05eace85`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116af2b4c14eaf708382237ae230ac5638bfca987053a733e9bd9926341fc757`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1145eea9033a32d107c73094ed34d685b594aa8a255ef5fcd6758f42602e43c`  
		Last Modified: Fri, 20 Jan 2017 22:11:13 GMT  
		Size: 91.1 MB (91070560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14a57de1b75b3737bf2af1710cb33a2b555aecc141aacf3c17bcb986bfff750`  
		Last Modified: Fri, 20 Jan 2017 22:10:43 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2`

```console
$ docker pull golang@sha256:54fd1b5eeaef137ba7692910682c0240cb27eb98d5b4ec6df1c5cc7631fc1948
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262283940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52055fa42bd598d61d7929e8f9490eaed0e662350facbfaef51938202a88e8f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:40:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:40:55 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:40:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:40:57 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:40:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf177235e2d88313967044d4d327045fe8ba084a58b401d7533b0298c66bf32`  
		Last Modified: Fri, 20 Jan 2017 21:54:25 GMT  
		Size: 90.2 MB (90221732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403ebdf2ca583d91a6575d30fa9b7303b17daf8d1101f3bace22b5a4ad82eb22`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51336f3d0f52c42df103f45c09c96eda7972a2330b910aef2899fb6091719228`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:54fd1b5eeaef137ba7692910682c0240cb27eb98d5b4ec6df1c5cc7631fc1948
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262283940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52055fa42bd598d61d7929e8f9490eaed0e662350facbfaef51938202a88e8f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:40:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:40:55 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:40:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:40:57 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:40:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf177235e2d88313967044d4d327045fe8ba084a58b401d7533b0298c66bf32`  
		Last Modified: Fri, 20 Jan 2017 21:54:25 GMT  
		Size: 90.2 MB (90221732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403ebdf2ca583d91a6575d30fa9b7303b17daf8d1101f3bace22b5a4ad82eb22`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51336f3d0f52c42df103f45c09c96eda7972a2330b910aef2899fb6091719228`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2-onbuild`

```console
$ docker pull golang@sha256:2489a113b7ff42331d50112b848f8a1f5602457313689b04d17ffe226727962b
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262284072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e984968f2b750efdab28305361275036dccefa37e25e37b3c1f8f77db41470e9`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:40:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:40:55 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:40:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:40:57 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:40:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 20 Jan 2017 21:40:59 GMT
RUN mkdir -p /go/src/app
# Fri, 20 Jan 2017 21:40:59 GMT
WORKDIR /go/src/app
# Fri, 20 Jan 2017 21:41:00 GMT
CMD ["go-wrapper" "run"]
# Fri, 20 Jan 2017 21:41:00 GMT
ONBUILD COPY . /go/src/app
# Fri, 20 Jan 2017 21:41:01 GMT
ONBUILD RUN go-wrapper download
# Fri, 20 Jan 2017 21:41:01 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf177235e2d88313967044d4d327045fe8ba084a58b401d7533b0298c66bf32`  
		Last Modified: Fri, 20 Jan 2017 21:54:25 GMT  
		Size: 90.2 MB (90221732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403ebdf2ca583d91a6575d30fa9b7303b17daf8d1101f3bace22b5a4ad82eb22`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51336f3d0f52c42df103f45c09c96eda7972a2330b910aef2899fb6091719228`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f246c21bb1cd8245814795c44d176c9faa43d202a38037df0264afe16812db8`  
		Last Modified: Fri, 20 Jan 2017 21:55:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:2489a113b7ff42331d50112b848f8a1f5602457313689b04d17ffe226727962b
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262284072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e984968f2b750efdab28305361275036dccefa37e25e37b3c1f8f77db41470e9`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:40:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:40:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:40:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:40:55 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:40:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:40:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:40:57 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:40:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 20 Jan 2017 21:40:59 GMT
RUN mkdir -p /go/src/app
# Fri, 20 Jan 2017 21:40:59 GMT
WORKDIR /go/src/app
# Fri, 20 Jan 2017 21:41:00 GMT
CMD ["go-wrapper" "run"]
# Fri, 20 Jan 2017 21:41:00 GMT
ONBUILD COPY . /go/src/app
# Fri, 20 Jan 2017 21:41:01 GMT
ONBUILD RUN go-wrapper download
# Fri, 20 Jan 2017 21:41:01 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf177235e2d88313967044d4d327045fe8ba084a58b401d7533b0298c66bf32`  
		Last Modified: Fri, 20 Jan 2017 21:54:25 GMT  
		Size: 90.2 MB (90221732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403ebdf2ca583d91a6575d30fa9b7303b17daf8d1101f3bace22b5a4ad82eb22`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51336f3d0f52c42df103f45c09c96eda7972a2330b910aef2899fb6091719228`  
		Last Modified: Fri, 20 Jan 2017 21:53:53 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f246c21bb1cd8245814795c44d176c9faa43d202a38037df0264afe16812db8`  
		Last Modified: Fri, 20 Jan 2017 21:55:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2-wheezy`

```console
$ docker pull golang@sha256:c1da10cc11e4f0eabfbb4664cf1b8f8e06191beb227e2a44d543ce6afc6681fd
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc2-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208222136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e0872ac6237238298af2afeee72cbd5bb5e5813e55e3a8560a659e12f5ef3b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:41:02 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:41:03 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:41:03 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:41:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:41:20 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:41:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:41:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:41:24 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:41:25 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c41f433c5ccd8db059be98f3e8f8f69ed6b29ed3b28a999a003aae89e51259`  
		Last Modified: Fri, 20 Jan 2017 21:56:14 GMT  
		Size: 90.2 MB (90221741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1bd8f104c5ba55fae85f0aeb8bfc7d3e76e8f01998b1a7325887898fdb1b67`  
		Last Modified: Fri, 20 Jan 2017 21:55:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f5dab9fece677b884664d936323653f6b2790902ecba957b2bcf4a27103848`  
		Last Modified: Fri, 20 Jan 2017 21:55:41 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-wheezy`

```console
$ docker pull golang@sha256:c1da10cc11e4f0eabfbb4664cf1b8f8e06191beb227e2a44d543ce6afc6681fd
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208222136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e0872ac6237238298af2afeee72cbd5bb5e5813e55e3a8560a659e12f5ef3b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:41:02 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:41:03 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.linux-amd64.tar.gz
# Fri, 20 Jan 2017 21:41:03 GMT
ENV GOLANG_DOWNLOAD_SHA256=d62c2d44d0c6b434e3cda12505f3c9fb880757e3396af1e9ba861f7b547cc864
# Fri, 20 Jan 2017 21:41:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 20 Jan 2017 21:41:20 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:41:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:41:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:41:24 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:41:25 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a331769dd25fbec1b25e2327f4fe4f7c91f6929ed225f5634566367acabe90`  
		Last Modified: Wed, 18 Jan 2017 03:46:49 GMT  
		Size: 36.4 MB (36448525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c41f433c5ccd8db059be98f3e8f8f69ed6b29ed3b28a999a003aae89e51259`  
		Last Modified: Fri, 20 Jan 2017 21:56:14 GMT  
		Size: 90.2 MB (90221741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1bd8f104c5ba55fae85f0aeb8bfc7d3e76e8f01998b1a7325887898fdb1b67`  
		Last Modified: Fri, 20 Jan 2017 21:55:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f5dab9fece677b884664d936323653f6b2790902ecba957b2bcf4a27103848`  
		Last Modified: Fri, 20 Jan 2017 21:55:41 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2-alpine`

```console
$ docker pull golang@sha256:22dbd6998eb9dce31a46f73a48222346f52dc3bdc1c28b20530b69bcdf0366f1
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76924338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9526f9b747f69698c7e32d648edf52ee9fa5f0727474bac8a16c394d84112b`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 20 Jan 2017 21:41:26 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:41:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8rc2.src.tar.gz
# Fri, 20 Jan 2017 21:41:27 GMT
ENV GOLANG_SRC_SHA256=70998e37d2f44019f78fda19b3f86a7a6a34bd0162b1d812631ebefbb306df81
# Fri, 20 Jan 2017 21:41:29 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 20 Jan 2017 21:43:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 20 Jan 2017 21:43:16 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:43:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:43:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:43:18 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:43:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0effa8e4d25b7218ca18f3e4a30eac491f7f16a9cc1147621b7d214b2bdaa22`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc170114ec1d17d7d805cc70c4fa030361f9b1965fc3dcd7c3b6ed56fa97251`  
		Last Modified: Fri, 20 Jan 2017 21:58:22 GMT  
		Size: 74.7 MB (74667612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a4b2c3b9b6bc48b13665590e51aabd23ea9e4770c23e3c02b25b91ade4300`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b1570f9b9d36ee9129cda334336adbd1eba2ed895da7897229399e84fc2851`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:22dbd6998eb9dce31a46f73a48222346f52dc3bdc1c28b20530b69bcdf0366f1
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76924338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9526f9b747f69698c7e32d648edf52ee9fa5f0727474bac8a16c394d84112b`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 20 Jan 2017 21:41:26 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:41:27 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8rc2.src.tar.gz
# Fri, 20 Jan 2017 21:41:27 GMT
ENV GOLANG_SRC_SHA256=70998e37d2f44019f78fda19b3f86a7a6a34bd0162b1d812631ebefbb306df81
# Fri, 20 Jan 2017 21:41:29 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 20 Jan 2017 21:43:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 20 Jan 2017 21:43:16 GMT
ENV GOPATH=/go
# Fri, 20 Jan 2017 21:43:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 21:43:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 20 Jan 2017 21:43:18 GMT
WORKDIR /go
# Fri, 20 Jan 2017 21:43:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb658c9d1694c3ba35ef345a0f46dcb9776452cccfa11aa7d41f288392fd6556`  
		Last Modified: Wed, 04 Jan 2017 23:49:03 GMT  
		Size: 352.7 KB (352746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0effa8e4d25b7218ca18f3e4a30eac491f7f16a9cc1147621b7d214b2bdaa22`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc170114ec1d17d7d805cc70c4fa030361f9b1965fc3dcd7c3b6ed56fa97251`  
		Last Modified: Fri, 20 Jan 2017 21:58:22 GMT  
		Size: 74.7 MB (74667612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1a4b2c3b9b6bc48b13665590e51aabd23ea9e4770c23e3c02b25b91ade4300`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b1570f9b9d36ee9129cda334336adbd1eba2ed895da7897229399e84fc2851`  
		Last Modified: Fri, 20 Jan 2017 21:56:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2-windowsservercore`

```console
$ docker pull golang@sha256:7201e61e7492c8d1fa93212a22b0018c457bdb074f6998385f8da3a4cb85c235
```

-	Platforms:
	-	windows; amd64

### `golang:1.8rc2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5322937687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bfc555a55e6f53ba0a7019bb069f62295b849f4e77bd31d0904f06ce84786f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:53:06 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:53:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.windows-amd64.zip
# Fri, 20 Jan 2017 21:53:12 GMT
ENV GOLANG_DOWNLOAD_SHA256=c5eadaec783fd01bbaf8e81aef1add83a7e5c125f50f6976ac31ab763bd0b49f
# Fri, 20 Jan 2017 21:57:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:57:11 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22b815d3d48bb4773afa2b70e89091cbaefa3158b403e80b758bc506f8ff90`  
		Last Modified: Fri, 20 Jan 2017 22:11:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b095f3b077ebef772652809353b322909693fae196b92648d80a661584796b5b`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9aaf1a7f7b46669410726f6f241d4e18b21e8a73722362847d8534732525e`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8da7b29061ce517a4a53430f89d3ca78321da6358a9320bec2505baa5274346`  
		Last Modified: Fri, 20 Jan 2017 22:12:05 GMT  
		Size: 101.9 MB (101939176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0352382ae388c5dbcac24bcea47c90bdd53f56caa5fe3325c56b64da5d928e78`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:7201e61e7492c8d1fa93212a22b0018c457bdb074f6998385f8da3a4cb85c235
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5322937687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bfc555a55e6f53ba0a7019bb069f62295b849f4e77bd31d0904f06ce84786f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 18 Jan 2017 00:22:39 GMT
ENV GIT_VERSION=2.11.0
# Wed, 18 Jan 2017 00:22:41 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 18 Jan 2017 00:22:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 18 Jan 2017 00:22:47 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 18 Jan 2017 00:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 18 Jan 2017 00:26:23 GMT
ENV GOPATH=C:\gopath
# Wed, 18 Jan 2017 00:26:44 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 20 Jan 2017 21:53:06 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:53:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.windows-amd64.zip
# Fri, 20 Jan 2017 21:53:12 GMT
ENV GOLANG_DOWNLOAD_SHA256=c5eadaec783fd01bbaf8e81aef1add83a7e5c125f50f6976ac31ab763bd0b49f
# Fri, 20 Jan 2017 21:57:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 21:57:11 GMT
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
	-	`sha256:897c7807798acd4116c377b5307f0b5d3c4bbc03c235a727c4789e6b35974cba`  
		Last Modified: Fri, 20 Jan 2017 22:01:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7c7c5b42aa2cf38693b33954d51e48e763705017cd1f4d16b0a311c539863`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf30c0d5a2dbb915e9b83bb1865163fe73ff9274f10b59e2901c1e0e045ae17b`  
		Last Modified: Fri, 20 Jan 2017 22:01:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7d51259173ad3b6238e2d8d0a5bc8a0a00632206dc98ed8e9760cde0769ac0`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25170cb36a913293bf6047d0997a2f062f2fe4c8505cda896351ab08dc24e6`  
		Last Modified: Fri, 20 Jan 2017 22:08:24 GMT  
		Size: 228.9 MB (228880826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96a3c292bede7d32494f1d419d749d331e33f84507a8fe4fcc2387ec91c669`  
		Last Modified: Fri, 20 Jan 2017 22:01:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1775be9ff04c6b10f539f7c2720bc9f5d0396356cf38f8e95b5017590bcf191e`  
		Last Modified: Fri, 20 Jan 2017 22:01:36 GMT  
		Size: 9.0 MB (8974533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f22b815d3d48bb4773afa2b70e89091cbaefa3158b403e80b758bc506f8ff90`  
		Last Modified: Fri, 20 Jan 2017 22:11:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b095f3b077ebef772652809353b322909693fae196b92648d80a661584796b5b`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9aaf1a7f7b46669410726f6f241d4e18b21e8a73722362847d8534732525e`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8da7b29061ce517a4a53430f89d3ca78321da6358a9320bec2505baa5274346`  
		Last Modified: Fri, 20 Jan 2017 22:12:05 GMT  
		Size: 101.9 MB (101939176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0352382ae388c5dbcac24bcea47c90bdd53f56caa5fe3325c56b64da5d928e78`  
		Last Modified: Fri, 20 Jan 2017 22:11:32 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc2-nanoserver`

```console
$ docker pull golang@sha256:8d56bfaa33738878521533e7235bfbe14f1bb9045a72ff884af2a4794bd9fb71
```

-	Platforms:
	-	windows; amd64

### `golang:1.8rc2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.8 MB (427818219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2a14b52c87a904546725b61be0b5c0ae061d0cba761752f6dfc7c858c04e74`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:57:13 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:57:15 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.windows-amd64.zip
# Fri, 20 Jan 2017 21:57:17 GMT
ENV GOLANG_DOWNLOAD_SHA256=c5eadaec783fd01bbaf8e81aef1add83a7e5c125f50f6976ac31ab763bd0b49f
# Fri, 20 Jan 2017 22:00:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 22:00:55 GMT
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
	-	`sha256:499edc2ed3fceade1f63c2e9c2c142e650ad0be108143571fe24f179a3a4c467`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9188ca3fbae85ff2ff4dd24f78a3836aa39a020ac6624a53a2f0ff572a2f7`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b762e2863e771c4792e1d3d4e572ca41b6fa3ab5f8c10e39de16735e093980ef`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b865104437c6402a79ed2367c92ec95009c1883345b25096c265bcfc4a9ae319`  
		Last Modified: Fri, 20 Jan 2017 22:12:43 GMT  
		Size: 93.6 MB (93638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2306fa2367aaabe727ac5f11ef01ee3b5733081d8156421821be9228b98fe886`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:8d56bfaa33738878521533e7235bfbe14f1bb9045a72ff884af2a4794bd9fb71
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.8 MB (427818219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2a14b52c87a904546725b61be0b5c0ae061d0cba761752f6dfc7c858c04e74`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 20 Jan 2017 21:57:13 GMT
ENV GOLANG_VERSION=1.8rc2
# Fri, 20 Jan 2017 21:57:15 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc2.windows-amd64.zip
# Fri, 20 Jan 2017 21:57:17 GMT
ENV GOLANG_DOWNLOAD_SHA256=c5eadaec783fd01bbaf8e81aef1add83a7e5c125f50f6976ac31ab763bd0b49f
# Fri, 20 Jan 2017 22:00:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 20 Jan 2017 22:00:55 GMT
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
	-	`sha256:499edc2ed3fceade1f63c2e9c2c142e650ad0be108143571fe24f179a3a4c467`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9188ca3fbae85ff2ff4dd24f78a3836aa39a020ac6624a53a2f0ff572a2f7`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b762e2863e771c4792e1d3d4e572ca41b6fa3ab5f8c10e39de16735e093980ef`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b865104437c6402a79ed2367c92ec95009c1883345b25096c265bcfc4a9ae319`  
		Last Modified: Fri, 20 Jan 2017 22:12:43 GMT  
		Size: 93.6 MB (93638331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2306fa2367aaabe727ac5f11ef01ee3b5733081d8156421821be9228b98fe886`  
		Last Modified: Fri, 20 Jan 2017 22:12:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
