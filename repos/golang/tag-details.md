<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
-	[`golang:1.7.0`](#golang170)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.0-onbuild`](#golang170-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.0-wheezy`](#golang170-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.0-alpine`](#golang170-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.0-windowsservercore`](#golang170-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)

## `golang:1.6.3`

```console
$ docker pull golang@sha256:d60ee7e2522e10c0b4d0790e7c37b4998c150eb272aa7c0a2cba0ca8e6289dc7
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254165705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a89f0a4ee532dc29f18857e30990f3c95412144bf2ec5ca67dbf53badb64b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:09 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:11 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c852971c98b9b4aff95c558c3524213aeb71b87b6c7ece7d6875da27c0c65b7`  
		Last Modified: Tue, 30 Aug 2016 23:02:55 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18f7ad76e3c15f6e31f7fed71fd044fa6f1b3c2c1b8e05e6d8df0dae95c0e0f`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53047e4233dfd4f6d04ed222b6009cf671fd9ef48a55ae7621db1ea949e6cb34`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:d60ee7e2522e10c0b4d0790e7c37b4998c150eb272aa7c0a2cba0ca8e6289dc7
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254165705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a89f0a4ee532dc29f18857e30990f3c95412144bf2ec5ca67dbf53badb64b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:09 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:11 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c852971c98b9b4aff95c558c3524213aeb71b87b6c7ece7d6875da27c0c65b7`  
		Last Modified: Tue, 30 Aug 2016 23:02:55 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18f7ad76e3c15f6e31f7fed71fd044fa6f1b3c2c1b8e05e6d8df0dae95c0e0f`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53047e4233dfd4f6d04ed222b6009cf671fd9ef48a55ae7621db1ea949e6cb34`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-onbuild`

```console
$ docker pull golang@sha256:05b3997c25f73596cda6fe5b651f57563e2815c9c4783764111ea46b6cd84695
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254165837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912219342ab062bf25274c9c6d5abb48efda056dd264ae078a3fd06ecba13c4d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:09 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:11 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:01:13 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:01:13 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:01:13 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:01:13 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:01:14 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:01:14 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c852971c98b9b4aff95c558c3524213aeb71b87b6c7ece7d6875da27c0c65b7`  
		Last Modified: Tue, 30 Aug 2016 23:02:55 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18f7ad76e3c15f6e31f7fed71fd044fa6f1b3c2c1b8e05e6d8df0dae95c0e0f`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53047e4233dfd4f6d04ed222b6009cf671fd9ef48a55ae7621db1ea949e6cb34`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9899eeb43db641fb1a9a88bb065d1401744ee42bba5722091d8bc9d1e39cbc`  
		Last Modified: Tue, 30 Aug 2016 23:03:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:05b3997c25f73596cda6fe5b651f57563e2815c9c4783764111ea46b6cd84695
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254165837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912219342ab062bf25274c9c6d5abb48efda056dd264ae078a3fd06ecba13c4d`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:00:59 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:09 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:11 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:01:13 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:01:13 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:01:13 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:01:13 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:01:14 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:01:14 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c852971c98b9b4aff95c558c3524213aeb71b87b6c7ece7d6875da27c0c65b7`  
		Last Modified: Tue, 30 Aug 2016 23:02:55 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18f7ad76e3c15f6e31f7fed71fd044fa6f1b3c2c1b8e05e6d8df0dae95c0e0f`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53047e4233dfd4f6d04ed222b6009cf671fd9ef48a55ae7621db1ea949e6cb34`  
		Last Modified: Tue, 30 Aug 2016 23:02:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9899eeb43db641fb1a9a88bb065d1401744ee42bba5722091d8bc9d1e39cbc`  
		Last Modified: Tue, 30 Aug 2016 23:03:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-wheezy`

```console
$ docker pull golang@sha256:d9d83248ac6dc82dd1ce817caf5c85d7fb8f5759f054f045377baaf380825f1b
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200131088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c4e0b7b6a0e34dde5ecfd1570c1b93a2b7b325d45fc26334b042a110bbde46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:01:43 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:53 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:53 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:55 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485c6a368638d50fb9428ca80009af8627dbc544cc541870765f8b63c1044ca8`  
		Last Modified: Tue, 30 Aug 2016 23:04:02 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7b2a2a33d768767d84b011f0dc7b28709dc38f71a3ac62f6e6feb7d387addb`  
		Last Modified: Tue, 30 Aug 2016 23:03:33 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6623245546e0c2438b97649a97ee92c04f6160448b0f9700b3053adcc7423aff`  
		Last Modified: Tue, 30 Aug 2016 23:03:32 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:d9d83248ac6dc82dd1ce817caf5c85d7fb8f5759f054f045377baaf380825f1b
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200131088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c4e0b7b6a0e34dde5ecfd1570c1b93a2b7b325d45fc26334b042a110bbde46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 23:01:43 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 30 Aug 2016 23:01:53 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:01:53 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:01:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:01:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:01:55 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:01:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485c6a368638d50fb9428ca80009af8627dbc544cc541870765f8b63c1044ca8`  
		Last Modified: Tue, 30 Aug 2016 23:04:02 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7b2a2a33d768767d84b011f0dc7b28709dc38f71a3ac62f6e6feb7d387addb`  
		Last Modified: Tue, 30 Aug 2016 23:03:33 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6623245546e0c2438b97649a97ee92c04f6160448b0f9700b3053adcc7423aff`  
		Last Modified: Tue, 30 Aug 2016 23:03:32 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-alpine`

```console
$ docker pull golang@sha256:376f61d97d0619437d77955e06bcbf8d984dd5f6b2a6e002e53a57813113b570
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72528364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc41f89ff3e1e54db2535f8aae86b87b6bc210dd6fad93ae639845371fefd90`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:43:51 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 19:43:51 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Tue, 30 Aug 2016 19:43:52 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Tue, 30 Aug 2016 19:43:52 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 30 Aug 2016 19:44:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:44:46 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:44:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:44:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:44:47 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:44:48 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8961672bb0446906a392a63a38b3da504bf9d1f0e7be2cae5ce586002e16d`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1d9aed4765ce3fa69b6dd060743522148490e6d59c8d1c69407047545c6885`  
		Last Modified: Tue, 30 Aug 2016 23:04:51 GMT  
		Size: 69.9 MB (69872224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4593724b81e89c544682bba883eadcbf455760e0b66fe975f93a80ba4a0e5d`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162906901c9b14840faec16aa46dc65e0cc3bdd482ccddd7d3916547f03e5e99`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:376f61d97d0619437d77955e06bcbf8d984dd5f6b2a6e002e53a57813113b570
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72528364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc41f89ff3e1e54db2535f8aae86b87b6bc210dd6fad93ae639845371fefd90`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:43:51 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 30 Aug 2016 19:43:51 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Tue, 30 Aug 2016 19:43:52 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Tue, 30 Aug 2016 19:43:52 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Tue, 30 Aug 2016 19:44:46 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:44:46 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:44:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:44:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:44:47 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:44:48 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8961672bb0446906a392a63a38b3da504bf9d1f0e7be2cae5ce586002e16d`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1d9aed4765ce3fa69b6dd060743522148490e6d59c8d1c69407047545c6885`  
		Last Modified: Tue, 30 Aug 2016 23:04:51 GMT  
		Size: 69.9 MB (69872224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4593724b81e89c544682bba883eadcbf455760e0b66fe975f93a80ba4a0e5d`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162906901c9b14840faec16aa46dc65e0cc3bdd482ccddd7d3916547f03e5e99`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 1.3 KB (1347 bytes)  
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

## `golang:1.7.0`

```console
$ docker pull golang@sha256:6765038c2b8f407fd6e3ecea043b44580c229ccfa2a13f6d85866cf2b4a9628e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138c2e6554219de65614d88c15521bfb2da674cbb0bf840de161f89ff4264b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:6765038c2b8f407fd6e3ecea043b44580c229ccfa2a13f6d85866cf2b4a9628e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138c2e6554219de65614d88c15521bfb2da674cbb0bf840de161f89ff4264b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:6765038c2b8f407fd6e3ecea043b44580c229ccfa2a13f6d85866cf2b4a9628e
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138c2e6554219de65614d88c15521bfb2da674cbb0bf840de161f89ff4264b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:6765038c2b8f407fd6e3ecea043b44580c229ccfa2a13f6d85866cf2b4a9628e
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138c2e6554219de65614d88c15521bfb2da674cbb0bf840de161f89ff4264b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.0-onbuild`

```console
$ docker pull golang@sha256:c00caef1446d93d6d3b6806e7e7ca147cd5eb787b2f23b0dfc0c8f7fa0d6f987
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae334e9210867dcc0a7a317894aa3fa98026c91e42480ada33a236dbe697b5d1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:02:09 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:02:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12941486c815568b5a518308eb5fc59e43299cfe8be6f063c3d27dbb18a95215`  
		Last Modified: Tue, 30 Aug 2016 23:06:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:c00caef1446d93d6d3b6806e7e7ca147cd5eb787b2f23b0dfc0c8f7fa0d6f987
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae334e9210867dcc0a7a317894aa3fa98026c91e42480ada33a236dbe697b5d1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:02:09 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:02:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12941486c815568b5a518308eb5fc59e43299cfe8be6f063c3d27dbb18a95215`  
		Last Modified: Tue, 30 Aug 2016 23:06:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:c00caef1446d93d6d3b6806e7e7ca147cd5eb787b2f23b0dfc0c8f7fa0d6f987
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae334e9210867dcc0a7a317894aa3fa98026c91e42480ada33a236dbe697b5d1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:02:09 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:02:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12941486c815568b5a518308eb5fc59e43299cfe8be6f063c3d27dbb18a95215`  
		Last Modified: Tue, 30 Aug 2016 23:06:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:c00caef1446d93d6d3b6806e7e7ca147cd5eb787b2f23b0dfc0c8f7fa0d6f987
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae334e9210867dcc0a7a317894aa3fa98026c91e42480ada33a236dbe697b5d1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:01:56 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:05 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:05 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:07 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:07 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 30 Aug 2016 23:02:09 GMT
RUN mkdir -p /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
WORKDIR /go/src/app
# Tue, 30 Aug 2016 23:02:09 GMT
CMD ["go-wrapper" "run"]
# Tue, 30 Aug 2016 23:02:09 GMT
ONBUILD COPY . /go/src/app
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper download
# Tue, 30 Aug 2016 23:02:10 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d75a9904ce2f9eb46538798580353fb64a5c5e5956f2fc0e63b14c58d84cbc3`  
		Last Modified: Tue, 30 Aug 2016 23:05:33 GMT  
		Size: 81.6 MB (81584274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6a8f7bafb74d059741aa344a0cc6b2580360fe86ac3d3f11304ec84a6ca30`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29d27f64fd4373ca8b360fdf31f94059bdc57e4b815cbf69d8e91d6518732e`  
		Last Modified: Tue, 30 Aug 2016 23:05:10 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12941486c815568b5a518308eb5fc59e43299cfe8be6f063c3d27dbb18a95215`  
		Last Modified: Tue, 30 Aug 2016 23:06:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.0-wheezy`

```console
$ docker pull golang@sha256:8426c5febaadbf72aa27cac4e3fa2ddbfb474acce89733b205fdc79be2bfa029
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196846014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e10c955bef4014650106851156a4600b819a6598cc631fe382688e5ffd8b950`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:20 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:22 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:22 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be345fc0388c7de09bc7f5be76f9d56b408960adaae3042feaebabc004e777`  
		Last Modified: Tue, 30 Aug 2016 23:06:55 GMT  
		Size: 81.6 MB (81584259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa35cefa171f2d9f91f4b30efb5daae5f76410d05002d2a9bb55f8a839add6`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd67c5c68a444da28ba44e3d8ba2bf01e9a13030941d667040a8a86cd0b80d3`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:8426c5febaadbf72aa27cac4e3fa2ddbfb474acce89733b205fdc79be2bfa029
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196846014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e10c955bef4014650106851156a4600b819a6598cc631fe382688e5ffd8b950`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:20 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:22 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:22 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be345fc0388c7de09bc7f5be76f9d56b408960adaae3042feaebabc004e777`  
		Last Modified: Tue, 30 Aug 2016 23:06:55 GMT  
		Size: 81.6 MB (81584259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa35cefa171f2d9f91f4b30efb5daae5f76410d05002d2a9bb55f8a839add6`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd67c5c68a444da28ba44e3d8ba2bf01e9a13030941d667040a8a86cd0b80d3`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:8426c5febaadbf72aa27cac4e3fa2ddbfb474acce89733b205fdc79be2bfa029
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196846014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e10c955bef4014650106851156a4600b819a6598cc631fe382688e5ffd8b950`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:20 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:22 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:22 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be345fc0388c7de09bc7f5be76f9d56b408960adaae3042feaebabc004e777`  
		Last Modified: Tue, 30 Aug 2016 23:06:55 GMT  
		Size: 81.6 MB (81584259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa35cefa171f2d9f91f4b30efb5daae5f76410d05002d2a9bb55f8a839add6`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd67c5c68a444da28ba44e3d8ba2bf01e9a13030941d667040a8a86cd0b80d3`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:8426c5febaadbf72aa27cac4e3fa2ddbfb474acce89733b205fdc79be2bfa029
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196846014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e10c955bef4014650106851156a4600b819a6598cc631fe382688e5ffd8b950`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 30 Aug 2016 23:02:11 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 30 Aug 2016 23:02:20 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 30 Aug 2016 23:02:20 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 23:02:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:02:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 23:02:22 GMT
WORKDIR /go
# Tue, 30 Aug 2016 23:02:22 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64be345fc0388c7de09bc7f5be76f9d56b408960adaae3042feaebabc004e777`  
		Last Modified: Tue, 30 Aug 2016 23:06:55 GMT  
		Size: 81.6 MB (81584259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa35cefa171f2d9f91f4b30efb5daae5f76410d05002d2a9bb55f8a839add6`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd67c5c68a444da28ba44e3d8ba2bf01e9a13030941d667040a8a86cd0b80d3`  
		Last Modified: Tue, 30 Aug 2016 23:06:31 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.0-alpine`

```console
$ docker pull golang@sha256:3ad7b06c6c9e42c68ac6c50ae596e33b5c10ea13ab5b888d23ddde5ddc03aaed
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2672761953f72961c25bb046ac3a67c5bfb5cc33e5dc0de00ba7fa29d85f0`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 30 Aug 2016 19:45:13 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 30 Aug 2016 19:46:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:46:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:46:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:46:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:46:10 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:46:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673b63764c88383200082b23ce3566e7e269b19cc2a107fe04bde693fcf4614`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b65fbb0c677948dc187bd450e3e8aad45886fac721c96d9572e2336957df1`  
		Last Modified: Tue, 30 Aug 2016 23:08:00 GMT  
		Size: 70.6 MB (70606917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bc5d8eccb3890de740e19db9c63d99a7e985d5abb8dad7ec00c29332dbf7`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00a7cdbb9e210415055f973bae430c17f7db0eab15f7ab6d1467c77f626601e`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:3ad7b06c6c9e42c68ac6c50ae596e33b5c10ea13ab5b888d23ddde5ddc03aaed
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2672761953f72961c25bb046ac3a67c5bfb5cc33e5dc0de00ba7fa29d85f0`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 30 Aug 2016 19:45:13 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 30 Aug 2016 19:46:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:46:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:46:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:46:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:46:10 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:46:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673b63764c88383200082b23ce3566e7e269b19cc2a107fe04bde693fcf4614`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b65fbb0c677948dc187bd450e3e8aad45886fac721c96d9572e2336957df1`  
		Last Modified: Tue, 30 Aug 2016 23:08:00 GMT  
		Size: 70.6 MB (70606917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bc5d8eccb3890de740e19db9c63d99a7e985d5abb8dad7ec00c29332dbf7`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00a7cdbb9e210415055f973bae430c17f7db0eab15f7ab6d1467c77f626601e`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:3ad7b06c6c9e42c68ac6c50ae596e33b5c10ea13ab5b888d23ddde5ddc03aaed
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2672761953f72961c25bb046ac3a67c5bfb5cc33e5dc0de00ba7fa29d85f0`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 30 Aug 2016 19:45:13 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 30 Aug 2016 19:46:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:46:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:46:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:46:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:46:10 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:46:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673b63764c88383200082b23ce3566e7e269b19cc2a107fe04bde693fcf4614`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b65fbb0c677948dc187bd450e3e8aad45886fac721c96d9572e2336957df1`  
		Last Modified: Tue, 30 Aug 2016 23:08:00 GMT  
		Size: 70.6 MB (70606917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bc5d8eccb3890de740e19db9c63d99a7e985d5abb8dad7ec00c29332dbf7`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00a7cdbb9e210415055f973bae430c17f7db0eab15f7ab6d1467c77f626601e`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:3ad7b06c6c9e42c68ac6c50ae596e33b5c10ea13ab5b888d23ddde5ddc03aaed
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2672761953f72961c25bb046ac3a67c5bfb5cc33e5dc0de00ba7fa29d85f0`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:43:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_VERSION=1.7
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 30 Aug 2016 19:45:12 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 30 Aug 2016 19:45:13 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Tue, 30 Aug 2016 19:46:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 30 Aug 2016 19:46:09 GMT
ENV GOPATH=/go
# Tue, 30 Aug 2016 19:46:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 19:46:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 30 Aug 2016 19:46:10 GMT
WORKDIR /go
# Tue, 30 Aug 2016 19:46:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e1d16ae456dca23e5378d20466e9413a1fcec7f81c6e59637a8dbe00b48d5`  
		Last Modified: Tue, 30 Aug 2016 23:04:22 GMT  
		Size: 343.9 KB (343941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8673b63764c88383200082b23ce3566e7e269b19cc2a107fe04bde693fcf4614`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b65fbb0c677948dc187bd450e3e8aad45886fac721c96d9572e2336957df1`  
		Last Modified: Tue, 30 Aug 2016 23:08:00 GMT  
		Size: 70.6 MB (70606917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bc5d8eccb3890de740e19db9c63d99a7e985d5abb8dad7ec00c29332dbf7`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00a7cdbb9e210415055f973bae430c17f7db0eab15f7ab6d1467c77f626601e`  
		Last Modified: Tue, 30 Aug 2016 23:07:30 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.0-windowsservercore`

```console
$ docker pull golang@sha256:36366df33f506c7f05d933cdb729e3432d026e02c7fa0d94a936cb945ef09230
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781087656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633190b5643a34196b3b2800c48593e3a32fda2d408af8130cb0d99dfc542574`
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
# Tue, 16 Aug 2016 00:03:27 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 16:43:40 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.windows-amd64.zip
# Tue, 16 Aug 2016 16:43:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=f51aad06644cc8bd119d2f6933334fa8da24d26e6676fde022cecf5978f1a0c7
# Tue, 16 Aug 2016 16:49:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 16 Aug 2016 16:49:07 GMT
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
	-	`sha256:2447de67ea2419aa2f8028e0fddf31710545f9ee8c9c813e1888f219a6614959`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bbaa533ba7033fdaacd5a996517393d2c8220f7965dcbd6658800f6d1b75fe`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b47bb2bb68a606c91182bcd7724b7723f48341d6c24256e75c9b9d3a57b3f8`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835a8eeea92e980cb5e8a4deddb8dc46d36795c13a7aa2ff3a9c22a91e5c95d`  
		Last Modified: Tue, 16 Aug 2016 17:10:00 GMT  
		Size: 93.2 MB (93186010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af9de300cbd6f3f16e1daa9512a23f54638eb19f1db4a6f2da293febc25dea`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:36366df33f506c7f05d933cdb729e3432d026e02c7fa0d94a936cb945ef09230
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781087656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633190b5643a34196b3b2800c48593e3a32fda2d408af8130cb0d99dfc542574`
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
# Tue, 16 Aug 2016 00:03:27 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 16:43:40 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.windows-amd64.zip
# Tue, 16 Aug 2016 16:43:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=f51aad06644cc8bd119d2f6933334fa8da24d26e6676fde022cecf5978f1a0c7
# Tue, 16 Aug 2016 16:49:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 16 Aug 2016 16:49:07 GMT
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
	-	`sha256:2447de67ea2419aa2f8028e0fddf31710545f9ee8c9c813e1888f219a6614959`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bbaa533ba7033fdaacd5a996517393d2c8220f7965dcbd6658800f6d1b75fe`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b47bb2bb68a606c91182bcd7724b7723f48341d6c24256e75c9b9d3a57b3f8`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835a8eeea92e980cb5e8a4deddb8dc46d36795c13a7aa2ff3a9c22a91e5c95d`  
		Last Modified: Tue, 16 Aug 2016 17:10:00 GMT  
		Size: 93.2 MB (93186010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af9de300cbd6f3f16e1daa9512a23f54638eb19f1db4a6f2da293febc25dea`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:36366df33f506c7f05d933cdb729e3432d026e02c7fa0d94a936cb945ef09230
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781087656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633190b5643a34196b3b2800c48593e3a32fda2d408af8130cb0d99dfc542574`
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
# Tue, 16 Aug 2016 00:03:27 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 16:43:40 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.windows-amd64.zip
# Tue, 16 Aug 2016 16:43:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=f51aad06644cc8bd119d2f6933334fa8da24d26e6676fde022cecf5978f1a0c7
# Tue, 16 Aug 2016 16:49:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 16 Aug 2016 16:49:07 GMT
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
	-	`sha256:2447de67ea2419aa2f8028e0fddf31710545f9ee8c9c813e1888f219a6614959`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bbaa533ba7033fdaacd5a996517393d2c8220f7965dcbd6658800f6d1b75fe`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b47bb2bb68a606c91182bcd7724b7723f48341d6c24256e75c9b9d3a57b3f8`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835a8eeea92e980cb5e8a4deddb8dc46d36795c13a7aa2ff3a9c22a91e5c95d`  
		Last Modified: Tue, 16 Aug 2016 17:10:00 GMT  
		Size: 93.2 MB (93186010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af9de300cbd6f3f16e1daa9512a23f54638eb19f1db4a6f2da293febc25dea`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:36366df33f506c7f05d933cdb729e3432d026e02c7fa0d94a936cb945ef09230
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781087656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633190b5643a34196b3b2800c48593e3a32fda2d408af8130cb0d99dfc542574`
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
# Tue, 16 Aug 2016 00:03:27 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 16:43:40 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.windows-amd64.zip
# Tue, 16 Aug 2016 16:43:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=f51aad06644cc8bd119d2f6933334fa8da24d26e6676fde022cecf5978f1a0c7
# Tue, 16 Aug 2016 16:49:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 16 Aug 2016 16:49:07 GMT
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
	-	`sha256:2447de67ea2419aa2f8028e0fddf31710545f9ee8c9c813e1888f219a6614959`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bbaa533ba7033fdaacd5a996517393d2c8220f7965dcbd6658800f6d1b75fe`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b47bb2bb68a606c91182bcd7724b7723f48341d6c24256e75c9b9d3a57b3f8`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835a8eeea92e980cb5e8a4deddb8dc46d36795c13a7aa2ff3a9c22a91e5c95d`  
		Last Modified: Tue, 16 Aug 2016 17:10:00 GMT  
		Size: 93.2 MB (93186010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af9de300cbd6f3f16e1daa9512a23f54638eb19f1db4a6f2da293febc25dea`  
		Last Modified: Tue, 16 Aug 2016 17:09:11 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
