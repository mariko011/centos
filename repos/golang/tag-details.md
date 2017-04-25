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
$ docker pull golang@sha256:14e9ad0e6a2208e9abd130b3067363656ff4a417a9cbd513e657fbdc4e57146a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78dec2b08f11a9d709c3d559a36e503029de4f53d2d43e7da42da7f36eb1ac75`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:51 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 22:58:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:58:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 22:59:02 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:59:18 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:59:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:59:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:59:36 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:59:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdb7fef1ab744c6efcc2f52e9860f03715343cbcfb4fc5d4ca9cd4f198236c9`  
		Last Modified: Tue, 25 Apr 2017 17:51:50 GMT  
		Size: 84.1 MB (84079658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e6bb2180caf69998216ef91a3bdd473c72efaf123b8ffc5fad25aaa681b5`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dd967e8bca1398bb659ae8b7dc004e469796e64492029517e6e7cb89ad59a0`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:14e9ad0e6a2208e9abd130b3067363656ff4a417a9cbd513e657fbdc4e57146a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78dec2b08f11a9d709c3d559a36e503029de4f53d2d43e7da42da7f36eb1ac75`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:51 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 22:58:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:58:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 22:59:02 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:59:18 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:59:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:59:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:59:36 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:59:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdb7fef1ab744c6efcc2f52e9860f03715343cbcfb4fc5d4ca9cd4f198236c9`  
		Last Modified: Tue, 25 Apr 2017 17:51:50 GMT  
		Size: 84.1 MB (84079658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e6bb2180caf69998216ef91a3bdd473c72efaf123b8ffc5fad25aaa681b5`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dd967e8bca1398bb659ae8b7dc004e469796e64492029517e6e7cb89ad59a0`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-onbuild`

```console
$ docker pull golang@sha256:f9afa66ef588145c9a2af03867e4eea0c3b391e86aec6820e7c8fd67413b8e30
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3743991465e26ac514592dfde7a6874a2959d4da3581617ff434f278b11c6d9`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:51 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 22:58:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:58:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 22:59:02 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:59:18 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:59:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:59:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:59:36 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:59:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:00:10 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 23:00:10 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 23:00:27 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 23:00:28 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 23:00:28 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 23:00:29 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdb7fef1ab744c6efcc2f52e9860f03715343cbcfb4fc5d4ca9cd4f198236c9`  
		Last Modified: Tue, 25 Apr 2017 17:51:50 GMT  
		Size: 84.1 MB (84079658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e6bb2180caf69998216ef91a3bdd473c72efaf123b8ffc5fad25aaa681b5`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dd967e8bca1398bb659ae8b7dc004e469796e64492029517e6e7cb89ad59a0`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fce6014beb6319faaa11c3e6bfe606d73cc442c130ac51262283ca0c258577`  
		Last Modified: Tue, 25 Apr 2017 17:52:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:f9afa66ef588145c9a2af03867e4eea0c3b391e86aec6820e7c8fd67413b8e30
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3743991465e26ac514592dfde7a6874a2959d4da3581617ff434f278b11c6d9`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:51 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 22:58:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:58:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 22:59:02 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:59:18 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:59:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:59:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:59:36 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:59:37 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:00:10 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 23:00:10 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 23:00:27 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 23:00:28 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 23:00:28 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 23:00:29 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdb7fef1ab744c6efcc2f52e9860f03715343cbcfb4fc5d4ca9cd4f198236c9`  
		Last Modified: Tue, 25 Apr 2017 17:51:50 GMT  
		Size: 84.1 MB (84079658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e6bb2180caf69998216ef91a3bdd473c72efaf123b8ffc5fad25aaa681b5`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dd967e8bca1398bb659ae8b7dc004e469796e64492029517e6e7cb89ad59a0`  
		Last Modified: Tue, 25 Apr 2017 17:51:29 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fce6014beb6319faaa11c3e6bfe606d73cc442c130ac51262283ca0c258577`  
		Last Modified: Tue, 25 Apr 2017 17:52:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-wheezy`

```console
$ docker pull golang@sha256:ccc1c2556981e4f0b2bca9c0f9727e90270c022f813d11044e3b300e8f2099e0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496984c836ae0e35e42ebf4eb0e5034fb92bdbd63b188965bf1133da7bb42fbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:00:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:01:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:01:35 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 23:01:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 23:01:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 23:01:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 23:01:55 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 23:01:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:01:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 23:02:13 GMT
WORKDIR /go
# Mon, 24 Apr 2017 23:02:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d844091a3ba3d7bd7708b0f781a9fcae97c8d5ebfa2b8d04a2296ea91ff73eed`  
		Last Modified: Mon, 24 Apr 2017 22:29:33 GMT  
		Size: 37.9 MB (37942506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f6233dec22af165636a2bb05abd8bd4404aa888becbe1d847ca77766b1ed73`  
		Last Modified: Tue, 25 Apr 2017 17:53:24 GMT  
		Size: 37.2 MB (37173095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4feed19a681bfeeb42e29422131369c7a9ff3839fb81147c07f166292310e1`  
		Last Modified: Tue, 25 Apr 2017 17:53:36 GMT  
		Size: 84.1 MB (84079707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea359d18ceb3897d47febcfc54c639e162cef6e035ea550df01a1935b461cfa2`  
		Last Modified: Tue, 25 Apr 2017 17:53:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654a5dcab9fb6adfb653272c32a24fc2d524f08f1486e37efc7458cac402f3de`  
		Last Modified: Tue, 25 Apr 2017 17:53:15 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:ccc1c2556981e4f0b2bca9c0f9727e90270c022f813d11044e3b300e8f2099e0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496984c836ae0e35e42ebf4eb0e5034fb92bdbd63b188965bf1133da7bb42fbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:00:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:01:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:01:35 GMT
ENV GOLANG_VERSION=1.7.5
# Mon, 24 Apr 2017 23:01:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.5.linux-amd64.tar.gz
# Mon, 24 Apr 2017 23:01:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3
# Mon, 24 Apr 2017 23:01:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 23:01:55 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 23:01:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:01:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 23:02:13 GMT
WORKDIR /go
# Mon, 24 Apr 2017 23:02:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d844091a3ba3d7bd7708b0f781a9fcae97c8d5ebfa2b8d04a2296ea91ff73eed`  
		Last Modified: Mon, 24 Apr 2017 22:29:33 GMT  
		Size: 37.9 MB (37942506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f6233dec22af165636a2bb05abd8bd4404aa888becbe1d847ca77766b1ed73`  
		Last Modified: Tue, 25 Apr 2017 17:53:24 GMT  
		Size: 37.2 MB (37173095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4feed19a681bfeeb42e29422131369c7a9ff3839fb81147c07f166292310e1`  
		Last Modified: Tue, 25 Apr 2017 17:53:36 GMT  
		Size: 84.1 MB (84079707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea359d18ceb3897d47febcfc54c639e162cef6e035ea550df01a1935b461cfa2`  
		Last Modified: Tue, 25 Apr 2017 17:53:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654a5dcab9fb6adfb653272c32a24fc2d524f08f1486e37efc7458cac402f3de`  
		Last Modified: Tue, 25 Apr 2017 17:53:15 GMT  
		Size: 1.4 KB (1359 bytes)  
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
$ docker pull golang@sha256:ca6ca30b77dc56fb706faf7cb0dc6de769163e895166f0e8b61be441a0360fb6
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68b30c9a259636c2d577175a41721d14138dc91877a528951917b7c642c701f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:ca6ca30b77dc56fb706faf7cb0dc6de769163e895166f0e8b61be441a0360fb6
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68b30c9a259636c2d577175a41721d14138dc91877a528951917b7c642c701f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:ca6ca30b77dc56fb706faf7cb0dc6de769163e895166f0e8b61be441a0360fb6
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68b30c9a259636c2d577175a41721d14138dc91877a528951917b7c642c701f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:ca6ca30b77dc56fb706faf7cb0dc6de769163e895166f0e8b61be441a0360fb6
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68b30c9a259636c2d577175a41721d14138dc91877a528951917b7c642c701f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-onbuild`

```console
$ docker pull golang@sha256:f443b7421efc373327e6aa9bd686eb7e820fd245c31050d11c2848c606b7d74b
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6ff7fb684b8f08332c4adf235687be05583bca7cf0b299e227ebe1dbecd7df`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 22:55:26 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 22:55:41 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 22:55:58 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 22:55:58 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 22:56:14 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 22:56:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8362279c87ce4af3c3687ef49ed3317d9a172e56c024950ac6dafe95dd60e21c`  
		Last Modified: Tue, 25 Apr 2017 17:56:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:f443b7421efc373327e6aa9bd686eb7e820fd245c31050d11c2848c606b7d74b
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6ff7fb684b8f08332c4adf235687be05583bca7cf0b299e227ebe1dbecd7df`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 22:55:26 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 22:55:41 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 22:55:58 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 22:55:58 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 22:56:14 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 22:56:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8362279c87ce4af3c3687ef49ed3317d9a172e56c024950ac6dafe95dd60e21c`  
		Last Modified: Tue, 25 Apr 2017 17:56:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:f443b7421efc373327e6aa9bd686eb7e820fd245c31050d11c2848c606b7d74b
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6ff7fb684b8f08332c4adf235687be05583bca7cf0b299e227ebe1dbecd7df`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 22:55:26 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 22:55:41 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 22:55:58 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 22:55:58 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 22:56:14 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 22:56:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8362279c87ce4af3c3687ef49ed3317d9a172e56c024950ac6dafe95dd60e21c`  
		Last Modified: Tue, 25 Apr 2017 17:56:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:f443b7421efc373327e6aa9bd686eb7e820fd245c31050d11c2848c606b7d74b
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6ff7fb684b8f08332c4adf235687be05583bca7cf0b299e227ebe1dbecd7df`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:37 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:54:38 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:54:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:54:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:54:48 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:54:51 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:54:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 24 Apr 2017 22:55:26 GMT
RUN mkdir -p /go/src/app
# Mon, 24 Apr 2017 22:55:41 GMT
WORKDIR /go/src/app
# Mon, 24 Apr 2017 22:55:58 GMT
CMD ["go-wrapper" "run"]
# Mon, 24 Apr 2017 22:55:58 GMT
ONBUILD COPY . /go/src/app
# Mon, 24 Apr 2017 22:56:14 GMT
ONBUILD RUN go-wrapper download
# Mon, 24 Apr 2017 22:56:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5844b8ce46a2e791499dafc0b8f86e15abe1a645e893b5a2eca9e6931cbf7a9`  
		Last Modified: Tue, 25 Apr 2017 17:51:40 GMT  
		Size: 60.6 MB (60635506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6285983f041e69cd0b0226518d244e7b8b140c802d8a4abd4325e49d35b1be`  
		Last Modified: Tue, 25 Apr 2017 17:54:44 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a4f1da31a70ac32d23d107786db00ef1c40bc8480f0d40dea02bf30e756a5f`  
		Last Modified: Tue, 25 Apr 2017 17:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e82f121d2c24565672ca9b00e2a045791ada112fd60e4291dc8848c3116c7a`  
		Last Modified: Tue, 25 Apr 2017 17:54:20 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8362279c87ce4af3c3687ef49ed3317d9a172e56c024950ac6dafe95dd60e21c`  
		Last Modified: Tue, 25 Apr 2017 17:56:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-stretch`

```console
$ docker pull golang@sha256:547091ec41fcbf29ebe5af3ec62cb0790b6c7c59c300849d448bc5fc78db21c8
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255612040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd436ca9b0fca0fbda5e5947edf830117977e4e0a4b016b0820aee42b2a4f2e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:57:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:57:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:57:57 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:57:57 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:57:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:58:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:58:17 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:58:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be13c7e9faffeab16cd0327245e46a2ddab59c0fe0a2c4bed91498296fdc9bcf`  
		Last Modified: Tue, 25 Apr 2017 17:57:51 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdc12e1cef040bd5eea21d329c26b95145b0148a640fc646c8f67da591dd67`  
		Last Modified: Tue, 25 Apr 2017 17:57:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56bf841f89f4627b216e202d2586ea07cbf8c8cbbea3daa686ae2142c1170d0`  
		Last Modified: Tue, 25 Apr 2017 17:57:26 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:547091ec41fcbf29ebe5af3ec62cb0790b6c7c59c300849d448bc5fc78db21c8
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255612040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd436ca9b0fca0fbda5e5947edf830117977e4e0a4b016b0820aee42b2a4f2e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:57:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:57:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:57:57 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:57:57 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:57:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:58:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:58:17 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:58:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be13c7e9faffeab16cd0327245e46a2ddab59c0fe0a2c4bed91498296fdc9bcf`  
		Last Modified: Tue, 25 Apr 2017 17:57:51 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdc12e1cef040bd5eea21d329c26b95145b0148a640fc646c8f67da591dd67`  
		Last Modified: Tue, 25 Apr 2017 17:57:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56bf841f89f4627b216e202d2586ea07cbf8c8cbbea3daa686ae2142c1170d0`  
		Last Modified: Tue, 25 Apr 2017 17:57:26 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:547091ec41fcbf29ebe5af3ec62cb0790b6c7c59c300849d448bc5fc78db21c8
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255612040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd436ca9b0fca0fbda5e5947edf830117977e4e0a4b016b0820aee42b2a4f2e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:57:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:57:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:57:57 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:57:57 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:57:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:58:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:58:17 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:58:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be13c7e9faffeab16cd0327245e46a2ddab59c0fe0a2c4bed91498296fdc9bcf`  
		Last Modified: Tue, 25 Apr 2017 17:57:51 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdc12e1cef040bd5eea21d329c26b95145b0148a640fc646c8f67da591dd67`  
		Last Modified: Tue, 25 Apr 2017 17:57:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56bf841f89f4627b216e202d2586ea07cbf8c8cbbea3daa686ae2142c1170d0`  
		Last Modified: Tue, 25 Apr 2017 17:57:26 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:547091ec41fcbf29ebe5af3ec62cb0790b6c7c59c300849d448bc5fc78db21c8
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255612040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd436ca9b0fca0fbda5e5947edf830117977e4e0a4b016b0820aee42b2a4f2e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:57:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:57:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:57:57 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:57:57 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:57:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:58:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:58:17 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:58:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be13c7e9faffeab16cd0327245e46a2ddab59c0fe0a2c4bed91498296fdc9bcf`  
		Last Modified: Tue, 25 Apr 2017 17:57:51 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdc12e1cef040bd5eea21d329c26b95145b0148a640fc646c8f67da591dd67`  
		Last Modified: Tue, 25 Apr 2017 17:57:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56bf841f89f4627b216e202d2586ea07cbf8c8cbbea3daa686ae2142c1170d0`  
		Last Modified: Tue, 25 Apr 2017 17:57:26 GMT  
		Size: 1.4 KB (1358 bytes)  
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
