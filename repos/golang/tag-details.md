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
$ docker pull golang@sha256:fadd54e6324977116a5c2dd91df3e45129c98ff029902e9d416907ec9655932a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002b233310bbbf6f7e03208dc392c3fe179955ea1b95bf4771917afe13a88377`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:fadd54e6324977116a5c2dd91df3e45129c98ff029902e9d416907ec9655932a
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002b233310bbbf6f7e03208dc392c3fe179955ea1b95bf4771917afe13a88377`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:fadd54e6324977116a5c2dd91df3e45129c98ff029902e9d416907ec9655932a
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002b233310bbbf6f7e03208dc392c3fe179955ea1b95bf4771917afe13a88377`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:fadd54e6324977116a5c2dd91df3e45129c98ff029902e9d416907ec9655932a
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002b233310bbbf6f7e03208dc392c3fe179955ea1b95bf4771917afe13a88377`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-onbuild`

```console
$ docker pull golang@sha256:71d82422311a99b8e36789734fd3e26ff03bd595e37e15f8d65bc6a303063a2b
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7732165221ba2285fe773fe4078fc37570e57152a5c8960baef81d0ef29699`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 07 Sep 2016 23:09:36 GMT
RUN mkdir -p /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
WORKDIR /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
CMD ["go-wrapper" "run"]
# Wed, 07 Sep 2016 23:09:37 GMT
ONBUILD COPY . /go/src/app
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 07 Sep 2016 23:09:38 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32339ddf0ef427f9e7b139e19ae40486333cc429d89b3bede706b24d191c1d7b`  
		Last Modified: Wed, 07 Sep 2016 23:13:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:71d82422311a99b8e36789734fd3e26ff03bd595e37e15f8d65bc6a303063a2b
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7732165221ba2285fe773fe4078fc37570e57152a5c8960baef81d0ef29699`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 07 Sep 2016 23:09:36 GMT
RUN mkdir -p /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
WORKDIR /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
CMD ["go-wrapper" "run"]
# Wed, 07 Sep 2016 23:09:37 GMT
ONBUILD COPY . /go/src/app
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 07 Sep 2016 23:09:38 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32339ddf0ef427f9e7b139e19ae40486333cc429d89b3bede706b24d191c1d7b`  
		Last Modified: Wed, 07 Sep 2016 23:13:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:71d82422311a99b8e36789734fd3e26ff03bd595e37e15f8d65bc6a303063a2b
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7732165221ba2285fe773fe4078fc37570e57152a5c8960baef81d0ef29699`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 07 Sep 2016 23:09:36 GMT
RUN mkdir -p /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
WORKDIR /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
CMD ["go-wrapper" "run"]
# Wed, 07 Sep 2016 23:09:37 GMT
ONBUILD COPY . /go/src/app
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 07 Sep 2016 23:09:38 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32339ddf0ef427f9e7b139e19ae40486333cc429d89b3bede706b24d191c1d7b`  
		Last Modified: Wed, 07 Sep 2016 23:13:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:71d82422311a99b8e36789734fd3e26ff03bd595e37e15f8d65bc6a303063a2b
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7732165221ba2285fe773fe4078fc37570e57152a5c8960baef81d0ef29699`
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
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 07 Sep 2016 23:09:36 GMT
RUN mkdir -p /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
WORKDIR /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
CMD ["go-wrapper" "run"]
# Wed, 07 Sep 2016 23:09:37 GMT
ONBUILD COPY . /go/src/app
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 07 Sep 2016 23:09:38 GMT
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
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32339ddf0ef427f9e7b139e19ae40486333cc429d89b3bede706b24d191c1d7b`  
		Last Modified: Wed, 07 Sep 2016 23:13:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-wheezy`

```console
$ docker pull golang@sha256:1d6ed22ccfad13862fbe73f63b9068fcd853e56e088e2ae2ac98ca4911c4c6e8
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196890776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffc9878b306d8cd86708cabc2f7725d3f14e17d17bd8a34ba0f583ea853cd77`
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
# Wed, 07 Sep 2016 23:09:38 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:49 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:50 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:51 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:52 GMT
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
	-	`sha256:2ef23d7ce954439d6d64445857fc517e4ce3c927f42bee0a26a90766ac598b88`  
		Last Modified: Wed, 07 Sep 2016 23:14:04 GMT  
		Size: 81.6 MB (81629024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f854d0614ef84cb531be070db81230f1c540b372a6b4b63b7c996714e1f09771`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cabf1c43fa44e722f7c0170817a13964899f10e1cb066008037950a8f35b0f`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:1d6ed22ccfad13862fbe73f63b9068fcd853e56e088e2ae2ac98ca4911c4c6e8
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196890776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffc9878b306d8cd86708cabc2f7725d3f14e17d17bd8a34ba0f583ea853cd77`
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
# Wed, 07 Sep 2016 23:09:38 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:49 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:50 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:51 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:52 GMT
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
	-	`sha256:2ef23d7ce954439d6d64445857fc517e4ce3c927f42bee0a26a90766ac598b88`  
		Last Modified: Wed, 07 Sep 2016 23:14:04 GMT  
		Size: 81.6 MB (81629024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f854d0614ef84cb531be070db81230f1c540b372a6b4b63b7c996714e1f09771`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cabf1c43fa44e722f7c0170817a13964899f10e1cb066008037950a8f35b0f`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:1d6ed22ccfad13862fbe73f63b9068fcd853e56e088e2ae2ac98ca4911c4c6e8
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196890776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffc9878b306d8cd86708cabc2f7725d3f14e17d17bd8a34ba0f583ea853cd77`
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
# Wed, 07 Sep 2016 23:09:38 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:49 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:50 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:51 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:52 GMT
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
	-	`sha256:2ef23d7ce954439d6d64445857fc517e4ce3c927f42bee0a26a90766ac598b88`  
		Last Modified: Wed, 07 Sep 2016 23:14:04 GMT  
		Size: 81.6 MB (81629024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f854d0614ef84cb531be070db81230f1c540b372a6b4b63b7c996714e1f09771`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cabf1c43fa44e722f7c0170817a13964899f10e1cb066008037950a8f35b0f`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:1d6ed22ccfad13862fbe73f63b9068fcd853e56e088e2ae2ac98ca4911c4c6e8
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196890776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffc9878b306d8cd86708cabc2f7725d3f14e17d17bd8a34ba0f583ea853cd77`
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
# Wed, 07 Sep 2016 23:09:38 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:49 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:50 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:51 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:52 GMT
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
	-	`sha256:2ef23d7ce954439d6d64445857fc517e4ce3c927f42bee0a26a90766ac598b88`  
		Last Modified: Wed, 07 Sep 2016 23:14:04 GMT  
		Size: 81.6 MB (81629024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f854d0614ef84cb531be070db81230f1c540b372a6b4b63b7c996714e1f09771`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cabf1c43fa44e722f7c0170817a13964899f10e1cb066008037950a8f35b0f`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 1.4 KB (1353 bytes)  
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
