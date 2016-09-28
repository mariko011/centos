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
$ docker pull golang@sha256:c9bab07d3dd2b64f0173fa4e5018097a960b5f9c919a5271eae2418477634a1d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3784047918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27af2ae7b93b6318556028495c550b530cc24d6c6d3bf270e2a010821818a6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Aug 2016 23:52:46 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 12 Aug 2016 23:52:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Fri, 12 Aug 2016 23:52:52 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Fri, 12 Aug 2016 23:57:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:57:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1660cb70ff7044778f5bb23312723c7300a3e00a851ff2b530315747103c7245`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5742033e60baa1364a2cdd957f6061fdaef7abd51cbe5eac8e5414564a7da417`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f57a7d2524daad53adb069be9f9485d038809fc393c83af58a16880787adb`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f9d4477d9e6b931411dad018ac1a0a713c952a8bb51763f44b9c62fd425bab`  
		Last Modified: Tue, 16 Aug 2016 16:16:56 GMT  
		Size: 96.1 MB (96146274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52289dc770d3b6da4f2c1db2cab8052677149d7d86e3f66cdc528a8dfbba467d`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:c9bab07d3dd2b64f0173fa4e5018097a960b5f9c919a5271eae2418477634a1d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3784047918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27af2ae7b93b6318556028495c550b530cc24d6c6d3bf270e2a010821818a6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Aug 2016 23:52:46 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 12 Aug 2016 23:52:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Fri, 12 Aug 2016 23:52:52 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Fri, 12 Aug 2016 23:57:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:57:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1660cb70ff7044778f5bb23312723c7300a3e00a851ff2b530315747103c7245`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5742033e60baa1364a2cdd957f6061fdaef7abd51cbe5eac8e5414564a7da417`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f57a7d2524daad53adb069be9f9485d038809fc393c83af58a16880787adb`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f9d4477d9e6b931411dad018ac1a0a713c952a8bb51763f44b9c62fd425bab`  
		Last Modified: Tue, 16 Aug 2016 16:16:56 GMT  
		Size: 96.1 MB (96146274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52289dc770d3b6da4f2c1db2cab8052677149d7d86e3f66cdc528a8dfbba467d`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1342 bytes)  
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
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
