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
-	[`golang:1.8rc1`](#golang18rc1)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8rc1-onbuild`](#golang18rc1-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8rc1-wheezy`](#golang18rc1-wheezy)
-	[`golang:1.8-wheezy`](#golang18-wheezy)
-	[`golang:1.8rc1-alpine`](#golang18rc1-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8rc1-windowsservercore`](#golang18rc1-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.8rc1-nanoserver`](#golang18rc1-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)

## `golang:1.6.4`

```console
$ docker pull golang@sha256:0f2fc25c9905771ce9770c81ab84dafa3c98803fe0df0aab2b2cd6b239193d40
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258387688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0618c6ab22d41451a7dba337488801703d6af131f59fd5700efc88fa6c6180`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:24 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:25 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:26 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9d7a548305fae795ed80b9f9813e23564635d6005e5bc121518a6f52525081`  
		Last Modified: Mon, 19 Dec 2016 19:13:13 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9880ad0eaf007478a50a45c6beb52df4a8f208c7f412846db5f81276d1932c9f`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b660e8f5ac0129414399f43ff6a027b1ac7bdf326aad64bf9c8ead7ff4eb7e1`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:0f2fc25c9905771ce9770c81ab84dafa3c98803fe0df0aab2b2cd6b239193d40
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258387688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0618c6ab22d41451a7dba337488801703d6af131f59fd5700efc88fa6c6180`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:24 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:25 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:26 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9d7a548305fae795ed80b9f9813e23564635d6005e5bc121518a6f52525081`  
		Last Modified: Mon, 19 Dec 2016 19:13:13 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9880ad0eaf007478a50a45c6beb52df4a8f208c7f412846db5f81276d1932c9f`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b660e8f5ac0129414399f43ff6a027b1ac7bdf326aad64bf9c8ead7ff4eb7e1`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-onbuild`

```console
$ docker pull golang@sha256:b2748318f5e8039a676d041adce20f5ee3c504a8da419dad0cb7ec282f66fb7f
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258387820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d5c51efcd9d9ace6c5906097c701d8edb5b58dd226fade6fb385ccdef740d8`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:24 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:25 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:26 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:26:28 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:26:28 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:26:29 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:26:29 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:26:29 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:26:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9d7a548305fae795ed80b9f9813e23564635d6005e5bc121518a6f52525081`  
		Last Modified: Mon, 19 Dec 2016 19:13:13 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9880ad0eaf007478a50a45c6beb52df4a8f208c7f412846db5f81276d1932c9f`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b660e8f5ac0129414399f43ff6a027b1ac7bdf326aad64bf9c8ead7ff4eb7e1`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7da1636a972cd626ebaefb45e052a2ac6573d5faad6546b9763be6a8a39585a`  
		Last Modified: Mon, 19 Dec 2016 19:13:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:b2748318f5e8039a676d041adce20f5ee3c504a8da419dad0cb7ec282f66fb7f
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258387820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d5c51efcd9d9ace6c5906097c701d8edb5b58dd226fade6fb385ccdef740d8`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:14 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:24 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:25 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:26 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:27 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:26:28 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:26:28 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:26:29 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:26:29 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:26:29 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:26:30 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9d7a548305fae795ed80b9f9813e23564635d6005e5bc121518a6f52525081`  
		Last Modified: Mon, 19 Dec 2016 19:13:13 GMT  
		Size: 86.3 MB (86339342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9880ad0eaf007478a50a45c6beb52df4a8f208c7f412846db5f81276d1932c9f`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b660e8f5ac0129414399f43ff6a027b1ac7bdf326aad64bf9c8ead7ff4eb7e1`  
		Last Modified: Mon, 19 Dec 2016 19:12:39 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7da1636a972cd626ebaefb45e052a2ac6573d5faad6546b9763be6a8a39585a`  
		Last Modified: Mon, 19 Dec 2016 19:13:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-wheezy`

```console
$ docker pull golang@sha256:a8d79e7d1f010e1f7f75af539a4b22d1f967ecf0a4bb1139b70154fcfce22dd5
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204336374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5d15f6467d1f1a61599b976a5f4d2d89d692625a89f87b49ee2538e2a96256`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:30 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:31 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:42 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b939740df6cbb0a61d90d2165319b53879997013e5f0395ae74f844cc8b608`  
		Last Modified: Mon, 19 Dec 2016 19:15:02 GMT  
		Size: 86.3 MB (86339332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f9ad340b58aa292632899aefb82ffb191c9714c6156a17afc252299037be7c`  
		Last Modified: Mon, 19 Dec 2016 19:14:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b828675226193286e9c2ce8baa8b9208b7be06b0068b5798c17b59aea5ced5db`  
		Last Modified: Mon, 19 Dec 2016 19:14:28 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:a8d79e7d1f010e1f7f75af539a4b22d1f967ecf0a4bb1139b70154fcfce22dd5
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204336374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5d15f6467d1f1a61599b976a5f4d2d89d692625a89f87b49ee2538e2a96256`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:30 GMT
ENV GOLANG_VERSION=1.6.4
# Tue, 13 Dec 2016 23:26:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:31 GMT
ENV GOLANG_DOWNLOAD_SHA256=b58bf5cede40b21812dfa031258db18fc39746cc0972bc26dae0393acc377aaf
# Tue, 13 Dec 2016 23:26:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:42 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b939740df6cbb0a61d90d2165319b53879997013e5f0395ae74f844cc8b608`  
		Last Modified: Mon, 19 Dec 2016 19:15:02 GMT  
		Size: 86.3 MB (86339332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f9ad340b58aa292632899aefb82ffb191c9714c6156a17afc252299037be7c`  
		Last Modified: Mon, 19 Dec 2016 19:14:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b828675226193286e9c2ce8baa8b9208b7be06b0068b5798c17b59aea5ced5db`  
		Last Modified: Mon, 19 Dec 2016 19:14:28 GMT  
		Size: 1.4 KB (1352 bytes)  
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
$ docker pull golang@sha256:20189a652bd488098ce7669154fd2e30c1434df78abdd40944054f07fba04a2f
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5261413574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f69af8b7265a97f15228500524915ad463e06ae4eac9450dd4cdb576511022b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 22:55:01 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 06 Jan 2017 22:55:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 06 Jan 2017 22:55:06 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 06 Jan 2017 22:58:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:59:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f5310bda888871b004c15c82e0483736a9a4ee03a30bd7102e3de44a83952b`  
		Last Modified: Fri, 06 Jan 2017 23:21:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10fd5fd80dfc4652588837140ee4dbb9f3388ca99008af1c1a94f4177fc8a73`  
		Last Modified: Fri, 06 Jan 2017 23:21:32 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530e88d1a8de461843b307c5f1b4b93a96f6d69598e9f47bbb2cc21fa39cd6f`  
		Last Modified: Fri, 06 Jan 2017 23:21:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228c7778aa2af6ac56dffb06616a9108b6ef520a1b591c1ba624a437a468e7b`  
		Last Modified: Fri, 06 Jan 2017 23:22:35 GMT  
		Size: 99.1 MB (99135391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442642b2376469dd3b3a038871edb0c90bc2c8767a3fbb1dc56224a271aed550`  
		Last Modified: Fri, 06 Jan 2017 23:21:32 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:20189a652bd488098ce7669154fd2e30c1434df78abdd40944054f07fba04a2f
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5261413574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f69af8b7265a97f15228500524915ad463e06ae4eac9450dd4cdb576511022b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 22:55:01 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 06 Jan 2017 22:55:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 06 Jan 2017 22:55:06 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 06 Jan 2017 22:58:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:59:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f5310bda888871b004c15c82e0483736a9a4ee03a30bd7102e3de44a83952b`  
		Last Modified: Fri, 06 Jan 2017 23:21:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10fd5fd80dfc4652588837140ee4dbb9f3388ca99008af1c1a94f4177fc8a73`  
		Last Modified: Fri, 06 Jan 2017 23:21:32 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0530e88d1a8de461843b307c5f1b4b93a96f6d69598e9f47bbb2cc21fa39cd6f`  
		Last Modified: Fri, 06 Jan 2017 23:21:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228c7778aa2af6ac56dffb06616a9108b6ef520a1b591c1ba624a437a468e7b`  
		Last Modified: Fri, 06 Jan 2017 23:22:35 GMT  
		Size: 99.1 MB (99135391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442642b2376469dd3b3a038871edb0c90bc2c8767a3fbb1dc56224a271aed550`  
		Last Modified: Fri, 06 Jan 2017 23:21:32 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.4-nanoserver`

```console
$ docker pull golang@sha256:38890e2983bd2700145f1b4377ad8d826531a0a15fc68152b2478406f5ead6e2
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.1 MB (407137555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507edb764a84fd69f632defb21c22167ead4b9e34b7b48e4a9a1b77a155db932`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 22:59:42 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 06 Jan 2017 22:59:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 06 Jan 2017 22:59:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 06 Jan 2017 23:03:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:03:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d05d38ae57913131afa74627359451d20e0f222a7354e9693140bfe497a1bfe`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d546953fcc47e0e12b2e30db23ab9bb04196197921bffaf2f523635b5bb295`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6104fd438d1ada62be44339b57a8392a198af12f92999f6505bc57580fcb497`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fa6908dc0b1d04cc0936142047ad402c51ee3ae0c75d9aa97465353a319876`  
		Last Modified: Fri, 06 Jan 2017 23:23:42 GMT  
		Size: 93.8 MB (93828777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d73a736c327fa3b1da8038762772a2687cdc6b661ddec9f723f6fffd22a981e`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-nanoserver`

```console
$ docker pull golang@sha256:38890e2983bd2700145f1b4377ad8d826531a0a15fc68152b2478406f5ead6e2
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.1 MB (407137555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507edb764a84fd69f632defb21c22167ead4b9e34b7b48e4a9a1b77a155db932`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 22:59:42 GMT
ENV GOLANG_VERSION=1.6.4
# Fri, 06 Jan 2017 22:59:44 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Fri, 06 Jan 2017 22:59:46 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Fri, 06 Jan 2017 23:03:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:03:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d05d38ae57913131afa74627359451d20e0f222a7354e9693140bfe497a1bfe`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d546953fcc47e0e12b2e30db23ab9bb04196197921bffaf2f523635b5bb295`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6104fd438d1ada62be44339b57a8392a198af12f92999f6505bc57580fcb497`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fa6908dc0b1d04cc0936142047ad402c51ee3ae0c75d9aa97465353a319876`  
		Last Modified: Fri, 06 Jan 2017 23:23:42 GMT  
		Size: 93.8 MB (93828777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d73a736c327fa3b1da8038762772a2687cdc6b661ddec9f723f6fffd22a981e`  
		Last Modified: Fri, 06 Jan 2017 23:23:08 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4`

```console
$ docker pull golang@sha256:5787421a0314390ca8da11b26885502b58837ebdffda0f557521790c13ddb55f
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6639f812dbc7ab533c01e405010a8e84b3ed65db653e2a20faad3e92abb024e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:5787421a0314390ca8da11b26885502b58837ebdffda0f557521790c13ddb55f
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6639f812dbc7ab533c01e405010a8e84b3ed65db653e2a20faad3e92abb024e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:5787421a0314390ca8da11b26885502b58837ebdffda0f557521790c13ddb55f
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6639f812dbc7ab533c01e405010a8e84b3ed65db653e2a20faad3e92abb024e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:5787421a0314390ca8da11b26885502b58837ebdffda0f557521790c13ddb55f
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6639f812dbc7ab533c01e405010a8e84b3ed65db653e2a20faad3e92abb024e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-onbuild`

```console
$ docker pull golang@sha256:d3cbc855152e8672412fc32d7f19371816d686b0dfddedb8fce86245910b31ac
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a422f764b58c72c4ee5b5ce407fca9714b0ed569719df039eed401a1b9e4c1fb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:25:45 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:25:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a90f1995ea8af4ea4466988e8fb46e1c430d3651085eb1932259bfe6a5e3a`  
		Last Modified: Mon, 19 Dec 2016 19:17:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:d3cbc855152e8672412fc32d7f19371816d686b0dfddedb8fce86245910b31ac
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a422f764b58c72c4ee5b5ce407fca9714b0ed569719df039eed401a1b9e4c1fb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:25:45 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:25:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a90f1995ea8af4ea4466988e8fb46e1c430d3651085eb1932259bfe6a5e3a`  
		Last Modified: Mon, 19 Dec 2016 19:17:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:d3cbc855152e8672412fc32d7f19371816d686b0dfddedb8fce86245910b31ac
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a422f764b58c72c4ee5b5ce407fca9714b0ed569719df039eed401a1b9e4c1fb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:25:45 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:25:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a90f1995ea8af4ea4466988e8fb46e1c430d3651085eb1932259bfe6a5e3a`  
		Last Modified: Mon, 19 Dec 2016 19:17:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:d3cbc855152e8672412fc32d7f19371816d686b0dfddedb8fce86245910b31ac
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255134402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a422f764b58c72c4ee5b5ce407fca9714b0ed569719df039eed401a1b9e4c1fb`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:25:31 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:25:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:25:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:25:41 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:25:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:25:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:25:43 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:25:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 13 Dec 2016 23:25:45 GMT
RUN mkdir -p /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
WORKDIR /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
CMD ["go-wrapper" "run"]
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD COPY . /go/src/app
# Tue, 13 Dec 2016 23:25:46 GMT
ONBUILD RUN go-wrapper download
# Tue, 13 Dec 2016 23:25:47 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23b80eb526a37ef0e7a7504d15e6adea93db5e169f963bdfdf7e732263cce7`  
		Last Modified: Mon, 19 Dec 2016 19:16:19 GMT  
		Size: 83.1 MB (83085923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c210a3af4218155c1ce82fa424a0af38255d0840288dc15f9000145196cab`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f7f7662eedc3c6bb81e5527f295bf2385c2b1526d979567b43f21caa4d7212`  
		Last Modified: Mon, 19 Dec 2016 19:15:48 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a90f1995ea8af4ea4466988e8fb46e1c430d3651085eb1932259bfe6a5e3a`  
		Last Modified: Mon, 19 Dec 2016 19:17:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-wheezy`

```console
$ docker pull golang@sha256:baad0f4b766db1de24ccb4e044cbbf9e55a8516563ad73402d40ad2cb77ab943
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.4-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201082942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0db5f05631af9eaafceb01b3031da3445d2e9dbca4942e6180a586573eeddb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:26:11 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:11 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:13 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a624f9c201912a24e4c477d504ee1a364b1db2dff2f6e0ba055a28c609da17`  
		Last Modified: Mon, 19 Dec 2016 19:19:20 GMT  
		Size: 83.1 MB (83085898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f91e05f2356ccd8cca39eafea685f91c3fd95551eb4c08369c8ee432a359c2a`  
		Last Modified: Mon, 19 Dec 2016 19:18:47 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cc0aac3000675b6aca0cedaec6c01bb4ccdaa47283f82a9ba7836f5a76161b`  
		Last Modified: Mon, 19 Dec 2016 19:18:45 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:baad0f4b766db1de24ccb4e044cbbf9e55a8516563ad73402d40ad2cb77ab943
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201082942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0db5f05631af9eaafceb01b3031da3445d2e9dbca4942e6180a586573eeddb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:26:11 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:11 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:13 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a624f9c201912a24e4c477d504ee1a364b1db2dff2f6e0ba055a28c609da17`  
		Last Modified: Mon, 19 Dec 2016 19:19:20 GMT  
		Size: 83.1 MB (83085898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f91e05f2356ccd8cca39eafea685f91c3fd95551eb4c08369c8ee432a359c2a`  
		Last Modified: Mon, 19 Dec 2016 19:18:47 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cc0aac3000675b6aca0cedaec6c01bb4ccdaa47283f82a9ba7836f5a76161b`  
		Last Modified: Mon, 19 Dec 2016 19:18:45 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:baad0f4b766db1de24ccb4e044cbbf9e55a8516563ad73402d40ad2cb77ab943
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201082942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0db5f05631af9eaafceb01b3031da3445d2e9dbca4942e6180a586573eeddb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:26:11 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:11 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:13 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a624f9c201912a24e4c477d504ee1a364b1db2dff2f6e0ba055a28c609da17`  
		Last Modified: Mon, 19 Dec 2016 19:19:20 GMT  
		Size: 83.1 MB (83085898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f91e05f2356ccd8cca39eafea685f91c3fd95551eb4c08369c8ee432a359c2a`  
		Last Modified: Mon, 19 Dec 2016 19:18:47 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cc0aac3000675b6aca0cedaec6c01bb4ccdaa47283f82a9ba7836f5a76161b`  
		Last Modified: Mon, 19 Dec 2016 19:18:45 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:baad0f4b766db1de24ccb4e044cbbf9e55a8516563ad73402d40ad2cb77ab943
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201082942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0db5f05631af9eaafceb01b3031da3445d2e9dbca4942e6180a586573eeddb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 13 Dec 2016 23:26:01 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 13 Dec 2016 23:26:11 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 13 Dec 2016 23:26:11 GMT
ENV GOPATH=/go
# Tue, 13 Dec 2016 23:26:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 13 Dec 2016 23:26:13 GMT
WORKDIR /go
# Tue, 13 Dec 2016 23:26:13 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a624f9c201912a24e4c477d504ee1a364b1db2dff2f6e0ba055a28c609da17`  
		Last Modified: Mon, 19 Dec 2016 19:19:20 GMT  
		Size: 83.1 MB (83085898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f91e05f2356ccd8cca39eafea685f91c3fd95551eb4c08369c8ee432a359c2a`  
		Last Modified: Mon, 19 Dec 2016 19:18:47 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cc0aac3000675b6aca0cedaec6c01bb4ccdaa47283f82a9ba7836f5a76161b`  
		Last Modified: Mon, 19 Dec 2016 19:18:45 GMT  
		Size: 1.4 KB (1354 bytes)  
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
$ docker pull golang@sha256:36f71634062e44b7034338314faf43b6fc0293fd48136d96b641b75e5519f8b3
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5258495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736fb0d365660541113213bcbe98898ca426e854ed5c068621c2bdb40d8afca8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 23:03:23 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:03:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:03:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:07:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:07:46 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a833c268b411bbe086c0e386bb1dc725d9199c8cc9eb4bef094c49c29a6dcfb8`  
		Last Modified: Fri, 06 Jan 2017 23:23:53 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680386d0ed139e9a706d4abec0dab68b3de64fcd8a88b21ff13d95eaddfe0a81`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4078922823883082cbe22fa6c583e79c8ce3cf77977ac651e2bab03440f05a`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b841a0971801939e59b2e9e8ea77f905ce8b05b9b46e9b4cd5db829e78594`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 96.2 MB (96217615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9d2babb057131f360488d7f34f6ae3cbdbd88fe3606772ced10fb36333d9e3`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:36f71634062e44b7034338314faf43b6fc0293fd48136d96b641b75e5519f8b3
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5258495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736fb0d365660541113213bcbe98898ca426e854ed5c068621c2bdb40d8afca8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 23:03:23 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:03:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:03:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:07:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:07:46 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a833c268b411bbe086c0e386bb1dc725d9199c8cc9eb4bef094c49c29a6dcfb8`  
		Last Modified: Fri, 06 Jan 2017 23:23:53 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680386d0ed139e9a706d4abec0dab68b3de64fcd8a88b21ff13d95eaddfe0a81`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4078922823883082cbe22fa6c583e79c8ce3cf77977ac651e2bab03440f05a`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b841a0971801939e59b2e9e8ea77f905ce8b05b9b46e9b4cd5db829e78594`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 96.2 MB (96217615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9d2babb057131f360488d7f34f6ae3cbdbd88fe3606772ced10fb36333d9e3`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:36f71634062e44b7034338314faf43b6fc0293fd48136d96b641b75e5519f8b3
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5258495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736fb0d365660541113213bcbe98898ca426e854ed5c068621c2bdb40d8afca8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 23:03:23 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:03:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:03:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:07:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:07:46 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a833c268b411bbe086c0e386bb1dc725d9199c8cc9eb4bef094c49c29a6dcfb8`  
		Last Modified: Fri, 06 Jan 2017 23:23:53 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680386d0ed139e9a706d4abec0dab68b3de64fcd8a88b21ff13d95eaddfe0a81`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4078922823883082cbe22fa6c583e79c8ce3cf77977ac651e2bab03440f05a`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b841a0971801939e59b2e9e8ea77f905ce8b05b9b46e9b4cd5db829e78594`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 96.2 MB (96217615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9d2babb057131f360488d7f34f6ae3cbdbd88fe3606772ced10fb36333d9e3`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:36f71634062e44b7034338314faf43b6fc0293fd48136d96b641b75e5519f8b3
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5258495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736fb0d365660541113213bcbe98898ca426e854ed5c068621c2bdb40d8afca8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 06 Jan 2017 23:03:23 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:03:26 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:03:29 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:07:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:07:46 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a833c268b411bbe086c0e386bb1dc725d9199c8cc9eb4bef094c49c29a6dcfb8`  
		Last Modified: Fri, 06 Jan 2017 23:23:53 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680386d0ed139e9a706d4abec0dab68b3de64fcd8a88b21ff13d95eaddfe0a81`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4078922823883082cbe22fa6c583e79c8ce3cf77977ac651e2bab03440f05a`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b841a0971801939e59b2e9e8ea77f905ce8b05b9b46e9b4cd5db829e78594`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 96.2 MB (96217615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9d2babb057131f360488d7f34f6ae3cbdbd88fe3606772ced10fb36333d9e3`  
		Last Modified: Fri, 06 Jan 2017 23:23:54 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.4-nanoserver`

```console
$ docker pull golang@sha256:540a2bb7501210f4c0b51783fd1dd0352b3162ebe4333b84b165899af9ef0565
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404276286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7658a443a02b29ebaad7b5f6ec96617f55c2106a2adc3950a06878a5bc4a37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 23:07:49 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:07:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:11:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:11:59 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957133f441e177d86c1332eadd9fda131cb3abdc8b151be3b8c5e3be61e0fa6`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b71c2debbbcf4515987204d22adec00914687fc4bafcc34be53d7fe2848bbc1`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136283b86d79090b52cf211abc288ce90eebb16a6c2f19b3b43151b472dfd3f`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d653ceeeec5dcb25e831e4b183860b01eb98045cc28abdcd4029a704fb5e1`  
		Last Modified: Fri, 06 Jan 2017 23:25:18 GMT  
		Size: 91.0 MB (90967499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035dd4a10d5c0090b002b02dfffdc63bab5c124cfd57d74ecf98bea54cea1655`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:540a2bb7501210f4c0b51783fd1dd0352b3162ebe4333b84b165899af9ef0565
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404276286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7658a443a02b29ebaad7b5f6ec96617f55c2106a2adc3950a06878a5bc4a37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 23:07:49 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:07:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:11:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:11:59 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957133f441e177d86c1332eadd9fda131cb3abdc8b151be3b8c5e3be61e0fa6`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b71c2debbbcf4515987204d22adec00914687fc4bafcc34be53d7fe2848bbc1`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136283b86d79090b52cf211abc288ce90eebb16a6c2f19b3b43151b472dfd3f`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d653ceeeec5dcb25e831e4b183860b01eb98045cc28abdcd4029a704fb5e1`  
		Last Modified: Fri, 06 Jan 2017 23:25:18 GMT  
		Size: 91.0 MB (90967499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035dd4a10d5c0090b002b02dfffdc63bab5c124cfd57d74ecf98bea54cea1655`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:540a2bb7501210f4c0b51783fd1dd0352b3162ebe4333b84b165899af9ef0565
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404276286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7658a443a02b29ebaad7b5f6ec96617f55c2106a2adc3950a06878a5bc4a37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 23:07:49 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:07:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:11:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:11:59 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957133f441e177d86c1332eadd9fda131cb3abdc8b151be3b8c5e3be61e0fa6`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b71c2debbbcf4515987204d22adec00914687fc4bafcc34be53d7fe2848bbc1`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136283b86d79090b52cf211abc288ce90eebb16a6c2f19b3b43151b472dfd3f`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d653ceeeec5dcb25e831e4b183860b01eb98045cc28abdcd4029a704fb5e1`  
		Last Modified: Fri, 06 Jan 2017 23:25:18 GMT  
		Size: 91.0 MB (90967499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035dd4a10d5c0090b002b02dfffdc63bab5c124cfd57d74ecf98bea54cea1655`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:540a2bb7501210f4c0b51783fd1dd0352b3162ebe4333b84b165899af9ef0565
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404276286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7658a443a02b29ebaad7b5f6ec96617f55c2106a2adc3950a06878a5bc4a37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:59:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:59:07 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:59:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 06 Jan 2017 23:07:49 GMT
ENV GOLANG_VERSION=1.7.4
# Fri, 06 Jan 2017 23:07:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Fri, 06 Jan 2017 23:07:53 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Fri, 06 Jan 2017 23:11:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:11:59 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10bf725c5388a1909f7184467b5ec75dbad3ece68508aa5fa4074baa0b20cc6f`  
		Size: 59.8 MB (59752432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ac789562e23199c4fd02daaf1e0e05bd944b4822154f4bcab7bc21961666b8f7`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74dd62bd1af37d015b6358ec20be47f9aea0efbb62392a4a8f5d2f340ee894`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77c06ab3dca1d0c2e755c09e7d313987ca57f874a866e75a0aa4500eef5089`  
		Last Modified: Fri, 06 Jan 2017 23:23:11 GMT  
		Size: 859.6 KB (859605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7957133f441e177d86c1332eadd9fda131cb3abdc8b151be3b8c5e3be61e0fa6`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b71c2debbbcf4515987204d22adec00914687fc4bafcc34be53d7fe2848bbc1`  
		Last Modified: Fri, 06 Jan 2017 23:24:46 GMT  
		Size: 959.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136283b86d79090b52cf211abc288ce90eebb16a6c2f19b3b43151b472dfd3f`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d653ceeeec5dcb25e831e4b183860b01eb98045cc28abdcd4029a704fb5e1`  
		Last Modified: Fri, 06 Jan 2017 23:25:18 GMT  
		Size: 91.0 MB (90967499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035dd4a10d5c0090b002b02dfffdc63bab5c124cfd57d74ecf98bea54cea1655`  
		Last Modified: Fri, 06 Jan 2017 23:24:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1`

```console
$ docker pull golang@sha256:60905eeb96d7cb5f6e5ea19c3a361e11d3dd4a6fa7ffd7e4b0b8646aafde7544
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262266365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163966569c59c43902f92de4e5be0743df91e0f2dc4f6facc6db67f20f7bab37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:50:59 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:11 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:13 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef642a8672eabda611aeb45de8653871dc3db8d4864b82ea8261c1150a5b7`  
		Last Modified: Fri, 13 Jan 2017 18:01:30 GMT  
		Size: 90.2 MB (90218025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7d2299673866cec0531241b5d53caf83ee22b62220aa0f2f3772ae34f56bf8`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2273207770ff61da138106c793c9bc51c5d3b90fbf200b522ca7364917461`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:60905eeb96d7cb5f6e5ea19c3a361e11d3dd4a6fa7ffd7e4b0b8646aafde7544
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262266365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163966569c59c43902f92de4e5be0743df91e0f2dc4f6facc6db67f20f7bab37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:50:59 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:11 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:13 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef642a8672eabda611aeb45de8653871dc3db8d4864b82ea8261c1150a5b7`  
		Last Modified: Fri, 13 Jan 2017 18:01:30 GMT  
		Size: 90.2 MB (90218025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7d2299673866cec0531241b5d53caf83ee22b62220aa0f2f3772ae34f56bf8`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2273207770ff61da138106c793c9bc51c5d3b90fbf200b522ca7364917461`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1-onbuild`

```console
$ docker pull golang@sha256:08280a6f41e2cc636f966ae90d59abcfac9411953be9db55e77c5101ca0951e4
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262266498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41e6ada64e7e1b4fda0ce94bd8182b10ea34ec60df38003d94b81da034d5220`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:50:59 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:11 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:13 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 13 Jan 2017 17:51:16 GMT
RUN mkdir -p /go/src/app
# Fri, 13 Jan 2017 17:51:16 GMT
WORKDIR /go/src/app
# Fri, 13 Jan 2017 17:51:17 GMT
CMD ["go-wrapper" "run"]
# Fri, 13 Jan 2017 17:51:17 GMT
ONBUILD COPY . /go/src/app
# Fri, 13 Jan 2017 17:51:17 GMT
ONBUILD RUN go-wrapper download
# Fri, 13 Jan 2017 17:51:18 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef642a8672eabda611aeb45de8653871dc3db8d4864b82ea8261c1150a5b7`  
		Last Modified: Fri, 13 Jan 2017 18:01:30 GMT  
		Size: 90.2 MB (90218025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7d2299673866cec0531241b5d53caf83ee22b62220aa0f2f3772ae34f56bf8`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2273207770ff61da138106c793c9bc51c5d3b90fbf200b522ca7364917461`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78555daed2199d427bbdd2fed48e8c9bf957912930c1d86d7fde8a1e55803b82`  
		Last Modified: Fri, 13 Jan 2017 18:02:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:08280a6f41e2cc636f966ae90d59abcfac9411953be9db55e77c5101ca0951e4
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262266498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41e6ada64e7e1b4fda0ce94bd8182b10ea34ec60df38003d94b81da034d5220`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:50:59 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:00 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:10 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:11 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:13 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 13 Jan 2017 17:51:16 GMT
RUN mkdir -p /go/src/app
# Fri, 13 Jan 2017 17:51:16 GMT
WORKDIR /go/src/app
# Fri, 13 Jan 2017 17:51:17 GMT
CMD ["go-wrapper" "run"]
# Fri, 13 Jan 2017 17:51:17 GMT
ONBUILD COPY . /go/src/app
# Fri, 13 Jan 2017 17:51:17 GMT
ONBUILD RUN go-wrapper download
# Fri, 13 Jan 2017 17:51:18 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba540d4983533a6b6779ea036bf9b1b04ceea24afe472eab04f559ecdefa65f`  
		Last Modified: Mon, 19 Dec 2016 19:12:57 GMT  
		Size: 59.7 MB (59651758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef642a8672eabda611aeb45de8653871dc3db8d4864b82ea8261c1150a5b7`  
		Last Modified: Fri, 13 Jan 2017 18:01:30 GMT  
		Size: 90.2 MB (90218025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7d2299673866cec0531241b5d53caf83ee22b62220aa0f2f3772ae34f56bf8`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2273207770ff61da138106c793c9bc51c5d3b90fbf200b522ca7364917461`  
		Last Modified: Fri, 13 Jan 2017 18:01:04 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78555daed2199d427bbdd2fed48e8c9bf957912930c1d86d7fde8a1e55803b82`  
		Last Modified: Fri, 13 Jan 2017 18:02:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1-wheezy`

```console
$ docker pull golang@sha256:03e8b58d54c5ffc46156746312c1072b7fde45045e55f7353f7ba21608ae700f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc1-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208215069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df744d26e986902b7968d6975c69105b8e19ae2f9c8457995ab8315486a2fbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:51:19 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:20 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:31 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:32 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:34 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad7e37a3973756cda6cd290d7a59c323b413c829a7728febc68b8f821071861`  
		Last Modified: Fri, 13 Jan 2017 18:02:59 GMT  
		Size: 90.2 MB (90218026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98c0efef2e8487ac70af733e3c7cfacdc9954c6e640739c5d26bddfa5a10a5b`  
		Last Modified: Fri, 13 Jan 2017 18:02:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979dfee38179b96c2279ef7939ff14180dd0f5b60550d7f144edab1d82d47134`  
		Last Modified: Fri, 13 Jan 2017 18:02:34 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-wheezy`

```console
$ docker pull golang@sha256:03e8b58d54c5ffc46156746312c1072b7fde45045e55f7353f7ba21608ae700f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208215069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df744d26e986902b7968d6975c69105b8e19ae2f9c8457995ab8315486a2fbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:51:19 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.linux-amd64.tar.gz
# Fri, 13 Jan 2017 17:51:20 GMT
ENV GOLANG_DOWNLOAD_SHA256=bb8fe0d81161e4a8b0a8b2145ee5f8a60370baf5d48c07a83f6f09e1ad253bec
# Fri, 13 Jan 2017 17:51:31 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 13 Jan 2017 17:51:32 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:51:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:51:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:51:34 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:51:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bc794057d7ac1a292cbfdf72627b80361d421986b8d963888141cbe3a811fa`  
		Last Modified: Mon, 19 Dec 2016 19:14:42 GMT  
		Size: 36.4 MB (36446306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad7e37a3973756cda6cd290d7a59c323b413c829a7728febc68b8f821071861`  
		Last Modified: Fri, 13 Jan 2017 18:02:59 GMT  
		Size: 90.2 MB (90218026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98c0efef2e8487ac70af733e3c7cfacdc9954c6e640739c5d26bddfa5a10a5b`  
		Last Modified: Fri, 13 Jan 2017 18:02:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979dfee38179b96c2279ef7939ff14180dd0f5b60550d7f144edab1d82d47134`  
		Last Modified: Fri, 13 Jan 2017 18:02:34 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1-alpine`

```console
$ docker pull golang@sha256:44e435fc5ff6185728880f8ee2bc355b90bc7ba11457a5e66f5a9625240be85a
```

-	Platforms:
	-	linux; amd64

### `golang:1.8rc1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76923314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0943a06e0ce4824d22028d1d7ef0a9f88b8122ba99ea155f674a607fcaf074`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Jan 2017 17:51:36 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:36 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8rc1.src.tar.gz
# Fri, 13 Jan 2017 17:51:37 GMT
ENV GOLANG_SRC_SHA256=aa25758b754369018c507bbf646dda7839a41ffe4fd85a014c9704d7d8720dda
# Fri, 13 Jan 2017 17:51:37 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 13 Jan 2017 17:52:35 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 13 Jan 2017 17:52:36 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:52:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:52:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:52:38 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:52:39 GMT
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
	-	`sha256:d35b9b7b77696b4193b5ea8542e0682c12bd6be86d959f4cad55de0e57884402`  
		Last Modified: Fri, 13 Jan 2017 18:03:33 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd75c407faab7640cda750d696cfd7c6b67db0996e298fc7d499cdb3e4579f22`  
		Last Modified: Fri, 13 Jan 2017 18:03:58 GMT  
		Size: 74.7 MB (74666587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5fa4e24e4b5fa788e74006cea9c2fe6c09a30b5b1f8e87cd5172902f68f0d2`  
		Last Modified: Fri, 13 Jan 2017 18:03:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa17113f716f784b062f989d5fb267f175d26eb7938a770a5beb2595f8991a7`  
		Last Modified: Fri, 13 Jan 2017 18:03:33 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:44e435fc5ff6185728880f8ee2bc355b90bc7ba11457a5e66f5a9625240be85a
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76923314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0943a06e0ce4824d22028d1d7ef0a9f88b8122ba99ea155f674a607fcaf074`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:05:32 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Jan 2017 17:51:36 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:51:36 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8rc1.src.tar.gz
# Fri, 13 Jan 2017 17:51:37 GMT
ENV GOLANG_SRC_SHA256=aa25758b754369018c507bbf646dda7839a41ffe4fd85a014c9704d7d8720dda
# Fri, 13 Jan 2017 17:51:37 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Fri, 13 Jan 2017 17:52:35 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 13 Jan 2017 17:52:36 GMT
ENV GOPATH=/go
# Fri, 13 Jan 2017 17:52:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 17:52:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Jan 2017 17:52:38 GMT
WORKDIR /go
# Fri, 13 Jan 2017 17:52:39 GMT
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
	-	`sha256:d35b9b7b77696b4193b5ea8542e0682c12bd6be86d959f4cad55de0e57884402`  
		Last Modified: Fri, 13 Jan 2017 18:03:33 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd75c407faab7640cda750d696cfd7c6b67db0996e298fc7d499cdb3e4579f22`  
		Last Modified: Fri, 13 Jan 2017 18:03:58 GMT  
		Size: 74.7 MB (74666587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5fa4e24e4b5fa788e74006cea9c2fe6c09a30b5b1f8e87cd5172902f68f0d2`  
		Last Modified: Fri, 13 Jan 2017 18:03:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa17113f716f784b062f989d5fb267f175d26eb7938a770a5beb2595f8991a7`  
		Last Modified: Fri, 13 Jan 2017 18:03:33 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1-windowsservercore`

```console
$ docker pull golang@sha256:b02afcf41f47c381ad8636cfae7f41c722ac033ba6006177ccfa11e496a6bfb8
```

-	Platforms:
	-	windows; amd64

### `golang:1.8rc1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5264159465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de96a9ba55b42a3d8ba46b929087c6e8fc9a2084da00b3dd1153e493c00b533`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Jan 2017 17:44:56 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:45:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.windows-amd64.zip
# Fri, 13 Jan 2017 17:45:20 GMT
ENV GOLANG_DOWNLOAD_SHA256=6b0fd0b5c78c6534125ea5440b2ee736cd14609e1d41eb45167ff2a37c2718c3
# Fri, 13 Jan 2017 17:53:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jan 2017 17:53:20 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570a4ec8f32ead6860bfac96603d5dacf0eb4032b4368573ba15330b95de1be5`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48118459ff57507abc7a0bae08b0f79499cf9450c5ae30e30d27c3673becb1`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3185178a519979de40be8b44d9e0e59cdffd4ca484300e9a23cc21f4156de6`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bd909d4ca0d8eaf3b08ba8b11780df3866f6182e6b416706eb8fe9a68300d`  
		Last Modified: Fri, 13 Jan 2017 17:59:41 GMT  
		Size: 101.9 MB (101881276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3c80942b759f7664f0b55be4dce8fa0387541db32a53820e7353d84402c6b8`  
		Last Modified: Fri, 13 Jan 2017 17:59:18 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:b02afcf41f47c381ad8636cfae7f41c722ac033ba6006177ccfa11e496a6bfb8
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5264159465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de96a9ba55b42a3d8ba46b929087c6e8fc9a2084da00b3dd1153e493c00b533`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2017 22:50:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 06 Jan 2017 22:50:15 GMT
ENV GIT_VERSION=2.11.0
# Fri, 06 Jan 2017 22:50:18 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Fri, 06 Jan 2017 22:50:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Fri, 06 Jan 2017 22:50:23 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Fri, 06 Jan 2017 22:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 22:54:36 GMT
ENV GOPATH=C:\gopath
# Fri, 06 Jan 2017 22:54:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Jan 2017 17:44:56 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:45:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.windows-amd64.zip
# Fri, 13 Jan 2017 17:45:20 GMT
ENV GOLANG_DOWNLOAD_SHA256=6b0fd0b5c78c6534125ea5440b2ee736cd14609e1d41eb45167ff2a37c2718c3
# Fri, 13 Jan 2017 17:53:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jan 2017 17:53:20 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1e55da04f8d18e53a97b6740d251cd55e834f3cfcf0ddf6a52819509a2e9e54e`  
		Last Modified: Fri, 06 Jan 2017 23:21:55 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f737aa291d8b7f61a89882cd7fd42a137f0fd9f6e43bdca88858f44886159`  
		Last Modified: Fri, 06 Jan 2017 23:21:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c611e733a6ea657f97c17b353e929137bd76ced1a47fb4a4af3d3a7709427da3`  
		Last Modified: Fri, 06 Jan 2017 23:21:48 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321419f7baa4db57a8c0e0348ee7662427847a8d59450a2771e07dfbc46d38e`  
		Last Modified: Fri, 06 Jan 2017 23:21:46 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7999aef6be8487578b8ff60797e1dfefdcb687564fa303a1d85d3ab2d39c76`  
		Last Modified: Fri, 06 Jan 2017 23:21:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9eea1e91d319eeb3c3c55ab1c9b052e65f157fa2692ff17fb1feffc2e99146`  
		Last Modified: Fri, 06 Jan 2017 23:22:52 GMT  
		Size: 228.8 MB (228829164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f7572f095368f4a695a17fb9a139445afa4e99ce1d35978f41c684999f8fec`  
		Last Modified: Fri, 06 Jan 2017 23:21:41 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8195c9b057b6cfc0d644f6d5e6c9a9391b375257f114ad9ada060018181f6978`  
		Last Modified: Fri, 06 Jan 2017 23:21:42 GMT  
		Size: 9.0 MB (9031225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570a4ec8f32ead6860bfac96603d5dacf0eb4032b4368573ba15330b95de1be5`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48118459ff57507abc7a0bae08b0f79499cf9450c5ae30e30d27c3673becb1`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3185178a519979de40be8b44d9e0e59cdffd4ca484300e9a23cc21f4156de6`  
		Last Modified: Fri, 13 Jan 2017 17:59:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bd909d4ca0d8eaf3b08ba8b11780df3866f6182e6b416706eb8fe9a68300d`  
		Last Modified: Fri, 13 Jan 2017 17:59:41 GMT  
		Size: 101.9 MB (101881276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3c80942b759f7664f0b55be4dce8fa0387541db32a53820e7353d84402c6b8`  
		Last Modified: Fri, 13 Jan 2017 17:59:18 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8rc1-nanoserver`

```console
$ docker pull golang@sha256:9f1eca7de94580ff13aedbc6e11930dfa2b0141d233d631296536eb94295619f
```

-	Platforms:
	-	windows; amd64

### `golang:1.8rc1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.0 MB (431041760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3beed55f2293c9dc6480499e0d39dd38de5f30bc2804e83ba338de1f2a25ed`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 13 Jan 2017 17:54:14 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:54:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.windows-amd64.zip
# Fri, 13 Jan 2017 17:54:19 GMT
ENV GOLANG_DOWNLOAD_SHA256=6b0fd0b5c78c6534125ea5440b2ee736cd14609e1d41eb45167ff2a37c2718c3
# Fri, 13 Jan 2017 17:58:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jan 2017 17:58:14 GMT
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
	-	`sha256:811e0589e5f5bf9024c51f5d2217591fc57e1301b3463f31e275c4fc5f510273`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cb3d1f46a2286b4c0e879927daaedd6949839547786b5529fb277c3da63345`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1ff2db7f3161197807f7f3f46ce6076f9a719a8f97ade94ee88484bdd1dbc4`  
		Last Modified: Fri, 13 Jan 2017 17:59:53 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e4a635b39599335ffdb38415a976f38b6a895302c3060eae7cf450e2f539de`  
		Last Modified: Fri, 13 Jan 2017 18:00:15 GMT  
		Size: 96.9 MB (96861848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d487d05ff690cd77602a2a301148e4f1d1f5dcd3c293475957ff78b2b7a3d77`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:9f1eca7de94580ff13aedbc6e11930dfa2b0141d233d631296536eb94295619f
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.0 MB (431041760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3beed55f2293c9dc6480499e0d39dd38de5f30bc2804e83ba338de1f2a25ed`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Jan 2017 17:53:31 GMT
ENV GOPATH=C:\gopath
# Fri, 13 Jan 2017 17:54:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 13 Jan 2017 17:54:14 GMT
ENV GOLANG_VERSION=1.8rc1
# Fri, 13 Jan 2017 17:54:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8rc1.windows-amd64.zip
# Fri, 13 Jan 2017 17:54:19 GMT
ENV GOLANG_DOWNLOAD_SHA256=6b0fd0b5c78c6534125ea5440b2ee736cd14609e1d41eb45167ff2a37c2718c3
# Fri, 13 Jan 2017 17:58:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 13 Jan 2017 17:58:14 GMT
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
	-	`sha256:811e0589e5f5bf9024c51f5d2217591fc57e1301b3463f31e275c4fc5f510273`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cb3d1f46a2286b4c0e879927daaedd6949839547786b5529fb277c3da63345`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1ff2db7f3161197807f7f3f46ce6076f9a719a8f97ade94ee88484bdd1dbc4`  
		Last Modified: Fri, 13 Jan 2017 17:59:53 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e4a635b39599335ffdb38415a976f38b6a895302c3060eae7cf450e2f539de`  
		Last Modified: Fri, 13 Jan 2017 18:00:15 GMT  
		Size: 96.9 MB (96861848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d487d05ff690cd77602a2a301148e4f1d1f5dcd3c293475957ff78b2b7a3d77`  
		Last Modified: Fri, 13 Jan 2017 17:59:54 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
