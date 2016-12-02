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
-	[`golang:1.7.4-windowsservercore`](#golang174-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.7.4-nanoserver`](#golang174-nanoserver)
-	[`golang:1.7-nanoserver`](#golang17-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:1.8beta1`](#golang18beta1)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8beta1-onbuild`](#golang18beta1-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8beta1-wheezy`](#golang18beta1-wheezy)
-	[`golang:1.8-wheezy`](#golang18-wheezy)
-	[`golang:1.8beta1-alpine`](#golang18beta1-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8beta1-windowsservercore`](#golang18beta1-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.8beta1-nanoserver`](#golang18beta1-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)

## `golang:1.6.4`

```console
$ docker pull golang@sha256:6da65c68379420819b19e2bd89366b55353923695c1ed232eb48bc8f257571cb
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258375957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07409e6ecaaad5a0c97a3b75df02792405f3164a81f51285ec5499e90dfd430`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:38:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:38:48 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:38:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:38:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:38:50 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:38:50 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afea992d358e9eb39ddb8b077f31032193c679a7a685b5d7dc042e0232c23b2a`  
		Last Modified: Thu, 01 Dec 2016 23:42:29 GMT  
		Size: 86.3 MB (86339306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e15fbd8567cf9a960e9a62dcdcc4a75f24fce07d91bde02ddd36d156feb434`  
		Last Modified: Thu, 01 Dec 2016 23:41:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48012c40825363d81a45de07a8027d8290234c546d439b8742ea8b7edc3a579e`  
		Last Modified: Thu, 01 Dec 2016 23:41:54 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:6da65c68379420819b19e2bd89366b55353923695c1ed232eb48bc8f257571cb
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258375957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07409e6ecaaad5a0c97a3b75df02792405f3164a81f51285ec5499e90dfd430`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:38:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:38:48 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:38:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:38:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:38:50 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:38:50 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afea992d358e9eb39ddb8b077f31032193c679a7a685b5d7dc042e0232c23b2a`  
		Last Modified: Thu, 01 Dec 2016 23:42:29 GMT  
		Size: 86.3 MB (86339306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e15fbd8567cf9a960e9a62dcdcc4a75f24fce07d91bde02ddd36d156feb434`  
		Last Modified: Thu, 01 Dec 2016 23:41:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48012c40825363d81a45de07a8027d8290234c546d439b8742ea8b7edc3a579e`  
		Last Modified: Thu, 01 Dec 2016 23:41:54 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-onbuild`

```console
$ docker pull golang@sha256:34d19ab43291ffb080ebf80990a4500f3d6cf40e6e9c305e1652c3371f9fae92
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258376089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0e4c3b7658ed9c0d7e79ad12fd00522d993a6ce8ca92b2bcc2679848cf38e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:38:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:38:48 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:38:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:38:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:38:50 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:38:50 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:38:51 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:38:52 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:38:52 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:38:52 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:38:53 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:38:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afea992d358e9eb39ddb8b077f31032193c679a7a685b5d7dc042e0232c23b2a`  
		Last Modified: Thu, 01 Dec 2016 23:42:29 GMT  
		Size: 86.3 MB (86339306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e15fbd8567cf9a960e9a62dcdcc4a75f24fce07d91bde02ddd36d156feb434`  
		Last Modified: Thu, 01 Dec 2016 23:41:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48012c40825363d81a45de07a8027d8290234c546d439b8742ea8b7edc3a579e`  
		Last Modified: Thu, 01 Dec 2016 23:41:54 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fef4b64c099229826dcf80bac3a3cc8e68346151dba7319222332dfed5ca8`  
		Last Modified: Thu, 01 Dec 2016 23:43:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:34d19ab43291ffb080ebf80990a4500f3d6cf40e6e9c305e1652c3371f9fae92
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258376089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0e4c3b7658ed9c0d7e79ad12fd00522d993a6ce8ca92b2bcc2679848cf38e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:38 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:38:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:38:48 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:38:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:38:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:38:50 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:38:50 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:38:51 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:38:52 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:38:52 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:38:52 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:38:53 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:38:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afea992d358e9eb39ddb8b077f31032193c679a7a685b5d7dc042e0232c23b2a`  
		Last Modified: Thu, 01 Dec 2016 23:42:29 GMT  
		Size: 86.3 MB (86339306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e15fbd8567cf9a960e9a62dcdcc4a75f24fce07d91bde02ddd36d156feb434`  
		Last Modified: Thu, 01 Dec 2016 23:41:53 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48012c40825363d81a45de07a8027d8290234c546d439b8742ea8b7edc3a579e`  
		Last Modified: Thu, 01 Dec 2016 23:41:54 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fef4b64c099229826dcf80bac3a3cc8e68346151dba7319222332dfed5ca8`  
		Last Modified: Thu, 01 Dec 2016 23:43:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-wheezy`

```console
$ docker pull golang@sha256:f7d122e30bc1040da484d9cd2e0788f4cd2749ec67d261216f4053541128dcbe
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204112010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ceab8b6afd7ff564ba5ee7656f42db96ed9fe5ccfffcad95b5ad77c165ecfcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:53 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:54 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:39:04 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:39:05 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:39:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:39:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:39:06 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:39:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c429cab580c91443ed93ce71ef969de2854a2a949088c5d9fdffe9cbe97b`  
		Last Modified: Thu, 01 Dec 2016 23:44:13 GMT  
		Size: 86.3 MB (86339291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8653b138786b980ec7abe8e5ec51514d13cbf3371f209246068ff19a99b526a6`  
		Last Modified: Thu, 01 Dec 2016 23:43:40 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b541b464966ecc5e5c8c6f2520034eccde860bd6535d5e5418ba5bc6ee229b`  
		Last Modified: Thu, 01 Dec 2016 23:43:40 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:f7d122e30bc1040da484d9cd2e0788f4cd2749ec67d261216f4053541128dcbe
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204112010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ceab8b6afd7ff564ba5ee7656f42db96ed9fe5ccfffcad95b5ad77c165ecfcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:38:53 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:38:54 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:38:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Thu, 01 Dec 2016 23:39:04 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:39:05 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:39:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:39:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:39:06 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:39:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb6c429cab580c91443ed93ce71ef969de2854a2a949088c5d9fdffe9cbe97b`  
		Last Modified: Thu, 01 Dec 2016 23:44:13 GMT  
		Size: 86.3 MB (86339291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8653b138786b980ec7abe8e5ec51514d13cbf3371f209246068ff19a99b526a6`  
		Last Modified: Thu, 01 Dec 2016 23:43:40 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b541b464966ecc5e5c8c6f2520034eccde860bd6535d5e5418ba5bc6ee229b`  
		Last Modified: Thu, 01 Dec 2016 23:43:40 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-alpine`

```console
$ docker pull golang@sha256:b849113dec397e1952d633f9837abfe56657d8b39c4492c7153230dc7d6e9472
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72533188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b545aa749b4c55ee1daee972d6ebdb63a9b523b0278686ca8f46283103a0ac7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:39:07 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:39:07 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.4.src.tar.gz
# Thu, 01 Dec 2016 23:39:08 GMT
ENV GOLANG_SRC_SHA256=8796cc48217b59595832aa9de6db45f58706dae68c9c7fbbd78c9fdbe3cd9032
# Thu, 01 Dec 2016 23:39:10 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Thu, 01 Dec 2016 23:40:05 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:40:06 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:07 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9e4e6c2b175886915f864673e2bd55bdd26052c23d650b7323f166c7ec8af`  
		Last Modified: Thu, 01 Dec 2016 23:44:52 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c963a8ac17eadde59193c6097bd0b88184605475609ffa976c6e0bc8bbd7fb`  
		Last Modified: Thu, 01 Dec 2016 23:45:15 GMT  
		Size: 69.9 MB (69874360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa16561ab0cac4531218293e38d133371a7eb5abd0ca7a2c30bfe1a456f90007`  
		Last Modified: Thu, 01 Dec 2016 23:44:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039671dc25b08d0a0442520c46bb747c45ded0a7d0098da3e600ef3c8a59cebc`  
		Last Modified: Thu, 01 Dec 2016 23:44:52 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:b849113dec397e1952d633f9837abfe56657d8b39c4492c7153230dc7d6e9472
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72533188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b545aa749b4c55ee1daee972d6ebdb63a9b523b0278686ca8f46283103a0ac7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:39:07 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:39:07 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.4.src.tar.gz
# Thu, 01 Dec 2016 23:39:08 GMT
ENV GOLANG_SRC_SHA256=8796cc48217b59595832aa9de6db45f58706dae68c9c7fbbd78c9fdbe3cd9032
# Thu, 01 Dec 2016 23:39:10 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Thu, 01 Dec 2016 23:40:05 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:40:06 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:07 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9e4e6c2b175886915f864673e2bd55bdd26052c23d650b7323f166c7ec8af`  
		Last Modified: Thu, 01 Dec 2016 23:44:52 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c963a8ac17eadde59193c6097bd0b88184605475609ffa976c6e0bc8bbd7fb`  
		Last Modified: Thu, 01 Dec 2016 23:45:15 GMT  
		Size: 69.9 MB (69874360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa16561ab0cac4531218293e38d133371a7eb5abd0ca7a2c30bfe1a456f90007`  
		Last Modified: Thu, 01 Dec 2016 23:44:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039671dc25b08d0a0442520c46bb747c45ded0a7d0098da3e600ef3c8a59cebc`  
		Last Modified: Thu, 01 Dec 2016 23:44:52 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-windowsservercore`

```console
$ docker pull golang@sha256:8c7d2374d319f8117ab0744104ef3eea84ffef90e2b09da89754c651619e3782
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4939899570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef71cc003ba31c86a7854d1cdb4ea507a92d320a8277837a2a04a2d95a8d80dc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:43:17 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:43:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:43:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Thu, 01 Dec 2016 23:47:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:47:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c3b380f57f8fafaed3b98b261f6a8c602569e47cee3430fd7b426452ab7fe`  
		Last Modified: Fri, 02 Dec 2016 00:08:12 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afa719b001d6fc0854f7b1a2e06f419166a4a942a22dd8b29f8fbc1553851c9`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12967122ba7dd9a7aeb7d95aa05d9adbc291162d98f6bb304f91f089954bba00`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2810757ef9bf8b997a14374c40d06772a8f981d8d3780f861d66b1c57abeae2d`  
		Last Modified: Fri, 02 Dec 2016 00:09:02 GMT  
		Size: 99.0 MB (98984869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41815cf2a074877c902353b8bc1e5b827174b2c0efcd32e5403082966cb896d`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:8c7d2374d319f8117ab0744104ef3eea84ffef90e2b09da89754c651619e3782
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4939899570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef71cc003ba31c86a7854d1cdb4ea507a92d320a8277837a2a04a2d95a8d80dc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:43:17 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:43:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:43:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Thu, 01 Dec 2016 23:47:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:47:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c3b380f57f8fafaed3b98b261f6a8c602569e47cee3430fd7b426452ab7fe`  
		Last Modified: Fri, 02 Dec 2016 00:08:12 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afa719b001d6fc0854f7b1a2e06f419166a4a942a22dd8b29f8fbc1553851c9`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12967122ba7dd9a7aeb7d95aa05d9adbc291162d98f6bb304f91f089954bba00`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2810757ef9bf8b997a14374c40d06772a8f981d8d3780f861d66b1c57abeae2d`  
		Last Modified: Fri, 02 Dec 2016 00:09:02 GMT  
		Size: 99.0 MB (98984869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41815cf2a074877c902353b8bc1e5b827174b2c0efcd32e5403082966cb896d`  
		Last Modified: Fri, 02 Dec 2016 00:08:10 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-nanoserver`

```console
$ docker pull golang@sha256:f1f80aed6fe3fd81d95a78b2f891fc19e6922a1dcbfc6e71e46c193b36045df7
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.8 MB (434848667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09a3b4f6569b6f8603cb2a355338c3dda6056d38f5b27881a6c966de7144e28`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:47:35 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:47:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:47:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Thu, 01 Dec 2016 23:51:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:51:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088791c14b26dfac8a8e4971ba57d2abebac091188c44fc6f88480d520fc88cc`  
		Last Modified: Fri, 02 Dec 2016 00:16:28 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf5b6b62f21f84385fcf4176bc968f2de922acf179f9e951d5323e8c61e68c5`  
		Last Modified: Fri, 02 Dec 2016 00:16:30 GMT  
		Size: 965.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a3a338f41f866d5771c11ae52bcffe4c9eba349f062f49a6998bacd371a65`  
		Last Modified: Fri, 02 Dec 2016 00:16:29 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542c7e4727347e835826701fdfd3bc8e7b54998e722dad39cbf329882cd188e0`  
		Last Modified: Fri, 02 Dec 2016 00:16:57 GMT  
		Size: 90.8 MB (90811292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782797152a01c409f9fd212b9e2e4608a37feb47d882723babe2a635b3b6eb3a`  
		Last Modified: Fri, 02 Dec 2016 00:16:28 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-nanoserver`

```console
$ docker pull golang@sha256:f1f80aed6fe3fd81d95a78b2f891fc19e6922a1dcbfc6e71e46c193b36045df7
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.8 MB (434848667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09a3b4f6569b6f8603cb2a355338c3dda6056d38f5b27881a6c966de7144e28`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:47:35 GMT
ENV GOLANG_VERSION=1.6.4
# Thu, 01 Dec 2016 23:47:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:47:40 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Thu, 01 Dec 2016 23:51:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:51:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088791c14b26dfac8a8e4971ba57d2abebac091188c44fc6f88480d520fc88cc`  
		Last Modified: Fri, 02 Dec 2016 00:16:28 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf5b6b62f21f84385fcf4176bc968f2de922acf179f9e951d5323e8c61e68c5`  
		Last Modified: Fri, 02 Dec 2016 00:16:30 GMT  
		Size: 965.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a3a338f41f866d5771c11ae52bcffe4c9eba349f062f49a6998bacd371a65`  
		Last Modified: Fri, 02 Dec 2016 00:16:29 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542c7e4727347e835826701fdfd3bc8e7b54998e722dad39cbf329882cd188e0`  
		Last Modified: Fri, 02 Dec 2016 00:16:57 GMT  
		Size: 90.8 MB (90811292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782797152a01c409f9fd212b9e2e4608a37feb47d882723babe2a635b3b6eb3a`  
		Last Modified: Fri, 02 Dec 2016 00:16:28 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4`

```console
$ docker pull golang@sha256:02718aef869a8b00d4a36883c82782b47fc01e774d0ac1afd434934d8ccfee8c
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752d71739d2bade6aa64b75e251a5e20a7869ab923b9180b55ea0a6333a38ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:02718aef869a8b00d4a36883c82782b47fc01e774d0ac1afd434934d8ccfee8c
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752d71739d2bade6aa64b75e251a5e20a7869ab923b9180b55ea0a6333a38ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:02718aef869a8b00d4a36883c82782b47fc01e774d0ac1afd434934d8ccfee8c
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752d71739d2bade6aa64b75e251a5e20a7869ab923b9180b55ea0a6333a38ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:02718aef869a8b00d4a36883c82782b47fc01e774d0ac1afd434934d8ccfee8c
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752d71739d2bade6aa64b75e251a5e20a7869ab923b9180b55ea0a6333a38ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-onbuild`

```console
$ docker pull golang@sha256:96178ae1b75bc355a63d4db3b5ed1b5ddc7b950a2b799c09ea507334a872855d
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00afdf9d323b9892852e2f6754848dae18103c7f688486ee89885795ae3193a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:40:23 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:40:23 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:40:25 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb64e9f9f5f40c9d92e1dc2031464344cd152a86f8c183cba24942b076e13fc`  
		Last Modified: Thu, 01 Dec 2016 23:47:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:96178ae1b75bc355a63d4db3b5ed1b5ddc7b950a2b799c09ea507334a872855d
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00afdf9d323b9892852e2f6754848dae18103c7f688486ee89885795ae3193a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:40:23 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:40:23 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:40:25 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb64e9f9f5f40c9d92e1dc2031464344cd152a86f8c183cba24942b076e13fc`  
		Last Modified: Thu, 01 Dec 2016 23:47:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:96178ae1b75bc355a63d4db3b5ed1b5ddc7b950a2b799c09ea507334a872855d
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00afdf9d323b9892852e2f6754848dae18103c7f688486ee89885795ae3193a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:40:23 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:40:23 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:40:25 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb64e9f9f5f40c9d92e1dc2031464344cd152a86f8c183cba24942b076e13fc`  
		Last Modified: Thu, 01 Dec 2016 23:47:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:96178ae1b75bc355a63d4db3b5ed1b5ddc7b950a2b799c09ea507334a872855d
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255122672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00afdf9d323b9892852e2f6754848dae18103c7f688486ee89885795ae3193a4`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:08 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:09 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:10 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:19 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:21 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 23:40:23 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 23:40:23 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 23:40:24 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 23:40:25 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b272d7ab8a4f1b721012129647a39e5267a94c07e92af3019fe0e5461a33d13`  
		Last Modified: Thu, 01 Dec 2016 23:46:14 GMT  
		Size: 83.1 MB (83085891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca636a985c12510518b9ed2fe8e45f48ec99cc15b750b72632da8c2811efbf0`  
		Last Modified: Thu, 01 Dec 2016 23:45:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08158782d3308feb4bcade636cb6a80cd5c559d202b9d879da4342566b08f38f`  
		Last Modified: Thu, 01 Dec 2016 23:45:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb64e9f9f5f40c9d92e1dc2031464344cd152a86f8c183cba24942b076e13fc`  
		Last Modified: Thu, 01 Dec 2016 23:47:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-wheezy`

```console
$ docker pull golang@sha256:51ac44aa7c5f70494622cfb5c937c2489dfdcea8eec2575f8e37e65a6a184198
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200858633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cc22964add7c6c04b514c47fddfff812a005f759de03bca6189f0e3ce20b76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:25 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:35 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:36 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e4f3b398ede471172ecd98d96bd3db454d75637a89a301213f4bf52e60769f`  
		Last Modified: Thu, 01 Dec 2016 23:48:45 GMT  
		Size: 83.1 MB (83085917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c63919bcc098bf59810a1ce34931d54dcfe44330dfeac388a064b68a536c7`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7290b31bf5a44d0650547b776d4a15a65cd738d53e68baabd3c4e2d16943ee5c`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:51ac44aa7c5f70494622cfb5c937c2489dfdcea8eec2575f8e37e65a6a184198
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200858633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cc22964add7c6c04b514c47fddfff812a005f759de03bca6189f0e3ce20b76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:25 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:35 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:36 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e4f3b398ede471172ecd98d96bd3db454d75637a89a301213f4bf52e60769f`  
		Last Modified: Thu, 01 Dec 2016 23:48:45 GMT  
		Size: 83.1 MB (83085917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c63919bcc098bf59810a1ce34931d54dcfe44330dfeac388a064b68a536c7`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7290b31bf5a44d0650547b776d4a15a65cd738d53e68baabd3c4e2d16943ee5c`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:51ac44aa7c5f70494622cfb5c937c2489dfdcea8eec2575f8e37e65a6a184198
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200858633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cc22964add7c6c04b514c47fddfff812a005f759de03bca6189f0e3ce20b76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:25 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:35 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:36 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e4f3b398ede471172ecd98d96bd3db454d75637a89a301213f4bf52e60769f`  
		Last Modified: Thu, 01 Dec 2016 23:48:45 GMT  
		Size: 83.1 MB (83085917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c63919bcc098bf59810a1ce34931d54dcfe44330dfeac388a064b68a536c7`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7290b31bf5a44d0650547b776d4a15a65cd738d53e68baabd3c4e2d16943ee5c`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:51ac44aa7c5f70494622cfb5c937c2489dfdcea8eec2575f8e37e65a6a184198
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200858633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cc22964add7c6c04b514c47fddfff812a005f759de03bca6189f0e3ce20b76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 23:40:25 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Thu, 01 Dec 2016 23:40:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Thu, 01 Dec 2016 23:40:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 23:40:35 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:40:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:40:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:40:36 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:40:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e4f3b398ede471172ecd98d96bd3db454d75637a89a301213f4bf52e60769f`  
		Last Modified: Thu, 01 Dec 2016 23:48:45 GMT  
		Size: 83.1 MB (83085917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c63919bcc098bf59810a1ce34931d54dcfe44330dfeac388a064b68a536c7`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7290b31bf5a44d0650547b776d4a15a65cd738d53e68baabd3c4e2d16943ee5c`  
		Last Modified: Thu, 01 Dec 2016 23:48:21 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-alpine`

```console
$ docker pull golang@sha256:c502cbf4608374447cef87d493047ca1a33fc02c0a100f29fe186653881c4b25
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016944b253114613794e305ad823160280d07f3f331e91e0cc5148b14ed893b7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:40:37 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Thu, 01 Dec 2016 23:40:39 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Thu, 01 Dec 2016 23:41:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:41:37 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:41:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:41:38 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:41:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89656d2b09accd216ecdd6ca921ad08f9ca5555ce848a491cde0bac7d3e1aad3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602314b9bf7b67e886ebe55b5c1240ef8e384ee6c6a0c6a9122fa1802eaa3cb`  
		Last Modified: Thu, 01 Dec 2016 23:50:13 GMT  
		Size: 70.6 MB (70621531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181529c471d299fc9d1c9b720dda93918dc43144c3965602589742971ecab8d3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561214ca853a289cfac4d72da52387d681e623ceb64d1c6b235f12b01b50ae5`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:c502cbf4608374447cef87d493047ca1a33fc02c0a100f29fe186653881c4b25
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016944b253114613794e305ad823160280d07f3f331e91e0cc5148b14ed893b7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:40:37 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Thu, 01 Dec 2016 23:40:39 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Thu, 01 Dec 2016 23:41:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:41:37 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:41:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:41:38 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:41:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89656d2b09accd216ecdd6ca921ad08f9ca5555ce848a491cde0bac7d3e1aad3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602314b9bf7b67e886ebe55b5c1240ef8e384ee6c6a0c6a9122fa1802eaa3cb`  
		Last Modified: Thu, 01 Dec 2016 23:50:13 GMT  
		Size: 70.6 MB (70621531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181529c471d299fc9d1c9b720dda93918dc43144c3965602589742971ecab8d3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561214ca853a289cfac4d72da52387d681e623ceb64d1c6b235f12b01b50ae5`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:c502cbf4608374447cef87d493047ca1a33fc02c0a100f29fe186653881c4b25
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016944b253114613794e305ad823160280d07f3f331e91e0cc5148b14ed893b7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:40:37 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Thu, 01 Dec 2016 23:40:39 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Thu, 01 Dec 2016 23:41:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:41:37 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:41:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:41:38 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:41:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89656d2b09accd216ecdd6ca921ad08f9ca5555ce848a491cde0bac7d3e1aad3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602314b9bf7b67e886ebe55b5c1240ef8e384ee6c6a0c6a9122fa1802eaa3cb`  
		Last Modified: Thu, 01 Dec 2016 23:50:13 GMT  
		Size: 70.6 MB (70621531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181529c471d299fc9d1c9b720dda93918dc43144c3965602589742971ecab8d3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561214ca853a289cfac4d72da52387d681e623ceb64d1c6b235f12b01b50ae5`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:c502cbf4608374447cef87d493047ca1a33fc02c0a100f29fe186653881c4b25
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016944b253114613794e305ad823160280d07f3f331e91e0cc5148b14ed893b7`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 23:40:37 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.4.src.tar.gz
# Thu, 01 Dec 2016 23:40:39 GMT
ENV GOLANG_SRC_SHA256=4c189111e9ba651a2bb3ee868aa881fab36b2f2da3409e80885ca758a6b614cc
# Thu, 01 Dec 2016 23:40:39 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Thu, 01 Dec 2016 23:41:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 23:41:37 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 23:41:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 23:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 23:41:38 GMT
WORKDIR /go
# Thu, 01 Dec 2016 23:41:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89656d2b09accd216ecdd6ca921ad08f9ca5555ce848a491cde0bac7d3e1aad3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1602314b9bf7b67e886ebe55b5c1240ef8e384ee6c6a0c6a9122fa1802eaa3cb`  
		Last Modified: Thu, 01 Dec 2016 23:50:13 GMT  
		Size: 70.6 MB (70621531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181529c471d299fc9d1c9b720dda93918dc43144c3965602589742971ecab8d3`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561214ca853a289cfac4d72da52387d681e623ceb64d1c6b235f12b01b50ae5`  
		Last Modified: Thu, 01 Dec 2016 23:49:50 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-windowsservercore`

```console
$ docker pull golang@sha256:60a19e0d15e4e3d6a54075c7a2448f4a86437effd87b6e9a6d9c8d1f19937168
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4936975519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d836c103f8f087d388ada35dac4bccc5da024f55ef51b160a8118a0387e01a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:51:18 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:51:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:51:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:55:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:55:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa054e3d46666855699404cc13ae8ea5c68320b5cc170576f2b612f0ba67bc1`  
		Last Modified: Fri, 02 Dec 2016 00:17:11 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2881cfe8b2d1bdf0a3115ecf0375dc1e04c5560439e87de0ae3b4cfe370dc`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd57a1d078ff1f44d5bcf18cfc585624bbc403655a63f0ae0b783390ba7a659`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a204ba9015e1390e23d899b8e0707ff2b3b6e518ec3fa7d0c479940c9f06402`  
		Last Modified: Fri, 02 Dec 2016 00:17:38 GMT  
		Size: 96.1 MB (96060785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a44f474b17725aba10188766e869d326e086b1b32e65276d85ddc8df9057a3`  
		Last Modified: Fri, 02 Dec 2016 00:17:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:60a19e0d15e4e3d6a54075c7a2448f4a86437effd87b6e9a6d9c8d1f19937168
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4936975519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d836c103f8f087d388ada35dac4bccc5da024f55ef51b160a8118a0387e01a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:51:18 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:51:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:51:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:55:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:55:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa054e3d46666855699404cc13ae8ea5c68320b5cc170576f2b612f0ba67bc1`  
		Last Modified: Fri, 02 Dec 2016 00:17:11 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2881cfe8b2d1bdf0a3115ecf0375dc1e04c5560439e87de0ae3b4cfe370dc`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd57a1d078ff1f44d5bcf18cfc585624bbc403655a63f0ae0b783390ba7a659`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a204ba9015e1390e23d899b8e0707ff2b3b6e518ec3fa7d0c479940c9f06402`  
		Last Modified: Fri, 02 Dec 2016 00:17:38 GMT  
		Size: 96.1 MB (96060785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a44f474b17725aba10188766e869d326e086b1b32e65276d85ddc8df9057a3`  
		Last Modified: Fri, 02 Dec 2016 00:17:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:60a19e0d15e4e3d6a54075c7a2448f4a86437effd87b6e9a6d9c8d1f19937168
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4936975519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d836c103f8f087d388ada35dac4bccc5da024f55ef51b160a8118a0387e01a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:51:18 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:51:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:51:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:55:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:55:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa054e3d46666855699404cc13ae8ea5c68320b5cc170576f2b612f0ba67bc1`  
		Last Modified: Fri, 02 Dec 2016 00:17:11 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2881cfe8b2d1bdf0a3115ecf0375dc1e04c5560439e87de0ae3b4cfe370dc`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd57a1d078ff1f44d5bcf18cfc585624bbc403655a63f0ae0b783390ba7a659`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a204ba9015e1390e23d899b8e0707ff2b3b6e518ec3fa7d0c479940c9f06402`  
		Last Modified: Fri, 02 Dec 2016 00:17:38 GMT  
		Size: 96.1 MB (96060785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a44f474b17725aba10188766e869d326e086b1b32e65276d85ddc8df9057a3`  
		Last Modified: Fri, 02 Dec 2016 00:17:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:60a19e0d15e4e3d6a54075c7a2448f4a86437effd87b6e9a6d9c8d1f19937168
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4936975519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d836c103f8f087d388ada35dac4bccc5da024f55ef51b160a8118a0387e01a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:51:18 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:51:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:51:26 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:55:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:55:30 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa054e3d46666855699404cc13ae8ea5c68320b5cc170576f2b612f0ba67bc1`  
		Last Modified: Fri, 02 Dec 2016 00:17:11 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2881cfe8b2d1bdf0a3115ecf0375dc1e04c5560439e87de0ae3b4cfe370dc`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd57a1d078ff1f44d5bcf18cfc585624bbc403655a63f0ae0b783390ba7a659`  
		Last Modified: Fri, 02 Dec 2016 00:17:09 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a204ba9015e1390e23d899b8e0707ff2b3b6e518ec3fa7d0c479940c9f06402`  
		Last Modified: Fri, 02 Dec 2016 00:17:38 GMT  
		Size: 96.1 MB (96060785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a44f474b17725aba10188766e869d326e086b1b32e65276d85ddc8df9057a3`  
		Last Modified: Fri, 02 Dec 2016 00:17:10 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-nanoserver`

```console
$ docker pull golang@sha256:accb981061ca789f2d336a10fb1eb7313c1a1242625c6273890bc8951fca0360
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431914065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b382640bdaa52ccd287aab26dd8a7becb9678179d45994719c4e7b58d40216d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:55:33 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:55:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:55:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:59:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:59:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff0565f836caa35be74ce0970152135ee2930c9ca3c78ecff09c31c644d1eca`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd6130443b131933f51c36fc4f883971fd8432a4ff9b955975d8359fce8efd6`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e83c33a466e925ba225352eee6f1e14a7130538ee9f4fa9fd92ce5220f175f`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bde6d84719d5e2687eef7e7d9e9f76ba5639a360c80aba88a511b850b683bef`  
		Last Modified: Fri, 02 Dec 2016 00:18:33 GMT  
		Size: 87.9 MB (87876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9f74ce7937f16879fa7f36c4aff5e292a531c35085da7f83728873bbe158e6`  
		Last Modified: Fri, 02 Dec 2016 00:18:08 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:accb981061ca789f2d336a10fb1eb7313c1a1242625c6273890bc8951fca0360
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431914065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b382640bdaa52ccd287aab26dd8a7becb9678179d45994719c4e7b58d40216d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:55:33 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:55:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:55:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:59:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:59:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff0565f836caa35be74ce0970152135ee2930c9ca3c78ecff09c31c644d1eca`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd6130443b131933f51c36fc4f883971fd8432a4ff9b955975d8359fce8efd6`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e83c33a466e925ba225352eee6f1e14a7130538ee9f4fa9fd92ce5220f175f`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bde6d84719d5e2687eef7e7d9e9f76ba5639a360c80aba88a511b850b683bef`  
		Last Modified: Fri, 02 Dec 2016 00:18:33 GMT  
		Size: 87.9 MB (87876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9f74ce7937f16879fa7f36c4aff5e292a531c35085da7f83728873bbe158e6`  
		Last Modified: Fri, 02 Dec 2016 00:18:08 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:accb981061ca789f2d336a10fb1eb7313c1a1242625c6273890bc8951fca0360
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431914065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b382640bdaa52ccd287aab26dd8a7becb9678179d45994719c4e7b58d40216d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:55:33 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:55:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:55:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:59:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:59:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff0565f836caa35be74ce0970152135ee2930c9ca3c78ecff09c31c644d1eca`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd6130443b131933f51c36fc4f883971fd8432a4ff9b955975d8359fce8efd6`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e83c33a466e925ba225352eee6f1e14a7130538ee9f4fa9fd92ce5220f175f`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bde6d84719d5e2687eef7e7d9e9f76ba5639a360c80aba88a511b850b683bef`  
		Last Modified: Fri, 02 Dec 2016 00:18:33 GMT  
		Size: 87.9 MB (87876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9f74ce7937f16879fa7f36c4aff5e292a531c35085da7f83728873bbe158e6`  
		Last Modified: Fri, 02 Dec 2016 00:18:08 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:accb981061ca789f2d336a10fb1eb7313c1a1242625c6273890bc8951fca0360
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431914065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b382640bdaa52ccd287aab26dd8a7becb9678179d45994719c4e7b58d40216d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 01 Dec 2016 23:55:33 GMT
ENV GOLANG_VERSION=1.7.4
# Thu, 01 Dec 2016 23:55:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Thu, 01 Dec 2016 23:55:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Thu, 01 Dec 2016 23:59:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:59:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff0565f836caa35be74ce0970152135ee2930c9ca3c78ecff09c31c644d1eca`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd6130443b131933f51c36fc4f883971fd8432a4ff9b955975d8359fce8efd6`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e83c33a466e925ba225352eee6f1e14a7130538ee9f4fa9fd92ce5220f175f`  
		Last Modified: Fri, 02 Dec 2016 00:18:06 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bde6d84719d5e2687eef7e7d9e9f76ba5639a360c80aba88a511b850b683bef`  
		Last Modified: Fri, 02 Dec 2016 00:18:33 GMT  
		Size: 87.9 MB (87876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9f74ce7937f16879fa7f36c4aff5e292a531c35085da7f83728873bbe158e6`  
		Last Modified: Fri, 02 Dec 2016 00:18:08 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1`

```console
$ docker pull golang@sha256:4f43861af21bdc41bc632204dd909419d409bba179d83c34cd46023e7f46e81e
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261842859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915c212fff5ef0418177f97fb299dd8cb6e07c7bdf563bcb4370b672c3ea6db6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:49:56 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:08 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:09 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:10 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780768282e76358ff6a35b40dcba09ba0d60f3ffc79c9933e6879c75364bb457`  
		Last Modified: Thu, 01 Dec 2016 19:58:49 GMT  
		Size: 89.8 MB (89806207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b89820ba183da09065136f67e9585abd4703a28eb4a0fc3c0f7e07478c6d4ba`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9fa7e9c55b24b1d5c52badd6a53d98db77ea98424247c31043d7695a4fee0`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:4f43861af21bdc41bc632204dd909419d409bba179d83c34cd46023e7f46e81e
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261842859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915c212fff5ef0418177f97fb299dd8cb6e07c7bdf563bcb4370b672c3ea6db6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:49:56 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:08 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:09 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:10 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780768282e76358ff6a35b40dcba09ba0d60f3ffc79c9933e6879c75364bb457`  
		Last Modified: Thu, 01 Dec 2016 19:58:49 GMT  
		Size: 89.8 MB (89806207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b89820ba183da09065136f67e9585abd4703a28eb4a0fc3c0f7e07478c6d4ba`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9fa7e9c55b24b1d5c52badd6a53d98db77ea98424247c31043d7695a4fee0`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1-onbuild`

```console
$ docker pull golang@sha256:c111a0c98b541ad79f34ebf087dffb8db142b0475736ef2f740eeddce86d6796
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261842991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ccae651c7111891753ff28ca3bccf443c66fb490a377f5066dd07548c6fa26`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:49:56 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:08 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:09 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:10 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 19:50:12 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 19:50:12 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 19:50:12 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780768282e76358ff6a35b40dcba09ba0d60f3ffc79c9933e6879c75364bb457`  
		Last Modified: Thu, 01 Dec 2016 19:58:49 GMT  
		Size: 89.8 MB (89806207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b89820ba183da09065136f67e9585abd4703a28eb4a0fc3c0f7e07478c6d4ba`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9fa7e9c55b24b1d5c52badd6a53d98db77ea98424247c31043d7695a4fee0`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb640ad9dbc2e53f9cc2027166b28cd86c26ca4beafd4437c1abfbc3a06ec7`  
		Last Modified: Thu, 01 Dec 2016 19:59:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:c111a0c98b541ad79f34ebf087dffb8db142b0475736ef2f740eeddce86d6796
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261842991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ccae651c7111891753ff28ca3bccf443c66fb490a377f5066dd07548c6fa26`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:32:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:49:56 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:49:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:08 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:09 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:10 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Thu, 01 Dec 2016 19:50:12 GMT
RUN mkdir -p /go/src/app
# Thu, 01 Dec 2016 19:50:12 GMT
WORKDIR /go/src/app
# Thu, 01 Dec 2016 19:50:12 GMT
CMD ["go-wrapper" "run"]
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD COPY . /go/src/app
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD RUN go-wrapper download
# Thu, 01 Dec 2016 19:50:13 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31e17eb948566dddd677fa4557f7b9a874ddaf967e36cd5474f972fb5fa6097`  
		Last Modified: Tue, 08 Nov 2016 19:33:09 GMT  
		Size: 59.7 MB (59651466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780768282e76358ff6a35b40dcba09ba0d60f3ffc79c9933e6879c75364bb457`  
		Last Modified: Thu, 01 Dec 2016 19:58:49 GMT  
		Size: 89.8 MB (89806207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b89820ba183da09065136f67e9585abd4703a28eb4a0fc3c0f7e07478c6d4ba`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9fa7e9c55b24b1d5c52badd6a53d98db77ea98424247c31043d7695a4fee0`  
		Last Modified: Thu, 01 Dec 2016 19:58:16 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb640ad9dbc2e53f9cc2027166b28cd86c26ca4beafd4437c1abfbc3a06ec7`  
		Last Modified: Thu, 01 Dec 2016 19:59:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1-wheezy`

```console
$ docker pull golang@sha256:7d3902317215a6415043b36f4f41aa88a65a4f87c06e4ceb49eb66cfd50ac181
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.6 MB (207578949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ada1dfa19367172a45fa943d03b9e712a2bb565b1f323caae9905bf9e19f1f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:25 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:27 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517cd43e5845eaa89d5ddf1bd8363a3fa93f07278b13247b090831d56bb18570`  
		Last Modified: Thu, 01 Dec 2016 20:00:31 GMT  
		Size: 89.8 MB (89806231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c602ec37d9e750dcd5a3ff7ae39a5ae669456344bf930cac84274ab25307534c`  
		Last Modified: Thu, 01 Dec 2016 20:00:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4040e8a34330e31a21bd3a117b9adc67e95ae0564d86ce03366c2780ae3fa2e9`  
		Last Modified: Thu, 01 Dec 2016 20:00:00 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-wheezy`

```console
$ docker pull golang@sha256:7d3902317215a6415043b36f4f41aa88a65a4f87c06e4ceb49eb66cfd50ac181
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.6 MB (207578949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ada1dfa19367172a45fa943d03b9e712a2bb565b1f323caae9905bf9e19f1f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:35:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.linux-amd64.tar.gz
# Thu, 01 Dec 2016 19:50:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=768d8d73ccea69c9a0941f9ef2333b1ff8c82120abfcdedd4e91af039c674a8d
# Thu, 01 Dec 2016 19:50:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 01 Dec 2016 19:50:25 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:50:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:50:27 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:50:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727f2714cc443069ac3f57b891cddd93f170223c961bf68ffbd2e1700e8be2f`  
		Last Modified: Tue, 08 Nov 2016 19:36:13 GMT  
		Size: 36.4 MB (36446322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517cd43e5845eaa89d5ddf1bd8363a3fa93f07278b13247b090831d56bb18570`  
		Last Modified: Thu, 01 Dec 2016 20:00:31 GMT  
		Size: 89.8 MB (89806231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c602ec37d9e750dcd5a3ff7ae39a5ae669456344bf930cac84274ab25307534c`  
		Last Modified: Thu, 01 Dec 2016 20:00:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4040e8a34330e31a21bd3a117b9adc67e95ae0564d86ce03366c2780ae3fa2e9`  
		Last Modified: Thu, 01 Dec 2016 20:00:00 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1-alpine`

```console
$ docker pull golang@sha256:5623daf8c9d73459f9781cdd445b01aaa54d7253ed49933fb239b2fb1d5cf173
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78593783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a86cd1c38abe276560cd0f69725666f9d57745ba58021bd7a5ddf76d432c059`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8beta1.src.tar.gz
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_SRC_SHA256=7204232743f85a2ebb31dbbb8ea0d792eeb89357bb2ff0ef3ed62e192fdd60e4
# Thu, 01 Dec 2016 19:50:29 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Thu, 01 Dec 2016 19:51:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 19:51:52 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:51:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:51:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:51:54 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:51:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cb469f1c548c6e09e03a04eae1cbdf51e55259a21f5a201b756a0f9775ed38`  
		Last Modified: Thu, 01 Dec 2016 20:01:09 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781d9c0525d218135f971f5a20cd4e603d9860762c6b0ccb2268b57be93841d7`  
		Last Modified: Thu, 01 Dec 2016 20:01:33 GMT  
		Size: 75.9 MB (75934946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2e8444f3d00560519aad6ced1cb6f954dbb69728a8beaa6050bb6aaa2e8b90`  
		Last Modified: Thu, 01 Dec 2016 20:01:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe13b08a72d0416402dcb2f47b57798cbe88d61f6f5c0da85fee8f75701c6d7`  
		Last Modified: Thu, 01 Dec 2016 20:01:08 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:5623daf8c9d73459f9781cdd445b01aaa54d7253ed49933fb239b2fb1d5cf173
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78593783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a86cd1c38abe276560cd0f69725666f9d57745ba58021bd7a5ddf76d432c059`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8beta1.src.tar.gz
# Thu, 01 Dec 2016 19:50:28 GMT
ENV GOLANG_SRC_SHA256=7204232743f85a2ebb31dbbb8ea0d792eeb89357bb2ff0ef3ed62e192fdd60e4
# Thu, 01 Dec 2016 19:50:29 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Thu, 01 Dec 2016 19:51:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Thu, 01 Dec 2016 19:51:52 GMT
ENV GOPATH=/go
# Thu, 01 Dec 2016 19:51:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Dec 2016 19:51:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 01 Dec 2016 19:51:54 GMT
WORKDIR /go
# Thu, 01 Dec 2016 19:51:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c311f66f3ac9a1d4b9fdfa8ac09821993c24d540e6147d25793c861c67892238`  
		Last Modified: Tue, 18 Oct 2016 20:36:01 GMT  
		Size: 344.0 KB (343962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cb469f1c548c6e09e03a04eae1cbdf51e55259a21f5a201b756a0f9775ed38`  
		Last Modified: Thu, 01 Dec 2016 20:01:09 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781d9c0525d218135f971f5a20cd4e603d9860762c6b0ccb2268b57be93841d7`  
		Last Modified: Thu, 01 Dec 2016 20:01:33 GMT  
		Size: 75.9 MB (75934946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2e8444f3d00560519aad6ced1cb6f954dbb69728a8beaa6050bb6aaa2e8b90`  
		Last Modified: Thu, 01 Dec 2016 20:01:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe13b08a72d0416402dcb2f47b57798cbe88d61f6f5c0da85fee8f75701c6d7`  
		Last Modified: Thu, 01 Dec 2016 20:01:08 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1-windowsservercore`

```console
$ docker pull golang@sha256:4d2ecccfa117028568ecdc8fd614430c50b2277ad84ba8c6c31fbcbaf7d1cc34
```

-	Platforms:
	-	windows; amd64

### `golang:1.8beta1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4942337128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9886e5db555db0a593e3fda5e156b26fe3efab8c1f87082614300f6917bac7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:59:23 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 23:59:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.windows-amd64.zip
# Thu, 01 Dec 2016 23:59:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=7b246c37dfe37348a16b6bc1865ebc21a79c4fd869032fba78c65e46b11b741b
# Fri, 02 Dec 2016 00:03:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 02 Dec 2016 00:03:52 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071b5133687fab315612a39b5a16e6a813f2f9134f421197b3586a6f5684bfef`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae687a67affa120be91b5626599c4e1aa2a1b042368e27a6ea0aef9b87d0f4`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772086514396112b86815b4e689ae4dae7f57b92d5d46b11b62846c0ce0fb0f`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ce1fed4d60f9665b3c197e9a9f1e094c3684f3820cdd5893c24fb23675fb3`  
		Last Modified: Fri, 02 Dec 2016 00:19:18 GMT  
		Size: 101.4 MB (101422420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed291a12fb1f0c10e5b079c5a3e2631198fff51a0c7523c6a35969a7db877648`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:4d2ecccfa117028568ecdc8fd614430c50b2277ad84ba8c6c31fbcbaf7d1cc34
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4942337128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9886e5db555db0a593e3fda5e156b26fe3efab8c1f87082614300f6917bac7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:38:46 GMT
ENV GIT_VERSION=2.9.2
# Thu, 01 Dec 2016 23:38:49 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Thu, 01 Dec 2016 23:38:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Thu, 01 Dec 2016 23:38:56 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Thu, 01 Dec 2016 23:42:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Thu, 01 Dec 2016 23:42:53 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:43:13 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Dec 2016 23:59:23 GMT
ENV GOLANG_VERSION=1.8beta1
# Thu, 01 Dec 2016 23:59:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.windows-amd64.zip
# Thu, 01 Dec 2016 23:59:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=7b246c37dfe37348a16b6bc1865ebc21a79c4fd869032fba78c65e46b11b741b
# Fri, 02 Dec 2016 00:03:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 02 Dec 2016 00:03:52 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6029883041761bd943c2b92d3cab623072e9f7f28eb678a87949cb1bd4808b5e`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5625c770015763f628f83b871dac1a487f641b01be9b024125869150146de8a1`  
		Last Modified: Fri, 02 Dec 2016 00:08:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d963a6add9d23b2661669b646a1d005e12eaa6628729d871efc3b552a407d4`  
		Last Modified: Fri, 02 Dec 2016 00:08:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48991846104dc71b009a2fdf274ba6129bbbca34b35129bd2411938d6537db2b`  
		Last Modified: Fri, 02 Dec 2016 00:08:19 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5691468b4a91bfd78fd5cd66cf4b30d827a00ebeb0cf493c11ad6e7d7a2e56e`  
		Last Modified: Fri, 02 Dec 2016 00:08:18 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f524601b21854f16a2b90a7b849363d5599f1fb9f04d9b05d80c147b2c0fe`  
		Last Modified: Fri, 02 Dec 2016 00:09:22 GMT  
		Size: 215.4 MB (215358306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7273d7691c854e567053d023596faeb2da59d93bf724b29d4078126cf8f771ec`  
		Last Modified: Fri, 02 Dec 2016 00:08:14 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1aed27e49a5e6503bdb031bf8f403559a4e4a947d7bba149364fb4a0c9aa46`  
		Last Modified: Fri, 02 Dec 2016 00:08:17 GMT  
		Size: 8.9 MB (8867773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071b5133687fab315612a39b5a16e6a813f2f9134f421197b3586a6f5684bfef`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ae687a67affa120be91b5626599c4e1aa2a1b042368e27a6ea0aef9b87d0f4`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772086514396112b86815b4e689ae4dae7f57b92d5d46b11b62846c0ce0fb0f`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ce1fed4d60f9665b3c197e9a9f1e094c3684f3820cdd5893c24fb23675fb3`  
		Last Modified: Fri, 02 Dec 2016 00:19:18 GMT  
		Size: 101.4 MB (101422420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed291a12fb1f0c10e5b079c5a3e2631198fff51a0c7523c6a35969a7db877648`  
		Last Modified: Fri, 02 Dec 2016 00:18:51 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta1-nanoserver`

```console
$ docker pull golang@sha256:070817d76998800446ec13c96eb74298ad14a56da1c0ae73210a08c71da695c0
```

-	Platforms:
	-	windows; amd64

### `golang:1.8beta1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440272539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f12e6f1f0721e7ae8dc927f5b44c195d69dd815478310d85a195cb842c9f57`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 02 Dec 2016 00:03:55 GMT
ENV GOLANG_VERSION=1.8beta1
# Fri, 02 Dec 2016 00:03:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.windows-amd64.zip
# Fri, 02 Dec 2016 00:03:59 GMT
ENV GOLANG_DOWNLOAD_SHA256=7b246c37dfe37348a16b6bc1865ebc21a79c4fd869032fba78c65e46b11b741b
# Fri, 02 Dec 2016 00:07:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 02 Dec 2016 00:08:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47605440cb618468a614e85c67a6db4d98fb1fe289014e40d2d37f1fe840d73d`  
		Last Modified: Fri, 02 Dec 2016 00:19:30 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96084db4b2f34b00ee8dd5c78de880bf203f423ffdf7b9c6ab40a55cd5266a36`  
		Last Modified: Fri, 02 Dec 2016 00:19:29 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec74f4fbdb1a05201a0d64cc8555f4ddad994a7747be1b39f718285dda778ee`  
		Last Modified: Fri, 02 Dec 2016 00:19:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e992dbd8d85cd9c10ea14ae648848ddb61ebe0ab544e208e3239e489de2c561`  
		Last Modified: Fri, 02 Dec 2016 00:19:58 GMT  
		Size: 96.2 MB (96235167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3421fbcb133efba70c9d624a16e5dcd4331243bdbfd9fc17e641637e2067dd03`  
		Last Modified: Fri, 02 Dec 2016 00:19:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:070817d76998800446ec13c96eb74298ad14a56da1c0ae73210a08c71da695c0
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440272539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f12e6f1f0721e7ae8dc927f5b44c195d69dd815478310d85a195cb842c9f57`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 02 Dec 2016 00:03:55 GMT
ENV GOLANG_VERSION=1.8beta1
# Fri, 02 Dec 2016 00:03:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta1.windows-amd64.zip
# Fri, 02 Dec 2016 00:03:59 GMT
ENV GOLANG_DOWNLOAD_SHA256=7b246c37dfe37348a16b6bc1865ebc21a79c4fd869032fba78c65e46b11b741b
# Fri, 02 Dec 2016 00:07:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 02 Dec 2016 00:08:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:66c4c0000446f244c31261d2b9981fcba14207a8a48ab548fc937eeb7e898899`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb3cd88a6267200344acf26b376f4eb2bbe1e27a468e0439cdfabd52856aba`  
		Last Modified: Fri, 02 Dec 2016 00:16:32 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad305fc60a3da44f0d081e690f57a4dd19f978de968be84957950b1bcbcaa92`  
		Last Modified: Fri, 02 Dec 2016 00:16:33 GMT  
		Size: 855.4 KB (855435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47605440cb618468a614e85c67a6db4d98fb1fe289014e40d2d37f1fe840d73d`  
		Last Modified: Fri, 02 Dec 2016 00:19:30 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96084db4b2f34b00ee8dd5c78de880bf203f423ffdf7b9c6ab40a55cd5266a36`  
		Last Modified: Fri, 02 Dec 2016 00:19:29 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec74f4fbdb1a05201a0d64cc8555f4ddad994a7747be1b39f718285dda778ee`  
		Last Modified: Fri, 02 Dec 2016 00:19:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e992dbd8d85cd9c10ea14ae648848ddb61ebe0ab544e208e3239e489de2c561`  
		Last Modified: Fri, 02 Dec 2016 00:19:58 GMT  
		Size: 96.2 MB (96235167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3421fbcb133efba70c9d624a16e5dcd4331243bdbfd9fc17e641637e2067dd03`  
		Last Modified: Fri, 02 Dec 2016 00:19:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
