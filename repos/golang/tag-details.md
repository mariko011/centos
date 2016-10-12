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
-	[`golang:1.7.1`](#golang171)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.1-onbuild`](#golang171-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.1-wheezy`](#golang171-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.1-alpine`](#golang171-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.1-windowsservercore`](#golang171-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)

## `golang:1.6.3`

```console
$ docker pull golang@sha256:014080d359f01e28de6b102ba5053e698c870bf74fcbcb5d41602b72869b017c
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256900586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938ee35186edf0ad777f05dbb9bc72988c547a87c90c09aefaa59978feaa146e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:25 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:45:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:45:40 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:45:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:45:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:45:42 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:45:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f856402c0c199b2e61bb93f0e873769e649f34dcc76e10b7605ff436361619a`  
		Last Modified: Wed, 28 Sep 2016 20:47:43 GMT  
		Size: 84.9 MB (84869296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e61be84fee7055d7e89730dd022d42c049f74a736f9af0610b6228131d7a8`  
		Last Modified: Wed, 28 Sep 2016 20:47:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a748c7fcbcd220493c0f40bcbbfda43d4831bb2ff187166853c0e95acc090c83`  
		Last Modified: Wed, 28 Sep 2016 20:47:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:014080d359f01e28de6b102ba5053e698c870bf74fcbcb5d41602b72869b017c
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256900586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938ee35186edf0ad777f05dbb9bc72988c547a87c90c09aefaa59978feaa146e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:25 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:45:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:45:40 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:45:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:45:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:45:42 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:45:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f856402c0c199b2e61bb93f0e873769e649f34dcc76e10b7605ff436361619a`  
		Last Modified: Wed, 28 Sep 2016 20:47:43 GMT  
		Size: 84.9 MB (84869296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e61be84fee7055d7e89730dd022d42c049f74a736f9af0610b6228131d7a8`  
		Last Modified: Wed, 28 Sep 2016 20:47:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a748c7fcbcd220493c0f40bcbbfda43d4831bb2ff187166853c0e95acc090c83`  
		Last Modified: Wed, 28 Sep 2016 20:47:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-onbuild`

```console
$ docker pull golang@sha256:52fb3fc6ccad3d309f9f668984fa0ab8c07c0bb6de4a62c24a3800900e8435dc
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256900718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f8d1549de89e79e788132c15978142c9e50ee2c053906e420b59b19540124d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:25 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:45:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:45:40 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:45:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:45:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:45:42 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:45:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:45:44 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:45:44 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:45:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:45:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:45:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:45:50 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f856402c0c199b2e61bb93f0e873769e649f34dcc76e10b7605ff436361619a`  
		Last Modified: Wed, 28 Sep 2016 20:47:43 GMT  
		Size: 84.9 MB (84869296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e61be84fee7055d7e89730dd022d42c049f74a736f9af0610b6228131d7a8`  
		Last Modified: Wed, 28 Sep 2016 20:47:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a748c7fcbcd220493c0f40bcbbfda43d4831bb2ff187166853c0e95acc090c83`  
		Last Modified: Wed, 28 Sep 2016 20:47:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1876e2a785b569f60f1963a7b5cbd6a82215bcf4d8cc3485ad1ef3b0fd1ca42`  
		Last Modified: Wed, 28 Sep 2016 20:48:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:52fb3fc6ccad3d309f9f668984fa0ab8c07c0bb6de4a62c24a3800900e8435dc
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256900718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f8d1549de89e79e788132c15978142c9e50ee2c053906e420b59b19540124d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:25 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:45:30 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:45:40 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:45:40 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:45:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:45:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:45:42 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:45:42 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:45:44 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:45:44 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:45:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:45:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:45:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:45:50 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f856402c0c199b2e61bb93f0e873769e649f34dcc76e10b7605ff436361619a`  
		Last Modified: Wed, 28 Sep 2016 20:47:43 GMT  
		Size: 84.9 MB (84869296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e61be84fee7055d7e89730dd022d42c049f74a736f9af0610b6228131d7a8`  
		Last Modified: Wed, 28 Sep 2016 20:47:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a748c7fcbcd220493c0f40bcbbfda43d4831bb2ff187166853c0e95acc090c83`  
		Last Modified: Wed, 28 Sep 2016 20:47:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1876e2a785b569f60f1963a7b5cbd6a82215bcf4d8cc3485ad1ef3b0fd1ca42`  
		Last Modified: Wed, 28 Sep 2016 20:48:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-wheezy`

```console
$ docker pull golang@sha256:6b880c31cbb9180b4353908587b19204da2b696401db74c062368dfe9a6d5158
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202626979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb52b23287cbc23014fe5062c62c7513bd40b2c22ab7f43cb962699547abe236`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:10 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:46:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:46:21 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:22 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:23 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c6e46472d9db61454cfa1f09415507732fc83f91cce1654a4452c4b976e67d`  
		Last Modified: Wed, 28 Sep 2016 20:49:20 GMT  
		Size: 84.9 MB (84869330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23e6eb3b58b7d462866099e1482aa07c8af06fec486ab595d23b6ceeac68baa`  
		Last Modified: Wed, 28 Sep 2016 20:48:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fa87bf9ee0b6c3dbc0ae0aab55abe4daf154caad800c1bf196f23cd4573e0a`  
		Last Modified: Wed, 28 Sep 2016 20:48:33 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:6b880c31cbb9180b4353908587b19204da2b696401db74c062368dfe9a6d5158
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202626979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb52b23287cbc23014fe5062c62c7513bd40b2c22ab7f43cb962699547abe236`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:10 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 28 Sep 2016 20:46:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Wed, 28 Sep 2016 20:46:21 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:22 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:23 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:24 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c6e46472d9db61454cfa1f09415507732fc83f91cce1654a4452c4b976e67d`  
		Last Modified: Wed, 28 Sep 2016 20:49:20 GMT  
		Size: 84.9 MB (84869330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23e6eb3b58b7d462866099e1482aa07c8af06fec486ab595d23b6ceeac68baa`  
		Last Modified: Wed, 28 Sep 2016 20:48:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fa87bf9ee0b6c3dbc0ae0aab55abe4daf154caad800c1bf196f23cd4573e0a`  
		Last Modified: Wed, 28 Sep 2016 20:48:33 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-alpine`

```console
$ docker pull golang@sha256:12b8f518fe8b7578293a326d7ab475fa3ead2afdee66928e54443f1a23da710d
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e2cb0f17a90a9219d13b6b4c16a0ad21dd33ed300cb547d4363399e48dff4f`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:48:58 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Fri, 23 Sep 2016 16:49:00 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Fri, 23 Sep 2016 16:49:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:49:53 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:49:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:49:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:49:55 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:49:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a78dab547df8ac51ea4f79e4cd929537952959d738ab1dfc7857955c8d6ae7`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7295bf09b3dac6807c846b0151d89325acf31b52bed8467517650a488f6e96`  
		Last Modified: Fri, 23 Sep 2016 16:50:27 GMT  
		Size: 69.5 MB (69499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa31e83efef7743385a5effb3ecd3395139f86e57c2106af4ea8c6d573b23981`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8d3a99367e4efb69d2c7925cceddc0237c634bb399af1bb3a87098198a694a`  
		Last Modified: Fri, 23 Sep 2016 16:50:08 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:12b8f518fe8b7578293a326d7ab475fa3ead2afdee66928e54443f1a23da710d
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e2cb0f17a90a9219d13b6b4c16a0ad21dd33ed300cb547d4363399e48dff4f`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:48:58 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Fri, 23 Sep 2016 16:49:00 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Fri, 23 Sep 2016 16:49:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:49:53 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:49:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:49:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:49:55 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:49:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a78dab547df8ac51ea4f79e4cd929537952959d738ab1dfc7857955c8d6ae7`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7295bf09b3dac6807c846b0151d89325acf31b52bed8467517650a488f6e96`  
		Last Modified: Fri, 23 Sep 2016 16:50:27 GMT  
		Size: 69.5 MB (69499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa31e83efef7743385a5effb3ecd3395139f86e57c2106af4ea8c6d573b23981`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8d3a99367e4efb69d2c7925cceddc0237c634bb399af1bb3a87098198a694a`  
		Last Modified: Fri, 23 Sep 2016 16:50:08 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-windowsservercore`

```console
$ docker pull golang@sha256:33699a2f69b32a79c30985201b601ff1802c38abc578b03dd36360de3c59ad4b
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4054802828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b95b0d6b8db99f8a3ce925fd61f27b8c53cbb2b50933658cd36e18e2b2f06b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:29:16 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 12 Oct 2016 18:29:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Wed, 12 Oct 2016 18:29:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Wed, 12 Oct 2016 18:33:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:33:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b9847efb88116abd4364e7c0eb9ff3ae91040fdd9e54b357ca4d484543d4c0`  
		Last Modified: Wed, 12 Oct 2016 18:39:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907fdfe0ceec1b1122ccb2cd3842e98c83f20df12df3a0b2a349c6b71b19096`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450133a0533aa2c5103af001c9c7e49d7aff9e1f2414bbdc68587204de7598f`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5162c450f99210b90e6a31f596e2b783e5487bdf80ac1da0684c26d667bf7df8`  
		Last Modified: Wed, 12 Oct 2016 18:39:51 GMT  
		Size: 97.3 MB (97321261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637dde7feea37c2eb16e95fc32cbb8d65f219a971000b66e5e9277638e1cec8`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:33699a2f69b32a79c30985201b601ff1802c38abc578b03dd36360de3c59ad4b
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4054802828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b95b0d6b8db99f8a3ce925fd61f27b8c53cbb2b50933658cd36e18e2b2f06b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:29:16 GMT
ENV GOLANG_VERSION=1.6.3
# Wed, 12 Oct 2016 18:29:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Wed, 12 Oct 2016 18:29:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Wed, 12 Oct 2016 18:33:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:33:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b9847efb88116abd4364e7c0eb9ff3ae91040fdd9e54b357ca4d484543d4c0`  
		Last Modified: Wed, 12 Oct 2016 18:39:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907fdfe0ceec1b1122ccb2cd3842e98c83f20df12df3a0b2a349c6b71b19096`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450133a0533aa2c5103af001c9c7e49d7aff9e1f2414bbdc68587204de7598f`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5162c450f99210b90e6a31f596e2b783e5487bdf80ac1da0684c26d667bf7df8`  
		Last Modified: Wed, 12 Oct 2016 18:39:51 GMT  
		Size: 97.3 MB (97321261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637dde7feea37c2eb16e95fc32cbb8d65f219a971000b66e5e9277638e1cec8`  
		Last Modified: Wed, 12 Oct 2016 18:39:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1`

```console
$ docker pull golang@sha256:974f7027c0eb927e28a99a41e68604398d48e542e4e5c7a710dec24066c8a451
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47734a1408b760f42d5ebb3c91382e5858d5c02bf2f5f93452949f25ae751189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:974f7027c0eb927e28a99a41e68604398d48e542e4e5c7a710dec24066c8a451
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47734a1408b760f42d5ebb3c91382e5858d5c02bf2f5f93452949f25ae751189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:974f7027c0eb927e28a99a41e68604398d48e542e4e5c7a710dec24066c8a451
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47734a1408b760f42d5ebb3c91382e5858d5c02bf2f5f93452949f25ae751189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:974f7027c0eb927e28a99a41e68604398d48e542e4e5c7a710dec24066c8a451
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47734a1408b760f42d5ebb3c91382e5858d5c02bf2f5f93452949f25ae751189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-onbuild`

```console
$ docker pull golang@sha256:22fb11e3266fcd4f1439c669863245e7ac8f79736e9f35656457e96ac0185184
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087c714ab437d5d01ac0616b8e32e29511ea6f0c4f7b49bca65a32b96de4bbdb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:46:39 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:46:39 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:46:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:46:44 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b92bb7a7fc63dbcaa91024872adf00edebf28d45f5f15df92d308ca3ce2b6e`  
		Last Modified: Wed, 28 Sep 2016 20:51:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:22fb11e3266fcd4f1439c669863245e7ac8f79736e9f35656457e96ac0185184
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087c714ab437d5d01ac0616b8e32e29511ea6f0c4f7b49bca65a32b96de4bbdb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:46:39 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:46:39 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:46:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:46:44 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b92bb7a7fc63dbcaa91024872adf00edebf28d45f5f15df92d308ca3ce2b6e`  
		Last Modified: Wed, 28 Sep 2016 20:51:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:22fb11e3266fcd4f1439c669863245e7ac8f79736e9f35656457e96ac0185184
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087c714ab437d5d01ac0616b8e32e29511ea6f0c4f7b49bca65a32b96de4bbdb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:46:39 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:46:39 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:46:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:46:44 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b92bb7a7fc63dbcaa91024872adf00edebf28d45f5f15df92d308ca3ce2b6e`  
		Last Modified: Wed, 28 Sep 2016 20:51:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:22fb11e3266fcd4f1439c669863245e7ac8f79736e9f35656457e96ac0185184
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253660477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087c714ab437d5d01ac0616b8e32e29511ea6f0c4f7b49bca65a32b96de4bbdb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:45:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:24 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:25 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:34 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:35 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:37 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:46:39 GMT
RUN mkdir -p /go/src/app
# Wed, 28 Sep 2016 20:46:39 GMT
WORKDIR /go/src/app
# Wed, 28 Sep 2016 20:46:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 28 Sep 2016 20:46:44 GMT
ONBUILD COPY . /go/src/app
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper download
# Wed, 28 Sep 2016 20:46:45 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00075397a1ec5875797c7916e5e28e4cf9e9212b9e129f3748e35018de80a0d0`  
		Last Modified: Wed, 28 Sep 2016 20:47:22 GMT  
		Size: 59.7 MB (59651226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cf1ce58d6e90f7624f5c64a14d3438ca977be21b63898e4845c5a7b9c8bd9`  
		Last Modified: Wed, 28 Sep 2016 20:50:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741206fcd3b82fdd13df155e2a584e9c75b831b3265eec5f9c63adf386d5ee2c`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369d69bdd76d578056ecf7b3580ff166ad1037fb3cb48138cf984ca8582367f0`  
		Last Modified: Wed, 28 Sep 2016 20:50:08 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b92bb7a7fc63dbcaa91024872adf00edebf28d45f5f15df92d308ca3ce2b6e`  
		Last Modified: Wed, 28 Sep 2016 20:51:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-wheezy`

```console
$ docker pull golang@sha256:dfcefb67b1c9a7cbd0f9f74490bcee0a841ef5f5e5ce43c52fa13d81a385d7ac
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199386702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac068e84d8cea83e6fa5e43533f63aa2c21c4b55b63eb168565ee2627d6d932`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:55 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:56 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:57 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b89f050c31245567641227eeeef8e65c8ad392c08d934065d5d8b50724bca62`  
		Last Modified: Wed, 28 Sep 2016 20:52:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc157e9850b6f468964493a8e6bb5c2d1d20e5d2222d15a2ad098a3aa0b9495e`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03417527d549641985a4521db19f1a8a48f7e048fb9b102eafe99c2ffb855e5`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:dfcefb67b1c9a7cbd0f9f74490bcee0a841ef5f5e5ce43c52fa13d81a385d7ac
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199386702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac068e84d8cea83e6fa5e43533f63aa2c21c4b55b63eb168565ee2627d6d932`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:55 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:56 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:57 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b89f050c31245567641227eeeef8e65c8ad392c08d934065d5d8b50724bca62`  
		Last Modified: Wed, 28 Sep 2016 20:52:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc157e9850b6f468964493a8e6bb5c2d1d20e5d2222d15a2ad098a3aa0b9495e`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03417527d549641985a4521db19f1a8a48f7e048fb9b102eafe99c2ffb855e5`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:dfcefb67b1c9a7cbd0f9f74490bcee0a841ef5f5e5ce43c52fa13d81a385d7ac
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199386702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac068e84d8cea83e6fa5e43533f63aa2c21c4b55b63eb168565ee2627d6d932`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:55 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:56 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:57 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b89f050c31245567641227eeeef8e65c8ad392c08d934065d5d8b50724bca62`  
		Last Modified: Wed, 28 Sep 2016 20:52:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc157e9850b6f468964493a8e6bb5c2d1d20e5d2222d15a2ad098a3aa0b9495e`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03417527d549641985a4521db19f1a8a48f7e048fb9b102eafe99c2ffb855e5`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:dfcefb67b1c9a7cbd0f9f74490bcee0a841ef5f5e5ce43c52fa13d81a385d7ac
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199386702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac068e84d8cea83e6fa5e43533f63aa2c21c4b55b63eb168565ee2627d6d932`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 28 Sep 2016 20:46:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 28 Sep 2016 20:46:55 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 28 Sep 2016 20:46:56 GMT
ENV GOPATH=/go
# Wed, 28 Sep 2016 20:46:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:46:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 28 Sep 2016 20:46:57 GMT
WORKDIR /go
# Wed, 28 Sep 2016 20:46:58 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b89f050c31245567641227eeeef8e65c8ad392c08d934065d5d8b50724bca62`  
		Last Modified: Wed, 28 Sep 2016 20:52:34 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc157e9850b6f468964493a8e6bb5c2d1d20e5d2222d15a2ad098a3aa0b9495e`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03417527d549641985a4521db19f1a8a48f7e048fb9b102eafe99c2ffb855e5`  
		Last Modified: Wed, 28 Sep 2016 20:52:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-windowsservercore`

```console
$ docker pull golang@sha256:4b23350427581c9155dba82bd1d5e8df7f2bf977c74e4edafb8571cc488a71ce
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4051915885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900a9e2da6c3b2452cd0d067c98a0ef349f4654aea9d01d1c325f5cf2364d090`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:33:34 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 12 Oct 2016 18:33:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 12 Oct 2016 18:33:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 12 Oct 2016 18:37:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:37:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf1399db22ec5b208eae5a0f3440ec8603be8b4ec456bedcd62aeaef3b7a305`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a3d802f7520dafb52d0bc17424728d132e16f89a7ef573dbc574a8d4c62ffc`  
		Last Modified: Wed, 12 Oct 2016 18:41:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063f4b4bfa2fd3fa51b2b542696180be64187d76b1587be66478c5cc0dbfedc6`  
		Last Modified: Wed, 12 Oct 2016 18:41:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e38b9ab9132f5cd4380ac33a2f24dee42724ce430aef633b65de23f69eaf98`  
		Last Modified: Wed, 12 Oct 2016 18:43:33 GMT  
		Size: 94.4 MB (94434322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e23268aacab3edc82608e444eaeffe10283963c74a4bd57876fbc84f4085927`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:4b23350427581c9155dba82bd1d5e8df7f2bf977c74e4edafb8571cc488a71ce
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4051915885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900a9e2da6c3b2452cd0d067c98a0ef349f4654aea9d01d1c325f5cf2364d090`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:33:34 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 12 Oct 2016 18:33:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 12 Oct 2016 18:33:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 12 Oct 2016 18:37:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:37:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf1399db22ec5b208eae5a0f3440ec8603be8b4ec456bedcd62aeaef3b7a305`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a3d802f7520dafb52d0bc17424728d132e16f89a7ef573dbc574a8d4c62ffc`  
		Last Modified: Wed, 12 Oct 2016 18:41:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063f4b4bfa2fd3fa51b2b542696180be64187d76b1587be66478c5cc0dbfedc6`  
		Last Modified: Wed, 12 Oct 2016 18:41:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e38b9ab9132f5cd4380ac33a2f24dee42724ce430aef633b65de23f69eaf98`  
		Last Modified: Wed, 12 Oct 2016 18:43:33 GMT  
		Size: 94.4 MB (94434322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e23268aacab3edc82608e444eaeffe10283963c74a4bd57876fbc84f4085927`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:4b23350427581c9155dba82bd1d5e8df7f2bf977c74e4edafb8571cc488a71ce
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4051915885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900a9e2da6c3b2452cd0d067c98a0ef349f4654aea9d01d1c325f5cf2364d090`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:33:34 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 12 Oct 2016 18:33:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 12 Oct 2016 18:33:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 12 Oct 2016 18:37:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:37:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf1399db22ec5b208eae5a0f3440ec8603be8b4ec456bedcd62aeaef3b7a305`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a3d802f7520dafb52d0bc17424728d132e16f89a7ef573dbc574a8d4c62ffc`  
		Last Modified: Wed, 12 Oct 2016 18:41:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063f4b4bfa2fd3fa51b2b542696180be64187d76b1587be66478c5cc0dbfedc6`  
		Last Modified: Wed, 12 Oct 2016 18:41:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e38b9ab9132f5cd4380ac33a2f24dee42724ce430aef633b65de23f69eaf98`  
		Last Modified: Wed, 12 Oct 2016 18:43:33 GMT  
		Size: 94.4 MB (94434322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e23268aacab3edc82608e444eaeffe10283963c74a4bd57876fbc84f4085927`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:4b23350427581c9155dba82bd1d5e8df7f2bf977c74e4edafb8571cc488a71ce
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4051915885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900a9e2da6c3b2452cd0d067c98a0ef349f4654aea9d01d1c325f5cf2364d090`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:24:13 GMT
ENV GIT_VERSION=2.9.2
# Wed, 12 Oct 2016 18:24:19 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Wed, 12 Oct 2016 18:24:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Wed, 12 Oct 2016 18:24:27 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Wed, 12 Oct 2016 18:28:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:28:50 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Oct 2016 18:29:12 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:33:34 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 12 Oct 2016 18:33:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 12 Oct 2016 18:33:41 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 12 Oct 2016 18:37:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:37:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee9ba41e044357d3e867c68ba056c4f5dd25a3e08809610f8d164b83fdfe5`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a14f2e77feb9a9a6477834a7c06f70f138628756794f88539e5bccb004060`  
		Last Modified: Wed, 12 Oct 2016 18:39:44 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5d4d03a6cf8a5cf190d5745cf551e5cf1e72b9aa4d809c7b3651346631acd`  
		Last Modified: Wed, 12 Oct 2016 18:39:42 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95cffce40e00618ac9b325aa82848af7c86ef7afcab887ce7f698b10893e993`  
		Last Modified: Wed, 12 Oct 2016 18:39:34 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8a732024beed7c2fb67a33cd777bf205d7b80d1f1b7908cce39bc5063b741a`  
		Last Modified: Wed, 12 Oct 2016 18:41:35 GMT  
		Size: 215.3 MB (215345445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902082ae094c476139094d4818a0da1e1ed0fa25512a7ec0a3ca5a09da12a82`  
		Last Modified: Wed, 12 Oct 2016 18:39:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af7a933ca9d246e7d3da20e960dc0f2bb84cc72964a3d489642eeae97325ae9`  
		Last Modified: Wed, 12 Oct 2016 18:39:48 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf1399db22ec5b208eae5a0f3440ec8603be8b4ec456bedcd62aeaef3b7a305`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a3d802f7520dafb52d0bc17424728d132e16f89a7ef573dbc574a8d4c62ffc`  
		Last Modified: Wed, 12 Oct 2016 18:41:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063f4b4bfa2fd3fa51b2b542696180be64187d76b1587be66478c5cc0dbfedc6`  
		Last Modified: Wed, 12 Oct 2016 18:41:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e38b9ab9132f5cd4380ac33a2f24dee42724ce430aef633b65de23f69eaf98`  
		Last Modified: Wed, 12 Oct 2016 18:43:33 GMT  
		Size: 94.4 MB (94434322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e23268aacab3edc82608e444eaeffe10283963c74a4bd57876fbc84f4085927`  
		Last Modified: Wed, 12 Oct 2016 18:41:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
