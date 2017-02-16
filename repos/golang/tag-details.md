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
$ docker pull golang@sha256:c73427bfa9ff9a157f0236a6775df568b60f6e466ec264ff177274969b994340
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5123801052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d4889940d2d076473274ffd3928bd0185707a49b7f5ae85d21a0de5edd3a7`
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
# Wed, 15 Feb 2017 20:28:34 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 15 Feb 2017 20:28:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 15 Feb 2017 20:28:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 15 Feb 2017 20:32:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:32:14 GMT
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
	-	`sha256:e9c28055c91183995e858cada0d31aaaaa501532f0de5bf335244ff305516f53`  
		Last Modified: Wed, 15 Feb 2017 20:40:21 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588270e226d4afc0bc26a7526d1e472b4358c6eae653184751c40101db2a4811`  
		Last Modified: Wed, 15 Feb 2017 20:40:21 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4109f9d1cc43739fb321becc32496cc27c664b8101afd9ff5e5b304dfc3b1b0`  
		Last Modified: Wed, 15 Feb 2017 20:40:22 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797e896cd9aeb69c2db6482baa31139a7650a6177bfbb1c0b94842a7d5fbb579`  
		Last Modified: Wed, 15 Feb 2017 20:40:54 GMT  
		Size: 99.1 MB (99099472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1867d1ceecee34c7edba5399f74fdb7ab36a4ff481658e7ec5eec66ca95bdc`  
		Last Modified: Wed, 15 Feb 2017 20:40:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:c73427bfa9ff9a157f0236a6775df568b60f6e466ec264ff177274969b994340
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5123801052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d4889940d2d076473274ffd3928bd0185707a49b7f5ae85d21a0de5edd3a7`
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
# Wed, 15 Feb 2017 20:28:34 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 15 Feb 2017 20:28:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 15 Feb 2017 20:28:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 15 Feb 2017 20:32:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Feb 2017 20:32:14 GMT
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
	-	`sha256:e9c28055c91183995e858cada0d31aaaaa501532f0de5bf335244ff305516f53`  
		Last Modified: Wed, 15 Feb 2017 20:40:21 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588270e226d4afc0bc26a7526d1e472b4358c6eae653184751c40101db2a4811`  
		Last Modified: Wed, 15 Feb 2017 20:40:21 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4109f9d1cc43739fb321becc32496cc27c664b8101afd9ff5e5b304dfc3b1b0`  
		Last Modified: Wed, 15 Feb 2017 20:40:22 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797e896cd9aeb69c2db6482baa31139a7650a6177bfbb1c0b94842a7d5fbb579`  
		Last Modified: Wed, 15 Feb 2017 20:40:54 GMT  
		Size: 99.1 MB (99099472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1867d1ceecee34c7edba5399f74fdb7ab36a4ff481658e7ec5eec66ca95bdc`  
		Last Modified: Wed, 15 Feb 2017 20:40:20 GMT  
		Size: 1.2 KB (1221 bytes)  
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

## `golang:1.7.5`

```console
$ docker pull golang@sha256:f42c6aad5f6c685d9ca1080466313cf37b63dc3b679fbe64d18c0c08faa189a9
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afbc2b03b9e6259c8b85457ca94490a1856d13a798ec0040c423543b66a9511`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:f42c6aad5f6c685d9ca1080466313cf37b63dc3b679fbe64d18c0c08faa189a9
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afbc2b03b9e6259c8b85457ca94490a1856d13a798ec0040c423543b66a9511`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-onbuild`

```console
$ docker pull golang@sha256:5b6a035146e3715b51e3b03b8d97539e4c50dafa7b8c3d760c9a40d8de2093c5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602a51f65cf932ffb1ae0c1ba1d939e2e6af530e7ef00ad33cd331736efccd3`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 27 Jan 2017 22:37:25 GMT
RUN mkdir -p /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
WORKDIR /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
CMD ["go-wrapper" "run"]
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD COPY . /go/src/app
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD RUN go-wrapper download
# Fri, 27 Jan 2017 22:37:28 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f060b9ab9f00d7f42e19d2e3f74c32249d2e341db66e12c01edc505900397236`  
		Last Modified: Fri, 27 Jan 2017 22:48:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:5b6a035146e3715b51e3b03b8d97539e4c50dafa7b8c3d760c9a40d8de2093c5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602a51f65cf932ffb1ae0c1ba1d939e2e6af530e7ef00ad33cd331736efccd3`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 27 Jan 2017 22:37:25 GMT
RUN mkdir -p /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
WORKDIR /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
CMD ["go-wrapper" "run"]
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD COPY . /go/src/app
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD RUN go-wrapper download
# Fri, 27 Jan 2017 22:37:28 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f060b9ab9f00d7f42e19d2e3f74c32249d2e341db66e12c01edc505900397236`  
		Last Modified: Fri, 27 Jan 2017 22:48:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-wheezy`

```console
$ docker pull golang@sha256:1874172a1902a461889ec64dfc6938e272d2d788518e1fd4f06dd9000e23cf68
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201251759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5327166fea4cb558717fb520f9966e827ff0148464d1233b2cacb1b5d319dda`
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
# Fri, 27 Jan 2017 22:37:29 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:41 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:43 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:44 GMT
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
	-	`sha256:4df815e72d94a6d71a83f8218278394e8776d3262b818e7534e347c606a90382`  
		Last Modified: Fri, 27 Jan 2017 22:50:23 GMT  
		Size: 83.3 MB (83251364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dee9e705a476ddf3b4b25c5cfb9eab5d167a29301e6f7d2a579b426c73eb50`  
		Last Modified: Fri, 27 Jan 2017 22:49:59 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93e8fc0976b99b48d1a422d8ae0d446bdc841afa489110f27e08a131fdb7fb9`  
		Last Modified: Fri, 27 Jan 2017 22:49:59 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:1874172a1902a461889ec64dfc6938e272d2d788518e1fd4f06dd9000e23cf68
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201251759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5327166fea4cb558717fb520f9966e827ff0148464d1233b2cacb1b5d319dda`
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
# Fri, 27 Jan 2017 22:37:29 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:41 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:43 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:44 GMT
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
	-	`sha256:4df815e72d94a6d71a83f8218278394e8776d3262b818e7534e347c606a90382`  
		Last Modified: Fri, 27 Jan 2017 22:50:23 GMT  
		Size: 83.3 MB (83251364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dee9e705a476ddf3b4b25c5cfb9eab5d167a29301e6f7d2a579b426c73eb50`  
		Last Modified: Fri, 27 Jan 2017 22:49:59 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93e8fc0976b99b48d1a422d8ae0d446bdc841afa489110f27e08a131fdb7fb9`  
		Last Modified: Fri, 27 Jan 2017 22:49:59 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine`

```console
$ docker pull golang@sha256:bc0bdfa5fbda9a459afe1fedde31ab29fd644a0601c8f3ae4d632da0bd505af4
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72920924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7da70df716c8aa1d0012dbce2b6503921f767fb7b843f7f18477295d6fffc87`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:37:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:37:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:37:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:38:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:38:47 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:38:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:38:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:38:49 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:38:50 GMT
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
	-	`sha256:7385fc3070fae46a54df8baeb0a586e5c8be3a6597fe4468a7ee1043e6e267a6`  
		Last Modified: Fri, 27 Jan 2017 22:51:31 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38585f81730f65d1e060fe5a0d049ba276a58a60f029d6750b9de0005a0f05`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffda49e5bbb95ee4872ba8fc4b3d55d9c160b2f8410c2f99076b350d8932c76`  
		Last Modified: Fri, 27 Jan 2017 22:51:54 GMT  
		Size: 70.3 MB (70261204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102836cd82dafb15328ab827e0e35b639c282b5f027e8446fda49c9416859330`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a348fb420c177c4e3bbf061d8e9340195f76ab4a1859669b528aa45c2d5e0`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:bc0bdfa5fbda9a459afe1fedde31ab29fd644a0601c8f3ae4d632da0bd505af4
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72920924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7da70df716c8aa1d0012dbce2b6503921f767fb7b843f7f18477295d6fffc87`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:37:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:37:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:37:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:38:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:38:47 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:38:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:38:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:38:49 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:38:50 GMT
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
	-	`sha256:7385fc3070fae46a54df8baeb0a586e5c8be3a6597fe4468a7ee1043e6e267a6`  
		Last Modified: Fri, 27 Jan 2017 22:51:31 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38585f81730f65d1e060fe5a0d049ba276a58a60f029d6750b9de0005a0f05`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffda49e5bbb95ee4872ba8fc4b3d55d9c160b2f8410c2f99076b350d8932c76`  
		Last Modified: Fri, 27 Jan 2017 22:51:54 GMT  
		Size: 70.3 MB (70261204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102836cd82dafb15328ab827e0e35b639c282b5f027e8446fda49c9416859330`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a348fb420c177c4e3bbf061d8e9340195f76ab4a1859669b528aa45c2d5e0`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine3.5`

```console
$ docker pull golang@sha256:82fc218338c9988b90509f8bdf2916583ab6d88be90f357f56915edf77661f02
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72069092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c18c8c294c1e122cf11562b43504bf679bc29edebaad7bb0f87468a0f3850bd`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:38:51 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:38:51 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:38:52 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:38:52 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:38:53 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:39:44 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:39:45 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:39:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:39:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:39:47 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:39:48 GMT
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
	-	`sha256:91e373d2997a90dc94d8608a4e58f5f5ea049f3c70ed44b21691ec91e35cc0e7`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ea7e9ad7d800515eff7da996b29360bee33c7abc9c1782be3a03fe6f3980a1`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956baf7c50c165c2ffdbb0fc91b329d6b59dda6dfa363e9001f25ebf4fa9ee08`  
		Last Modified: Fri, 27 Jan 2017 22:53:19 GMT  
		Size: 69.8 MB (69811594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb88a6640082bab8521677dce7419ae097ff376c986ca170b06a6a2c1f5832`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629f5ba9ab0da00dd7b920a45aa7d3a51bd83b3ede3975da9faab03bc93cdafd`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine3.5`

```console
$ docker pull golang@sha256:82fc218338c9988b90509f8bdf2916583ab6d88be90f357f56915edf77661f02
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72069092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c18c8c294c1e122cf11562b43504bf679bc29edebaad7bb0f87468a0f3850bd`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:38:51 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:38:51 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:38:52 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:38:52 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:38:53 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:39:44 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:39:45 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:39:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:39:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:39:47 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:39:48 GMT
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
	-	`sha256:91e373d2997a90dc94d8608a4e58f5f5ea049f3c70ed44b21691ec91e35cc0e7`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ea7e9ad7d800515eff7da996b29360bee33c7abc9c1782be3a03fe6f3980a1`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956baf7c50c165c2ffdbb0fc91b329d6b59dda6dfa363e9001f25ebf4fa9ee08`  
		Last Modified: Fri, 27 Jan 2017 22:53:19 GMT  
		Size: 69.8 MB (69811594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb88a6640082bab8521677dce7419ae097ff376c986ca170b06a6a2c1f5832`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629f5ba9ab0da00dd7b920a45aa7d3a51bd83b3ede3975da9faab03bc93cdafd`  
		Last Modified: Fri, 27 Jan 2017 22:52:57 GMT  
		Size: 1.4 KB (1350 bytes)  
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

**does not exist** (yet?)

## `golang:1.8`

```console
$ docker pull golang@sha256:84b74893325b4e81bc871ecaa5317730c64bc807b29b660443af6fdbc34cf94e
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260998314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98b82c517dbec9c4ced9edd3ade6d071af27007bd3d2a183607ae9190a1fcbc`
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
# Fri, 27 Jan 2017 22:39:49 GMT
ENV GOLANG_VERSION=1.8rc3
# Fri, 27 Jan 2017 22:39:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc3.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:39:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=0ff3faba02ac83920a65b453785771e75f128fbf9ba4ad1d5e72c044103f9c7a
# Fri, 27 Jan 2017 22:40:00 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:40:01 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:40:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:40:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:40:03 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:40:04 GMT
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
	-	`sha256:617cf8ca49ad3918926c6695ca04e6d4543aeab0ecd727a5a934b3e6d2f6a645`  
		Last Modified: Fri, 27 Jan 2017 22:54:48 GMT  
		Size: 88.9 MB (88936097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc98e8b55734e8dab79bde49da1e07aeee6b40c7b577390f852f0ff67dd3653b`  
		Last Modified: Fri, 27 Jan 2017 22:54:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a954461f63a22eed75ee8078607bb8a2efd1d2ec9e2fab17f13c7e5828e2d285`  
		Last Modified: Fri, 27 Jan 2017 22:54:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:f42c6aad5f6c685d9ca1080466313cf37b63dc3b679fbe64d18c0c08faa189a9
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afbc2b03b9e6259c8b85457ca94490a1856d13a798ec0040c423543b66a9511`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:f42c6aad5f6c685d9ca1080466313cf37b63dc3b679fbe64d18c0c08faa189a9
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afbc2b03b9e6259c8b85457ca94490a1856d13a798ec0040c423543b66a9511`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-onbuild`

**does not exist** (yet?)

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:eb309ae233a9fc5d43ff0c8a3ed16bc0e22b7f97b8ddeed8a005febaee1f65b9
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260998447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa3c33f1707f0f123b558ff63ae4a11b99de5e0077421a53b6a6c8fd36f83ba`
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
# Fri, 27 Jan 2017 22:39:49 GMT
ENV GOLANG_VERSION=1.8rc3
# Fri, 27 Jan 2017 22:39:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc3.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:39:50 GMT
ENV GOLANG_DOWNLOAD_SHA256=0ff3faba02ac83920a65b453785771e75f128fbf9ba4ad1d5e72c044103f9c7a
# Fri, 27 Jan 2017 22:40:00 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:40:01 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:40:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:40:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:40:03 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:40:04 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 27 Jan 2017 22:40:05 GMT
RUN mkdir -p /go/src/app
# Fri, 27 Jan 2017 22:40:06 GMT
WORKDIR /go/src/app
# Fri, 27 Jan 2017 22:40:06 GMT
CMD ["go-wrapper" "run"]
# Fri, 27 Jan 2017 22:40:07 GMT
ONBUILD COPY . /go/src/app
# Fri, 27 Jan 2017 22:40:07 GMT
ONBUILD RUN go-wrapper download
# Fri, 27 Jan 2017 22:40:08 GMT
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
	-	`sha256:617cf8ca49ad3918926c6695ca04e6d4543aeab0ecd727a5a934b3e6d2f6a645`  
		Last Modified: Fri, 27 Jan 2017 22:54:48 GMT  
		Size: 88.9 MB (88936097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc98e8b55734e8dab79bde49da1e07aeee6b40c7b577390f852f0ff67dd3653b`  
		Last Modified: Fri, 27 Jan 2017 22:54:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a954461f63a22eed75ee8078607bb8a2efd1d2ec9e2fab17f13c7e5828e2d285`  
		Last Modified: Fri, 27 Jan 2017 22:54:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b442786d77d98e3d783710efccb21c6ab74148bf796f7c4c3fae8c4f133d5`  
		Last Modified: Fri, 27 Jan 2017 22:55:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:5b6a035146e3715b51e3b03b8d97539e4c50dafa7b8c3d760c9a40d8de2093c5
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602a51f65cf932ffb1ae0c1ba1d939e2e6af530e7ef00ad33cd331736efccd3`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 27 Jan 2017 22:37:25 GMT
RUN mkdir -p /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
WORKDIR /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
CMD ["go-wrapper" "run"]
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD COPY . /go/src/app
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD RUN go-wrapper download
# Fri, 27 Jan 2017 22:37:28 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f060b9ab9f00d7f42e19d2e3f74c32249d2e341db66e12c01edc505900397236`  
		Last Modified: Fri, 27 Jan 2017 22:48:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:5b6a035146e3715b51e3b03b8d97539e4c50dafa7b8c3d760c9a40d8de2093c5
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255313706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4602a51f65cf932ffb1ae0c1ba1d939e2e6af530e7ef00ad33cd331736efccd3`
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
# Fri, 27 Jan 2017 22:37:08 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Fri, 27 Jan 2017 22:37:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Fri, 27 Jan 2017 22:37:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 27 Jan 2017 22:37:21 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:37:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:37:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:37:23 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:37:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 27 Jan 2017 22:37:25 GMT
RUN mkdir -p /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
WORKDIR /go/src/app
# Fri, 27 Jan 2017 22:37:26 GMT
CMD ["go-wrapper" "run"]
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD COPY . /go/src/app
# Fri, 27 Jan 2017 22:37:27 GMT
ONBUILD RUN go-wrapper download
# Fri, 27 Jan 2017 22:37:28 GMT
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
	-	`sha256:379455b45ee9f44b21a56cc6ad0fa6a9bab5e63a73bc5df84c08064b3eed2684`  
		Last Modified: Fri, 27 Jan 2017 22:47:53 GMT  
		Size: 83.3 MB (83251361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec794755987d2cd56c5cb8a7d0d017ec1a0df7dec4f0d9da0183d7c51fc0b3`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8958dcb38803888b44e06301730bf613d5518bb858d424fa889036662a11d`  
		Last Modified: Fri, 27 Jan 2017 22:47:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f060b9ab9f00d7f42e19d2e3f74c32249d2e341db66e12c01edc505900397236`  
		Last Modified: Fri, 27 Jan 2017 22:48:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.0-stretch`

**does not exist** (yet?)

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:8e2de5072c0eb7aeaa9734bb60bd3a105f09302fdcce76368b9f894be383ef37
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266681781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5741ccbb20a83c0696f1c9e181a6e007efc9cf4533777095c660bbc05e64dd5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:39:16 GMT
ADD file:c09931042d44875d1db95d3faa08303a098dfc42738c80d38856cb84d78ebbda in / 
# Mon, 16 Jan 2017 20:39:24 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:02:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 18:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 18:51:43 GMT
ENV GOLANG_VERSION=1.8rc3
# Fri, 10 Feb 2017 18:51:43 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc3.linux-amd64.tar.gz
# Fri, 10 Feb 2017 18:51:43 GMT
ENV GOLANG_DOWNLOAD_SHA256=0ff3faba02ac83920a65b453785771e75f128fbf9ba4ad1d5e72c044103f9c7a
# Fri, 10 Feb 2017 18:51:55 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 10 Feb 2017 18:51:56 GMT
ENV GOPATH=/go
# Fri, 10 Feb 2017 18:51:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 18:51:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 10 Feb 2017 18:51:57 GMT
WORKDIR /go
# Fri, 10 Feb 2017 18:51:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cdc4502972ee4dbc3dbcc16a2eeaddaa8179f090379768f8cb9438cd01bf5d8a`  
		Last Modified: Mon, 16 Jan 2017 20:50:09 GMT  
		Size: 43.9 MB (43871389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f85d83d587c9dffea05a7552cfb010c9d4124a626e61dfa27649b01ce06bb6`  
		Last Modified: Tue, 17 Jan 2017 00:22:42 GMT  
		Size: 20.9 MB (20946053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ddd0a063cb5f89e516dc6684c1f37599b5f08cf8802b14c2619d667c428d0`  
		Last Modified: Tue, 17 Jan 2017 00:23:34 GMT  
		Size: 51.3 MB (51254010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e824f7445bc49fbc5b85f9cb9f910c64e040cf8f251cd1e1d6b9406fa0c3bab8`  
		Last Modified: Fri, 10 Feb 2017 19:02:25 GMT  
		Size: 61.7 MB (61672725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349cce2345edc54630dcbd5928a66845c2941fd4e76665ae491452b0a2b95df4`  
		Last Modified: Fri, 10 Feb 2017 19:02:34 GMT  
		Size: 88.9 MB (88936123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa998d3aeb31907aba86ba5e6204694da632e473d1d6045a6c3980dd9149092f`  
		Last Modified: Fri, 10 Feb 2017 19:02:05 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cebfed37bef79d7baf732cf8b80fe1cefa29e5e1903e80172de588878f5d6ca`  
		Last Modified: Fri, 10 Feb 2017 19:02:05 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

**does not exist** (yet?)

## `golang:stretch`

**does not exist** (yet?)

## `golang:1.8.0-alpine`

**does not exist** (yet?)

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:c38ae20f711b570a2954bc0d82f6c458fd486670e096b1837dbbbcfaf27e03d8
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77357271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cea0631c902d0305363063c79ff3103e2ddf5cee78761ad17e9dcfb96fa64f`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:40:25 GMT
ENV GOLANG_VERSION=1.8rc3
# Fri, 27 Jan 2017 22:40:26 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8rc3.src.tar.gz
# Fri, 27 Jan 2017 22:40:26 GMT
ENV GOLANG_SRC_SHA256=38b1c1738f111f7bccdd372efca2aa98a7bad1ca2cb21767ba69f34ae007499c
# Fri, 27 Jan 2017 22:40:27 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 27 Jan 2017 22:41:24 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:41:25 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:41:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:41:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:41:27 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:41:28 GMT
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
	-	`sha256:3b77659c964ebe0d002d9b13573767c193373f4b9ffa9fe95c193bf9b594c589`  
		Last Modified: Fri, 27 Jan 2017 22:56:56 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56df225bacc5e66a4bc0008e768c20e6a7967917e7204b325b4794738ca1876b`  
		Last Modified: Fri, 27 Jan 2017 22:57:20 GMT  
		Size: 75.1 MB (75100544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b037eb6f8a481272e46e7c9f668e7ce2cc9d7472b7e1c3ad570d93d3d5aa2fc`  
		Last Modified: Fri, 27 Jan 2017 22:56:56 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da4af2aec2aeb5609d2f948b24fd541eb250279d93ee551ecba9bf2711c5365`  
		Last Modified: Fri, 27 Jan 2017 22:56:56 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:bc0bdfa5fbda9a459afe1fedde31ab29fd644a0601c8f3ae4d632da0bd505af4
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72920924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7da70df716c8aa1d0012dbce2b6503921f767fb7b843f7f18477295d6fffc87`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:37:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:37:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:37:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:38:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:38:47 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:38:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:38:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:38:49 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:38:50 GMT
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
	-	`sha256:7385fc3070fae46a54df8baeb0a586e5c8be3a6597fe4468a7ee1043e6e267a6`  
		Last Modified: Fri, 27 Jan 2017 22:51:31 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38585f81730f65d1e060fe5a0d049ba276a58a60f029d6750b9de0005a0f05`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffda49e5bbb95ee4872ba8fc4b3d55d9c160b2f8410c2f99076b350d8932c76`  
		Last Modified: Fri, 27 Jan 2017 22:51:54 GMT  
		Size: 70.3 MB (70261204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102836cd82dafb15328ab827e0e35b639c282b5f027e8446fda49c9416859330`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a348fb420c177c4e3bbf061d8e9340195f76ab4a1859669b528aa45c2d5e0`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:bc0bdfa5fbda9a459afe1fedde31ab29fd644a0601c8f3ae4d632da0bd505af4
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72920924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7da70df716c8aa1d0012dbce2b6503921f767fb7b843f7f18477295d6fffc87`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Jan 2017 22:37:45 GMT
ENV GOLANG_VERSION=1.7.5
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.5.src.tar.gz
# Fri, 27 Jan 2017 22:37:46 GMT
ENV GOLANG_SRC_SHA256=4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815
# Fri, 27 Jan 2017 22:37:47 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 27 Jan 2017 22:37:48 GMT
COPY file:c481cf9fa54f8c27f6745f7676ba431e1a320b2ac1246c37e47a3e825746d8e6 in / 
# Fri, 27 Jan 2017 22:38:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& patch -p2 -i /17847.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 27 Jan 2017 22:38:47 GMT
ENV GOPATH=/go
# Fri, 27 Jan 2017 22:38:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 22:38:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 27 Jan 2017 22:38:49 GMT
WORKDIR /go
# Fri, 27 Jan 2017 22:38:50 GMT
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
	-	`sha256:7385fc3070fae46a54df8baeb0a586e5c8be3a6597fe4468a7ee1043e6e267a6`  
		Last Modified: Fri, 27 Jan 2017 22:51:31 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38585f81730f65d1e060fe5a0d049ba276a58a60f029d6750b9de0005a0f05`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 780.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffda49e5bbb95ee4872ba8fc4b3d55d9c160b2f8410c2f99076b350d8932c76`  
		Last Modified: Fri, 27 Jan 2017 22:51:54 GMT  
		Size: 70.3 MB (70261204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102836cd82dafb15328ab827e0e35b639c282b5f027e8446fda49c9416859330`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a348fb420c177c4e3bbf061d8e9340195f76ab4a1859669b528aa45c2d5e0`  
		Last Modified: Fri, 27 Jan 2017 22:51:32 GMT  
		Size: 1.3 KB (1346 bytes)  
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
