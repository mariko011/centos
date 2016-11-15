<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1.6.3`](#golang163)
-	[`golang:1.6`](#golang16)
-	[`golang:1.6.3-onbuild`](#golang163-onbuild)
-	[`golang:1.6-onbuild`](#golang16-onbuild)
-	[`golang:1.6.3-wheezy`](#golang163-wheezy)
-	[`golang:1.6-wheezy`](#golang16-wheezy)
-	[`golang:1.6.3-alpine`](#golang163-alpine)
-	[`golang:1.6-alpine`](#golang16-alpine)
-	[`golang:1.6.3-windowsservercore`](#golang163-windowsservercore)
-	[`golang:1.6-windowsservercore`](#golang16-windowsservercore)
-	[`golang:1.6.3-nanoserver`](#golang163-nanoserver)
-	[`golang:1.6-nanoserver`](#golang16-nanoserver)
-	[`golang:1.7.3`](#golang173)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.3-onbuild`](#golang173-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.3-wheezy`](#golang173-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.3-alpine`](#golang173-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.3-windowsservercore`](#golang173-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.7.3-nanoserver`](#golang173-nanoserver)
-	[`golang:1.7-nanoserver`](#golang17-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)

## `golang:1.6.3`

```console
$ docker pull golang@sha256:9bc3717d167110a13be0ca34936a1d2d509f1775499649a6be616330ab20dbd1
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256905948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1553cdf672f99c9e8dbf7461629080874db0347c95a8d20876ad2a816b30ea4`
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
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:37:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:37:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:37:50 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:37:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:37:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:37:52 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:37:52 GMT
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
	-	`sha256:ca401ff682d8d4d1b3e83596303fd9ca352be44938b843187947b39fc72278b6`  
		Last Modified: Tue, 08 Nov 2016 19:38:32 GMT  
		Size: 84.9 MB (84869299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce78c48a8ff830ef3f6c4a407ca58b61a0007e83c20d1854bfa91cb9443dc91`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003bd57c0f10df2871af1814d8e1468d228493311eadc58188e1599a692fa59`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:9bc3717d167110a13be0ca34936a1d2d509f1775499649a6be616330ab20dbd1
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256905948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1553cdf672f99c9e8dbf7461629080874db0347c95a8d20876ad2a816b30ea4`
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
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:37:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:37:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:37:50 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:37:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:37:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:37:52 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:37:52 GMT
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
	-	`sha256:ca401ff682d8d4d1b3e83596303fd9ca352be44938b843187947b39fc72278b6`  
		Last Modified: Tue, 08 Nov 2016 19:38:32 GMT  
		Size: 84.9 MB (84869299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce78c48a8ff830ef3f6c4a407ca58b61a0007e83c20d1854bfa91cb9443dc91`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003bd57c0f10df2871af1814d8e1468d228493311eadc58188e1599a692fa59`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-onbuild`

```console
$ docker pull golang@sha256:f65dc13ae84244344bdc1626bac3be0f53ca8720eb3f6315ddb7846c24587277
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256906080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2b6533afe0ea36fd69b34dc9c607ad9ca76ea6e0c2fd4af9d0d22c59dd6d81`
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
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:37:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:37:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:37:50 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:37:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:37:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:37:52 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:37:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:39:18 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:39:18 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:39:19 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:39:19 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:39:19 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:39:20 GMT
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
	-	`sha256:ca401ff682d8d4d1b3e83596303fd9ca352be44938b843187947b39fc72278b6`  
		Last Modified: Tue, 08 Nov 2016 19:38:32 GMT  
		Size: 84.9 MB (84869299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce78c48a8ff830ef3f6c4a407ca58b61a0007e83c20d1854bfa91cb9443dc91`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003bd57c0f10df2871af1814d8e1468d228493311eadc58188e1599a692fa59`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cb6eaaa8f2e99b3d789016df2e0f83daf1c3f976510eca1a0052658618aa42`  
		Last Modified: Tue, 08 Nov 2016 19:39:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:f65dc13ae84244344bdc1626bac3be0f53ca8720eb3f6315ddb7846c24587277
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256906080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2b6533afe0ea36fd69b34dc9c607ad9ca76ea6e0c2fd4af9d0d22c59dd6d81`
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
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:37:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:37:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:37:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:37:50 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:37:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:37:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:37:52 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:37:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:39:18 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:39:18 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:39:19 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:39:19 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:39:19 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:39:20 GMT
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
	-	`sha256:ca401ff682d8d4d1b3e83596303fd9ca352be44938b843187947b39fc72278b6`  
		Last Modified: Tue, 08 Nov 2016 19:38:32 GMT  
		Size: 84.9 MB (84869299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce78c48a8ff830ef3f6c4a407ca58b61a0007e83c20d1854bfa91cb9443dc91`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e003bd57c0f10df2871af1814d8e1468d228493311eadc58188e1599a692fa59`  
		Last Modified: Tue, 08 Nov 2016 19:38:04 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cb6eaaa8f2e99b3d789016df2e0f83daf1c3f976510eca1a0052658618aa42`  
		Last Modified: Tue, 08 Nov 2016 19:39:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-wheezy`

```console
$ docker pull golang@sha256:05ab1e57b4543e9979e6705d1a39f868712c1a186ca96c5ab96e5814478bde52
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202642019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cee153895347318f3292f78106cecf2b14d5186e1a613003a6534d5b70ef22a`
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
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:40:04 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:40:07 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:40:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:40:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:40:09 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:40:09 GMT
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
	-	`sha256:d776697ec8cc7ad4cd1248dfae9519f099b75912d5454a0a09ed639b9b3cdcf3`  
		Last Modified: Tue, 08 Nov 2016 19:40:48 GMT  
		Size: 84.9 MB (84869300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e8b06ed9468acfdb84c1e7091cd73a5e9e1ada3302a30a338762dda68bc8b2`  
		Last Modified: Tue, 08 Nov 2016 19:40:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852078f30afe9757c293426e3d0cf3d1df360900ada47e0d4ce3a04323c2fdcc`  
		Last Modified: Tue, 08 Nov 2016 19:40:20 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:05ab1e57b4543e9979e6705d1a39f868712c1a186ca96c5ab96e5814478bde52
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202642019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cee153895347318f3292f78106cecf2b14d5186e1a613003a6534d5b70ef22a`
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
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:39:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 08 Nov 2016 19:40:04 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:40:07 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:40:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:40:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:40:09 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:40:09 GMT
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
	-	`sha256:d776697ec8cc7ad4cd1248dfae9519f099b75912d5454a0a09ed639b9b3cdcf3`  
		Last Modified: Tue, 08 Nov 2016 19:40:48 GMT  
		Size: 84.9 MB (84869300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e8b06ed9468acfdb84c1e7091cd73a5e9e1ada3302a30a338762dda68bc8b2`  
		Last Modified: Tue, 08 Nov 2016 19:40:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852078f30afe9757c293426e3d0cf3d1df360900ada47e0d4ce3a04323c2fdcc`  
		Last Modified: Tue, 08 Nov 2016 19:40:20 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-alpine`

```console
$ docker pull golang@sha256:6654d7df76000e3fa23576fd94890a72392fbb1302594e5e2d0a0a1bff169c7c
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6e04805d43a3ea0c4ae3e46ed3175822283361179268fa2e58a2b4dfe098f2`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Tue, 18 Oct 2016 20:32:38 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 18 Oct 2016 20:33:35 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 18 Oct 2016 20:33:36 GMT
ENV GOPATH=/go
# Tue, 18 Oct 2016 20:33:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:33:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Oct 2016 20:33:38 GMT
WORKDIR /go
# Tue, 18 Oct 2016 20:33:38 GMT
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
	-	`sha256:dd7c11c7fbb68625242a12dd161fe825347cde21917e5ed9feae84792d90b6dd`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d123bc0e4b561e6fec451e56764dd48a13599a1bc3a66a27741d0c2ed1550e`  
		Last Modified: Tue, 18 Oct 2016 20:36:24 GMT  
		Size: 69.5 MB (69499961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee23b97f8a2a9c8f70397c6cf05270e2788b62ec5b26559c17241e6bbd2a5c`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afe9bae2e86ba899889998b31a9ec3bdbad097a02bcfcbd01b0c5e070b8a9e3`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:6654d7df76000e3fa23576fd94890a72392fbb1302594e5e2d0a0a1bff169c7c
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6e04805d43a3ea0c4ae3e46ed3175822283361179268fa2e58a2b4dfe098f2`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Tue, 18 Oct 2016 20:32:37 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Tue, 18 Oct 2016 20:32:38 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 18 Oct 2016 20:33:35 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 18 Oct 2016 20:33:36 GMT
ENV GOPATH=/go
# Tue, 18 Oct 2016 20:33:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 20:33:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Oct 2016 20:33:38 GMT
WORKDIR /go
# Tue, 18 Oct 2016 20:33:38 GMT
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
	-	`sha256:dd7c11c7fbb68625242a12dd161fe825347cde21917e5ed9feae84792d90b6dd`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d123bc0e4b561e6fec451e56764dd48a13599a1bc3a66a27741d0c2ed1550e`  
		Last Modified: Tue, 18 Oct 2016 20:36:24 GMT  
		Size: 69.5 MB (69499961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee23b97f8a2a9c8f70397c6cf05270e2788b62ec5b26559c17241e6bbd2a5c`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afe9bae2e86ba899889998b31a9ec3bdbad097a02bcfcbd01b0c5e070b8a9e3`  
		Last Modified: Tue, 18 Oct 2016 20:35:59 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-windowsservercore`

```console
$ docker pull golang@sha256:97c0865d1e7271da03d803996953a62c044a00a776802feed70c91c1e4461436
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4938443437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8ecb0479c37547956bfc599ef8b74301dc16500e58d8d2f5362f2be5b1c6d2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 15 Nov 2016 00:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:07:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Tue, 15 Nov 2016 00:12:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:12:37 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46a340df512b121fa3ef282f0849a0398002763e46efc2ba0871d7e50dfb5da`  
		Last Modified: Tue, 15 Nov 2016 00:12:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3dd5c7524a8e7ee84c9d54cb9f57983675829ce3b6da76946be93ee878682a`  
		Last Modified: Tue, 15 Nov 2016 00:12:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fec264a6821ec1bea767cf2cb1dbde70247a62465531386f29a5cb77890465`  
		Last Modified: Tue, 15 Nov 2016 00:12:45 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe138675af58587537e45eb088615b726f7e74717ecc9a51a2943c537611ea`  
		Last Modified: Tue, 15 Nov 2016 00:13:15 GMT  
		Size: 97.5 MB (97513889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f4d87db49fffa8f175ec7def8787b18b98d034116093c254f911f59e0fc62b`  
		Last Modified: Tue, 15 Nov 2016 00:12:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:97c0865d1e7271da03d803996953a62c044a00a776802feed70c91c1e4461436
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4938443437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8ecb0479c37547956bfc599ef8b74301dc16500e58d8d2f5362f2be5b1c6d2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 15 Nov 2016 00:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:07:54 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Tue, 15 Nov 2016 00:12:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:12:37 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46a340df512b121fa3ef282f0849a0398002763e46efc2ba0871d7e50dfb5da`  
		Last Modified: Tue, 15 Nov 2016 00:12:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3dd5c7524a8e7ee84c9d54cb9f57983675829ce3b6da76946be93ee878682a`  
		Last Modified: Tue, 15 Nov 2016 00:12:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fec264a6821ec1bea767cf2cb1dbde70247a62465531386f29a5cb77890465`  
		Last Modified: Tue, 15 Nov 2016 00:12:45 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe138675af58587537e45eb088615b726f7e74717ecc9a51a2943c537611ea`  
		Last Modified: Tue, 15 Nov 2016 00:13:15 GMT  
		Size: 97.5 MB (97513889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f4d87db49fffa8f175ec7def8787b18b98d034116093c254f911f59e0fc62b`  
		Last Modified: Tue, 15 Nov 2016 00:12:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-nanoserver`

```console
$ docker pull golang@sha256:000c4fdfe89c88084bc1731d6e57affc04e5194d990cd8c34504142e45a9b161
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437185103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e14e204b084f44e12d5ffe8cb3c4708c63a1e87e87fc256a46e68941bb5ca6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:14:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:14:25 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:15:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 15 Nov 2016 00:15:02 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 15 Nov 2016 00:15:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:15:06 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Tue, 15 Nov 2016 00:19:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:19:36 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5754f9d84935d359a6194ff6aca82b2a08535f7bdc4855c50b91d6797af47d75`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b7b304de65cc2507006afb90d24f8e6b039d0ccb277fa8bb150ff074cbb6df`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea80931ba5ad3798a845960ea41f81eb9f54ef55e6b4f88c692ac46f6ec5925`  
		Last Modified: Tue, 15 Nov 2016 00:19:57 GMT  
		Size: 855.2 KB (855191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbbb14b27c0605d67b219949a4b05b32d571c3c1e8e869031dda6c40202c0f`  
		Last Modified: Tue, 15 Nov 2016 00:19:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8dea3cf2b01fe3ca4fad837aad44dea2ba3db31bc1672bd5c04475f4230772`  
		Last Modified: Tue, 15 Nov 2016 00:19:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd57e36d85c7624bc40e4764e0642a256e74ac0759445c046848951f1eb37c6`  
		Last Modified: Tue, 15 Nov 2016 00:19:42 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018c629811ad94d6c3e284f39995fbd71d3853aa9ed451553892cde784bcf16a`  
		Last Modified: Tue, 15 Nov 2016 00:20:07 GMT  
		Size: 93.1 MB (93147958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89e192ceee603c21c87dc3f09cba09559ea5872fa0ef52b36fe4a517164652f`  
		Last Modified: Tue, 15 Nov 2016 00:19:44 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-nanoserver`

```console
$ docker pull golang@sha256:000c4fdfe89c88084bc1731d6e57affc04e5194d990cd8c34504142e45a9b161
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437185103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e14e204b084f44e12d5ffe8cb3c4708c63a1e87e87fc256a46e68941bb5ca6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:14:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:14:25 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:15:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 15 Nov 2016 00:15:02 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 15 Nov 2016 00:15:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:15:06 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Tue, 15 Nov 2016 00:19:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:19:36 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:482ab31872a23b32cbdeca13edb7a0b97290714c0b5edcce96fbb3e34221ea91`  
		Size: 100.5 MB (100529622 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5754f9d84935d359a6194ff6aca82b2a08535f7bdc4855c50b91d6797af47d75`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b7b304de65cc2507006afb90d24f8e6b039d0ccb277fa8bb150ff074cbb6df`  
		Last Modified: Tue, 15 Nov 2016 00:19:53 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea80931ba5ad3798a845960ea41f81eb9f54ef55e6b4f88c692ac46f6ec5925`  
		Last Modified: Tue, 15 Nov 2016 00:19:57 GMT  
		Size: 855.2 KB (855191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbbb14b27c0605d67b219949a4b05b32d571c3c1e8e869031dda6c40202c0f`  
		Last Modified: Tue, 15 Nov 2016 00:19:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8dea3cf2b01fe3ca4fad837aad44dea2ba3db31bc1672bd5c04475f4230772`  
		Last Modified: Tue, 15 Nov 2016 00:19:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd57e36d85c7624bc40e4764e0642a256e74ac0759445c046848951f1eb37c6`  
		Last Modified: Tue, 15 Nov 2016 00:19:42 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018c629811ad94d6c3e284f39995fbd71d3853aa9ed451553892cde784bcf16a`  
		Last Modified: Tue, 15 Nov 2016 00:20:07 GMT  
		Size: 93.1 MB (93147958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89e192ceee603c21c87dc3f09cba09559ea5872fa0ef52b36fe4a517164652f`  
		Last Modified: Tue, 15 Nov 2016 00:19:44 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3`

```console
$ docker pull golang@sha256:340212e9c5d062f3bfe58ff02768da70234ea734bd022a357ee6be2a6d963505
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef15416724f6e2d5d5b422dc5105add931c1f2a45959cd4993e75e47957b3b55`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:340212e9c5d062f3bfe58ff02768da70234ea734bd022a357ee6be2a6d963505
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef15416724f6e2d5d5b422dc5105add931c1f2a45959cd4993e75e47957b3b55`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:340212e9c5d062f3bfe58ff02768da70234ea734bd022a357ee6be2a6d963505
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef15416724f6e2d5d5b422dc5105add931c1f2a45959cd4993e75e47957b3b55`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:340212e9c5d062f3bfe58ff02768da70234ea734bd022a357ee6be2a6d963505
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef15416724f6e2d5d5b422dc5105add931c1f2a45959cd4993e75e47957b3b55`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3-onbuild`

```console
$ docker pull golang@sha256:dda77c9d3f2805cab84c34e8b61d7113ccb08dd4feca7eadda9068c8967f65a0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ce4aa3b0ae91ff0e00dcddaa69295e5a15a2dff9f3731284008bf5171a6818`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:34:08 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:34:08 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:34:10 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922788af3f35ae6c68cbf9bfd3609d0d3d1ceda92f64fffa1046ef299ce7877f`  
		Last Modified: Tue, 08 Nov 2016 19:34:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:dda77c9d3f2805cab84c34e8b61d7113ccb08dd4feca7eadda9068c8967f65a0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ce4aa3b0ae91ff0e00dcddaa69295e5a15a2dff9f3731284008bf5171a6818`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:34:08 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:34:08 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:34:10 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922788af3f35ae6c68cbf9bfd3609d0d3d1ceda92f64fffa1046ef299ce7877f`  
		Last Modified: Tue, 08 Nov 2016 19:34:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:dda77c9d3f2805cab84c34e8b61d7113ccb08dd4feca7eadda9068c8967f65a0
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ce4aa3b0ae91ff0e00dcddaa69295e5a15a2dff9f3731284008bf5171a6818`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:34:08 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:34:08 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:34:10 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922788af3f35ae6c68cbf9bfd3609d0d3d1ceda92f64fffa1046ef299ce7877f`  
		Last Modified: Tue, 08 Nov 2016 19:34:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:dda77c9d3f2805cab84c34e8b61d7113ccb08dd4feca7eadda9068c8967f65a0
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ce4aa3b0ae91ff0e00dcddaa69295e5a15a2dff9f3731284008bf5171a6818`
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
# Tue, 08 Nov 2016 19:32:26 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:32:27 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:32:37 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:32:37 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:32:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:32:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:32:39 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:32:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 08 Nov 2016 19:34:08 GMT
RUN mkdir -p /go/src/app
# Tue, 08 Nov 2016 19:34:08 GMT
WORKDIR /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 08 Nov 2016 19:34:09 GMT
ONBUILD RUN go-wrapper download
# Tue, 08 Nov 2016 19:34:10 GMT
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
	-	`sha256:457559cc1d6958f0e68fc282958bcd89eae53b060af26b81a03a10e8282fba87`  
		Last Modified: Tue, 08 Nov 2016 19:33:20 GMT  
		Size: 81.6 MB (81632722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fe51a74a066840cfb4b54bba4306910acb643763c7a7de45bba12de7944043`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dacccac43c542e4c9212d0d4c7c8ca435817eb747f91a77892123945271ad2`  
		Last Modified: Tue, 08 Nov 2016 19:32:50 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922788af3f35ae6c68cbf9bfd3609d0d3d1ceda92f64fffa1046ef299ce7877f`  
		Last Modified: Tue, 08 Nov 2016 19:34:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3-wheezy`

```console
$ docker pull golang@sha256:7a9feb1f3a159d2f0fc89e841e4051e40d5ed51646a6fc266480bf6a6d349981
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.3-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199405457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdd4a5d06b7a20aa7161657a11c201ed41c5c5787083aab48b3f8deaffa234c`
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
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:35:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:35:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:35:40 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:35:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:35:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:35:48 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:35:49 GMT
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
	-	`sha256:21f0a7e8084cf86cbd996b00e95a48451d8e765aef0ccdbe522718278f1c7507`  
		Last Modified: Tue, 08 Nov 2016 19:36:38 GMT  
		Size: 81.6 MB (81632740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804020d23608d539655d4c46a089063171a6fcd5d737f5c366b0bf65cf737b5`  
		Last Modified: Tue, 08 Nov 2016 19:36:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dbf62738ce692cbbdf8ee68885320eb527116f728ba1c57de0bca8cffa12b8`  
		Last Modified: Tue, 08 Nov 2016 19:36:01 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:7a9feb1f3a159d2f0fc89e841e4051e40d5ed51646a6fc266480bf6a6d349981
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199405457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdd4a5d06b7a20aa7161657a11c201ed41c5c5787083aab48b3f8deaffa234c`
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
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:35:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:35:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:35:40 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:35:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:35:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:35:48 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:35:49 GMT
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
	-	`sha256:21f0a7e8084cf86cbd996b00e95a48451d8e765aef0ccdbe522718278f1c7507`  
		Last Modified: Tue, 08 Nov 2016 19:36:38 GMT  
		Size: 81.6 MB (81632740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804020d23608d539655d4c46a089063171a6fcd5d737f5c366b0bf65cf737b5`  
		Last Modified: Tue, 08 Nov 2016 19:36:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dbf62738ce692cbbdf8ee68885320eb527116f728ba1c57de0bca8cffa12b8`  
		Last Modified: Tue, 08 Nov 2016 19:36:01 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:7a9feb1f3a159d2f0fc89e841e4051e40d5ed51646a6fc266480bf6a6d349981
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199405457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdd4a5d06b7a20aa7161657a11c201ed41c5c5787083aab48b3f8deaffa234c`
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
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:35:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:35:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:35:40 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:35:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:35:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:35:48 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:35:49 GMT
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
	-	`sha256:21f0a7e8084cf86cbd996b00e95a48451d8e765aef0ccdbe522718278f1c7507`  
		Last Modified: Tue, 08 Nov 2016 19:36:38 GMT  
		Size: 81.6 MB (81632740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804020d23608d539655d4c46a089063171a6fcd5d737f5c366b0bf65cf737b5`  
		Last Modified: Tue, 08 Nov 2016 19:36:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dbf62738ce692cbbdf8ee68885320eb527116f728ba1c57de0bca8cffa12b8`  
		Last Modified: Tue, 08 Nov 2016 19:36:01 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:7a9feb1f3a159d2f0fc89e841e4051e40d5ed51646a6fc266480bf6a6d349981
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199405457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdd4a5d06b7a20aa7161657a11c201ed41c5c5787083aab48b3f8deaffa234c`
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
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 08 Nov 2016 19:35:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Tue, 08 Nov 2016 19:35:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Tue, 08 Nov 2016 19:35:39 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 08 Nov 2016 19:35:40 GMT
ENV GOPATH=/go
# Tue, 08 Nov 2016 19:35:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:35:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Nov 2016 19:35:48 GMT
WORKDIR /go
# Tue, 08 Nov 2016 19:35:49 GMT
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
	-	`sha256:21f0a7e8084cf86cbd996b00e95a48451d8e765aef0ccdbe522718278f1c7507`  
		Last Modified: Tue, 08 Nov 2016 19:36:38 GMT  
		Size: 81.6 MB (81632740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804020d23608d539655d4c46a089063171a6fcd5d737f5c366b0bf65cf737b5`  
		Last Modified: Tue, 08 Nov 2016 19:36:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dbf62738ce692cbbdf8ee68885320eb527116f728ba1c57de0bca8cffa12b8`  
		Last Modified: Tue, 08 Nov 2016 19:36:01 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3-alpine`

```console
$ docker pull golang@sha256:25ad25d8bece9d403be107b07c86fb6b2b588a5b26133baa9d1215c07bdbfa39
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73275541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e874ba5240682d53411752d2186e74418a9d33d04238ef07b19e7a09db7eeda`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.3.src.tar.gz
# Wed, 19 Oct 2016 21:55:11 GMT
ENV GOLANG_SRC_SHA256=79430a0027a09b0b3ad57e214c4c1acfdd7af290961dd08d322818895af1ef44
# Wed, 19 Oct 2016 21:55:11 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 19 Oct 2016 21:56:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 19 Oct 2016 21:56:10 GMT
ENV GOPATH=/go
# Wed, 19 Oct 2016 21:56:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Oct 2016 21:56:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Oct 2016 21:56:12 GMT
WORKDIR /go
# Wed, 19 Oct 2016 21:56:12 GMT
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
	-	`sha256:4d1bd6f06a512616af4cc963a6a480772417ae6454ddd3449bb322a0c0f7f641`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303de2b017481f849acabcedfcd72acd64a9b9fe01ac390d22d745124c878cfc`  
		Last Modified: Wed, 19 Oct 2016 22:01:26 GMT  
		Size: 70.6 MB (70616711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e14a610b962f19fdf5ed742d2d73dd9e0032bb653c6aa4fdbcae4e3156d686b`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8c4ac4e92604b79006337436a5b5028212cf8b7bc1dfbd82d68f7034ca03eb`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:25ad25d8bece9d403be107b07c86fb6b2b588a5b26133baa9d1215c07bdbfa39
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73275541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e874ba5240682d53411752d2186e74418a9d33d04238ef07b19e7a09db7eeda`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.3.src.tar.gz
# Wed, 19 Oct 2016 21:55:11 GMT
ENV GOLANG_SRC_SHA256=79430a0027a09b0b3ad57e214c4c1acfdd7af290961dd08d322818895af1ef44
# Wed, 19 Oct 2016 21:55:11 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 19 Oct 2016 21:56:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 19 Oct 2016 21:56:10 GMT
ENV GOPATH=/go
# Wed, 19 Oct 2016 21:56:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Oct 2016 21:56:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Oct 2016 21:56:12 GMT
WORKDIR /go
# Wed, 19 Oct 2016 21:56:12 GMT
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
	-	`sha256:4d1bd6f06a512616af4cc963a6a480772417ae6454ddd3449bb322a0c0f7f641`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303de2b017481f849acabcedfcd72acd64a9b9fe01ac390d22d745124c878cfc`  
		Last Modified: Wed, 19 Oct 2016 22:01:26 GMT  
		Size: 70.6 MB (70616711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e14a610b962f19fdf5ed742d2d73dd9e0032bb653c6aa4fdbcae4e3156d686b`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8c4ac4e92604b79006337436a5b5028212cf8b7bc1dfbd82d68f7034ca03eb`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:25ad25d8bece9d403be107b07c86fb6b2b588a5b26133baa9d1215c07bdbfa39
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73275541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e874ba5240682d53411752d2186e74418a9d33d04238ef07b19e7a09db7eeda`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.3.src.tar.gz
# Wed, 19 Oct 2016 21:55:11 GMT
ENV GOLANG_SRC_SHA256=79430a0027a09b0b3ad57e214c4c1acfdd7af290961dd08d322818895af1ef44
# Wed, 19 Oct 2016 21:55:11 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 19 Oct 2016 21:56:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 19 Oct 2016 21:56:10 GMT
ENV GOPATH=/go
# Wed, 19 Oct 2016 21:56:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Oct 2016 21:56:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Oct 2016 21:56:12 GMT
WORKDIR /go
# Wed, 19 Oct 2016 21:56:12 GMT
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
	-	`sha256:4d1bd6f06a512616af4cc963a6a480772417ae6454ddd3449bb322a0c0f7f641`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303de2b017481f849acabcedfcd72acd64a9b9fe01ac390d22d745124c878cfc`  
		Last Modified: Wed, 19 Oct 2016 22:01:26 GMT  
		Size: 70.6 MB (70616711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e14a610b962f19fdf5ed742d2d73dd9e0032bb653c6aa4fdbcae4e3156d686b`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8c4ac4e92604b79006337436a5b5028212cf8b7bc1dfbd82d68f7034ca03eb`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:25ad25d8bece9d403be107b07c86fb6b2b588a5b26133baa9d1215c07bdbfa39
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73275541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e874ba5240682d53411752d2186e74418a9d33d04238ef07b19e7a09db7eeda`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:32:36 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:55:10 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.3.src.tar.gz
# Wed, 19 Oct 2016 21:55:11 GMT
ENV GOLANG_SRC_SHA256=79430a0027a09b0b3ad57e214c4c1acfdd7af290961dd08d322818895af1ef44
# Wed, 19 Oct 2016 21:55:11 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Wed, 19 Oct 2016 21:56:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Wed, 19 Oct 2016 21:56:10 GMT
ENV GOPATH=/go
# Wed, 19 Oct 2016 21:56:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Oct 2016 21:56:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Oct 2016 21:56:12 GMT
WORKDIR /go
# Wed, 19 Oct 2016 21:56:12 GMT
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
	-	`sha256:4d1bd6f06a512616af4cc963a6a480772417ae6454ddd3449bb322a0c0f7f641`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303de2b017481f849acabcedfcd72acd64a9b9fe01ac390d22d745124c878cfc`  
		Last Modified: Wed, 19 Oct 2016 22:01:26 GMT  
		Size: 70.6 MB (70616711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e14a610b962f19fdf5ed742d2d73dd9e0032bb653c6aa4fdbcae4e3156d686b`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8c4ac4e92604b79006337436a5b5028212cf8b7bc1dfbd82d68f7034ca03eb`  
		Last Modified: Wed, 19 Oct 2016 22:01:02 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3-windowsservercore`

```console
$ docker pull golang@sha256:787406b2846d3e0c38c45b5850dffc0a575f8858bb26e914646463d58d98b13f
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4935556964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f65c0672b774c32027ea114bcb600ab6947e08a2f255f80932a69881219e480`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:20:28 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:20:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:20:34 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:25:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:25:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b89e3593e7c0c29a5c6ed36a1392024f223e8e567fedf8e7e9380c6be84ab6e`  
		Last Modified: Tue, 15 Nov 2016 00:25:38 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e8a9ac1e8cab6ec3c0570c58d5baba93bdd85eeb34cdfdc28654939b1ff2`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f8cfef89ac886748a3d9e1075e8a8cced4983b75d2faf8a370b44f7f342f6`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177fa8ec8ade6f5204a8dbe7333f9bc3aeb72d0f896748f8dfabe324e56e1b4`  
		Last Modified: Tue, 15 Nov 2016 00:25:58 GMT  
		Size: 94.6 MB (94627410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b621bb0a8f9a25ee11778b69682882029df0a188fbfdc9880848d7cc69999`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:787406b2846d3e0c38c45b5850dffc0a575f8858bb26e914646463d58d98b13f
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4935556964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f65c0672b774c32027ea114bcb600ab6947e08a2f255f80932a69881219e480`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:20:28 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:20:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:20:34 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:25:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:25:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b89e3593e7c0c29a5c6ed36a1392024f223e8e567fedf8e7e9380c6be84ab6e`  
		Last Modified: Tue, 15 Nov 2016 00:25:38 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e8a9ac1e8cab6ec3c0570c58d5baba93bdd85eeb34cdfdc28654939b1ff2`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f8cfef89ac886748a3d9e1075e8a8cced4983b75d2faf8a370b44f7f342f6`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177fa8ec8ade6f5204a8dbe7333f9bc3aeb72d0f896748f8dfabe324e56e1b4`  
		Last Modified: Tue, 15 Nov 2016 00:25:58 GMT  
		Size: 94.6 MB (94627410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b621bb0a8f9a25ee11778b69682882029df0a188fbfdc9880848d7cc69999`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:787406b2846d3e0c38c45b5850dffc0a575f8858bb26e914646463d58d98b13f
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4935556964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f65c0672b774c32027ea114bcb600ab6947e08a2f255f80932a69881219e480`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:20:28 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:20:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:20:34 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:25:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:25:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b89e3593e7c0c29a5c6ed36a1392024f223e8e567fedf8e7e9380c6be84ab6e`  
		Last Modified: Tue, 15 Nov 2016 00:25:38 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e8a9ac1e8cab6ec3c0570c58d5baba93bdd85eeb34cdfdc28654939b1ff2`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f8cfef89ac886748a3d9e1075e8a8cced4983b75d2faf8a370b44f7f342f6`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177fa8ec8ade6f5204a8dbe7333f9bc3aeb72d0f896748f8dfabe324e56e1b4`  
		Last Modified: Tue, 15 Nov 2016 00:25:58 GMT  
		Size: 94.6 MB (94627410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b621bb0a8f9a25ee11778b69682882029df0a188fbfdc9880848d7cc69999`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:787406b2846d3e0c38c45b5850dffc0a575f8858bb26e914646463d58d98b13f
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 GB (4935556964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f65c0672b774c32027ea114bcb600ab6947e08a2f255f80932a69881219e480`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:02:06 GMT
ENV GIT_VERSION=2.9.2
# Tue, 15 Nov 2016 00:02:11 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Tue, 15 Nov 2016 00:02:14 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Tue, 15 Nov 2016 00:02:18 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Tue, 15 Nov 2016 00:07:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:07:20 GMT
ENV GOPATH=C:\gopath
# Tue, 15 Nov 2016 00:07:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Nov 2016 00:20:28 GMT
ENV GOLANG_VERSION=1.7.3
# Tue, 15 Nov 2016 00:20:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Tue, 15 Nov 2016 00:20:34 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Tue, 15 Nov 2016 00:25:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:25:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7645d28b3cd95ddc8d13c2c6f12cdc918fa8c5d77d0a442aa3017d22bd29a0`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052537bc8cab14208c216f9848a018d5dfbf85df84eaabe1ae6383db468edab3`  
		Last Modified: Tue, 15 Nov 2016 00:13:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb53e693cfe38af4908f4cc9e6e230748da62e773d68aef7f841cbe77420a`  
		Last Modified: Tue, 15 Nov 2016 00:13:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead631093fea13def778a37d8e80b33c1e401a28049dcbe6285c6744cd11307d`  
		Last Modified: Tue, 15 Nov 2016 00:13:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c951cf6a3eb51ccc4b014dd2c3e1f544f7b70348b2216491ed6069e6ec4590f`  
		Last Modified: Tue, 15 Nov 2016 00:13:54 GMT  
		Size: 215.4 MB (215375768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb107879204c0724de0afd90c998d9dd4875f59367262c46febd3e299f4567`  
		Last Modified: Tue, 15 Nov 2016 00:12:59 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1560a26c42007b654b8230dfb9aefab7407fd118d2b92431c2ac028d46434b3c`  
		Last Modified: Tue, 15 Nov 2016 00:13:07 GMT  
		Size: 8.9 MB (8865167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b89e3593e7c0c29a5c6ed36a1392024f223e8e567fedf8e7e9380c6be84ab6e`  
		Last Modified: Tue, 15 Nov 2016 00:25:38 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e8a9ac1e8cab6ec3c0570c58d5baba93bdd85eeb34cdfdc28654939b1ff2`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f8cfef89ac886748a3d9e1075e8a8cced4983b75d2faf8a370b44f7f342f6`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177fa8ec8ade6f5204a8dbe7333f9bc3aeb72d0f896748f8dfabe324e56e1b4`  
		Last Modified: Tue, 15 Nov 2016 00:25:58 GMT  
		Size: 94.6 MB (94627410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b621bb0a8f9a25ee11778b69682882029df0a188fbfdc9880848d7cc69999`  
		Last Modified: Tue, 15 Nov 2016 00:25:36 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.3-nanoserver`

```console
$ docker pull golang@sha256:6a0a6a5f9b7966c8e47bd929fe7263a222c3c298e2d94fb6ef7402f2e160cd7e
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b1bd5027ee5c46c1b7ec7a2e5ff391ff8b65ee7ec706cdf50a56cef0828117`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Oct 2016 22:00:57 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 22:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 22:01:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:05:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:05:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94b4ce7ac4c7c7d4ed75ac2bd9359a87204ad2d5a909759d8e77953874d8e7c2`  
		Size: 56.4 MB (56434068 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:12ba288c0d1d424b4832b58c8d542b2b1cc0c8ed873e0f4805a83f705f351eb7`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aabf8dca125e29a1422adc206ada519107e390cdc61e481410b7fe3f75538b`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844df32288b9b5de39acf93cc8fd2e0d5662b9b8cefc58c9d5382fc2b6d16d0`  
		Last Modified: Tue, 18 Oct 2016 21:03:46 GMT  
		Size: 819.6 KB (819629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5158e3477b73253cb99d39d049a107b7afa8ddd39f3cc59a28ccbb12d5f477d4`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5e2bb6eccbca69bea5a98ad6568405b210c37cebdd78f5fdb66cfaeea9bb54`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd062b023f999eca0b5d53eea246a998768a2b3419652b492f11a860cb835e3`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042fad0011efd612ff284853805f358d60146c1c42cb824c5f2d27a5d843e8`  
		Last Modified: Wed, 19 Oct 2016 22:06:23 GMT  
		Size: 90.3 MB (90267137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6024ecc84e3f3810e40761f8eac8e8db0c60b98d1a26bf95f992068ac24ca1`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:6a0a6a5f9b7966c8e47bd929fe7263a222c3c298e2d94fb6ef7402f2e160cd7e
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b1bd5027ee5c46c1b7ec7a2e5ff391ff8b65ee7ec706cdf50a56cef0828117`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Oct 2016 22:00:57 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 22:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 22:01:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:05:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:05:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94b4ce7ac4c7c7d4ed75ac2bd9359a87204ad2d5a909759d8e77953874d8e7c2`  
		Size: 56.4 MB (56434068 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:12ba288c0d1d424b4832b58c8d542b2b1cc0c8ed873e0f4805a83f705f351eb7`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aabf8dca125e29a1422adc206ada519107e390cdc61e481410b7fe3f75538b`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844df32288b9b5de39acf93cc8fd2e0d5662b9b8cefc58c9d5382fc2b6d16d0`  
		Last Modified: Tue, 18 Oct 2016 21:03:46 GMT  
		Size: 819.6 KB (819629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5158e3477b73253cb99d39d049a107b7afa8ddd39f3cc59a28ccbb12d5f477d4`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5e2bb6eccbca69bea5a98ad6568405b210c37cebdd78f5fdb66cfaeea9bb54`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd062b023f999eca0b5d53eea246a998768a2b3419652b492f11a860cb835e3`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042fad0011efd612ff284853805f358d60146c1c42cb824c5f2d27a5d843e8`  
		Last Modified: Wed, 19 Oct 2016 22:06:23 GMT  
		Size: 90.3 MB (90267137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6024ecc84e3f3810e40761f8eac8e8db0c60b98d1a26bf95f992068ac24ca1`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6a0a6a5f9b7966c8e47bd929fe7263a222c3c298e2d94fb6ef7402f2e160cd7e
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b1bd5027ee5c46c1b7ec7a2e5ff391ff8b65ee7ec706cdf50a56cef0828117`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Oct 2016 22:00:57 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 22:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 22:01:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:05:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:05:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94b4ce7ac4c7c7d4ed75ac2bd9359a87204ad2d5a909759d8e77953874d8e7c2`  
		Size: 56.4 MB (56434068 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:12ba288c0d1d424b4832b58c8d542b2b1cc0c8ed873e0f4805a83f705f351eb7`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aabf8dca125e29a1422adc206ada519107e390cdc61e481410b7fe3f75538b`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844df32288b9b5de39acf93cc8fd2e0d5662b9b8cefc58c9d5382fc2b6d16d0`  
		Last Modified: Tue, 18 Oct 2016 21:03:46 GMT  
		Size: 819.6 KB (819629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5158e3477b73253cb99d39d049a107b7afa8ddd39f3cc59a28ccbb12d5f477d4`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5e2bb6eccbca69bea5a98ad6568405b210c37cebdd78f5fdb66cfaeea9bb54`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd062b023f999eca0b5d53eea246a998768a2b3419652b492f11a860cb835e3`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042fad0011efd612ff284853805f358d60146c1c42cb824c5f2d27a5d843e8`  
		Last Modified: Wed, 19 Oct 2016 22:06:23 GMT  
		Size: 90.3 MB (90267137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6024ecc84e3f3810e40761f8eac8e8db0c60b98d1a26bf95f992068ac24ca1`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:6a0a6a5f9b7966c8e47bd929fe7263a222c3c298e2d94fb6ef7402f2e160cd7e
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b1bd5027ee5c46c1b7ec7a2e5ff391ff8b65ee7ec706cdf50a56cef0828117`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Oct 2016 20:47:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Oct 2016 20:48:00 GMT
ENV GOPATH=C:\gopath
# Tue, 18 Oct 2016 20:48:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 19 Oct 2016 22:00:57 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 22:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.windows-amd64.zip
# Wed, 19 Oct 2016 22:01:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=9fe41313b97e2a6a703f5ae22938c7d9ac4336a128b522376c224ba97e8c7f01
# Wed, 19 Oct 2016 22:05:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 19 Oct 2016 22:05:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5496abde368a3dd39999745bf998c877ddc6a390a943bc3fd99ffaabf728ed88`  
		Size: 242.6 MB (242646586 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94b4ce7ac4c7c7d4ed75ac2bd9359a87204ad2d5a909759d8e77953874d8e7c2`  
		Size: 56.4 MB (56434068 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:12ba288c0d1d424b4832b58c8d542b2b1cc0c8ed873e0f4805a83f705f351eb7`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aabf8dca125e29a1422adc206ada519107e390cdc61e481410b7fe3f75538b`  
		Last Modified: Tue, 18 Oct 2016 21:03:45 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3844df32288b9b5de39acf93cc8fd2e0d5662b9b8cefc58c9d5382fc2b6d16d0`  
		Last Modified: Tue, 18 Oct 2016 21:03:46 GMT  
		Size: 819.6 KB (819629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5158e3477b73253cb99d39d049a107b7afa8ddd39f3cc59a28ccbb12d5f477d4`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5e2bb6eccbca69bea5a98ad6568405b210c37cebdd78f5fdb66cfaeea9bb54`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd062b023f999eca0b5d53eea246a998768a2b3419652b492f11a860cb835e3`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042fad0011efd612ff284853805f358d60146c1c42cb824c5f2d27a5d843e8`  
		Last Modified: Wed, 19 Oct 2016 22:06:23 GMT  
		Size: 90.3 MB (90267137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6024ecc84e3f3810e40761f8eac8e8db0c60b98d1a26bf95f992068ac24ca1`  
		Last Modified: Wed, 19 Oct 2016 22:06:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
