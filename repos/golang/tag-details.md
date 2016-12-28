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
-	[`golang:1.8beta2`](#golang18beta2)
-	[`golang:1.8`](#golang18)
-	[`golang:1.8beta2-onbuild`](#golang18beta2-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1.8beta2-wheezy`](#golang18beta2-wheezy)
-	[`golang:1.8-wheezy`](#golang18-wheezy)
-	[`golang:1.8beta2-alpine`](#golang18beta2-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1.8beta2-windowsservercore`](#golang18beta2-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1.8beta2-nanoserver`](#golang18beta2-nanoserver)
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
$ docker pull golang@sha256:85afabfbdd7d821f9be2eff10f1e3b8d405a130735c4db848e198d51190d2de7
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4953235292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f06819d21385569736b544c846a052aca90c96057d8802e3faf462c0f1328`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:09:17 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 07 Dec 2016 19:09:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:09:22 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 07 Dec 2016 19:13:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:13:25 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e172fd242ed0a4ee202b78d112c8a875cdcc2d05e53809e57c0eba677a701c7`  
		Last Modified: Wed, 07 Dec 2016 19:22:41 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbcbe864930af21cde6a40b0a5d1cb3bb6817a47c965b3dcad351abd67aeb1b`  
		Last Modified: Wed, 07 Dec 2016 19:22:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e93a6a2fb3428208500a5b9b4956a6d67c60bb3a91e828efb5958563923ce`  
		Last Modified: Wed, 07 Dec 2016 19:22:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cbbb25b649c892638ecf1654f361d63c86e4a3fd6bf2eb0d718c98d614fc6f`  
		Last Modified: Wed, 07 Dec 2016 19:23:33 GMT  
		Size: 99.0 MB (98998774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0795c70c5f813bf699750cef35a000efd531d3c339b5367eb5d203c1feabc489`  
		Last Modified: Wed, 07 Dec 2016 19:22:42 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:85afabfbdd7d821f9be2eff10f1e3b8d405a130735c4db848e198d51190d2de7
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4953235292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f06819d21385569736b544c846a052aca90c96057d8802e3faf462c0f1328`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:09:17 GMT
ENV GOLANG_VERSION=1.6.4
# Wed, 07 Dec 2016 19:09:19 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:09:22 GMT
ENV GOLANG_DOWNLOAD_SHA256=4fc871ac03f5ca5978ad2ae860192e6a39dc2b1286afbe86f4947faab84ab231
# Wed, 07 Dec 2016 19:13:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:13:25 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e172fd242ed0a4ee202b78d112c8a875cdcc2d05e53809e57c0eba677a701c7`  
		Last Modified: Wed, 07 Dec 2016 19:22:41 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbcbe864930af21cde6a40b0a5d1cb3bb6817a47c965b3dcad351abd67aeb1b`  
		Last Modified: Wed, 07 Dec 2016 19:22:41 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e93a6a2fb3428208500a5b9b4956a6d67c60bb3a91e828efb5958563923ce`  
		Last Modified: Wed, 07 Dec 2016 19:22:42 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cbbb25b649c892638ecf1654f361d63c86e4a3fd6bf2eb0d718c98d614fc6f`  
		Last Modified: Wed, 07 Dec 2016 19:23:33 GMT  
		Size: 99.0 MB (98998774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0795c70c5f813bf699750cef35a000efd531d3c339b5367eb5d203c1feabc489`  
		Last Modified: Wed, 07 Dec 2016 19:22:42 GMT  
		Size: 1.2 KB (1217 bytes)  
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

## `golang:1.7.4-windowsservercore`

```console
$ docker pull golang@sha256:8397119a3de0ef77970de076627a3a22df0f55f16034c365918d249968ee1306
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4950321183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890406aa34a3c4b4827a2b6a3b4d0cdc98d815389d92ed5af3a145dc288078b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:13:31 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 07 Dec 2016 19:13:34 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:13:36 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Wed, 07 Dec 2016 19:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:17:52 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9585712d49b099dbca790951c9a5bb419350c6890436906d8f96902bedcb4f5c`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9273024d693739fbdbc56c9798f1c3c3ae95c9a85c2c7f40b91b4eb667a1a33`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803f64826436951cce1c10eca55f9bb8d06022dfd8e7082120fe516f5bf1e39`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add5c4a54ddd2dbe43db21dcbf685d6ceda1ecf6368e07c0f83507a0387e9ca`  
		Last Modified: Wed, 07 Dec 2016 19:25:40 GMT  
		Size: 96.1 MB (96084664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3e477327e9dcb9ef0279f03d6c3497b259868b047e0cfad666089437d0f47`  
		Last Modified: Wed, 07 Dec 2016 19:24:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:8397119a3de0ef77970de076627a3a22df0f55f16034c365918d249968ee1306
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4950321183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890406aa34a3c4b4827a2b6a3b4d0cdc98d815389d92ed5af3a145dc288078b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:13:31 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 07 Dec 2016 19:13:34 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:13:36 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Wed, 07 Dec 2016 19:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:17:52 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9585712d49b099dbca790951c9a5bb419350c6890436906d8f96902bedcb4f5c`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9273024d693739fbdbc56c9798f1c3c3ae95c9a85c2c7f40b91b4eb667a1a33`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803f64826436951cce1c10eca55f9bb8d06022dfd8e7082120fe516f5bf1e39`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add5c4a54ddd2dbe43db21dcbf685d6ceda1ecf6368e07c0f83507a0387e9ca`  
		Last Modified: Wed, 07 Dec 2016 19:25:40 GMT  
		Size: 96.1 MB (96084664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3e477327e9dcb9ef0279f03d6c3497b259868b047e0cfad666089437d0f47`  
		Last Modified: Wed, 07 Dec 2016 19:24:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:8397119a3de0ef77970de076627a3a22df0f55f16034c365918d249968ee1306
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4950321183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890406aa34a3c4b4827a2b6a3b4d0cdc98d815389d92ed5af3a145dc288078b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:13:31 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 07 Dec 2016 19:13:34 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:13:36 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Wed, 07 Dec 2016 19:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:17:52 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9585712d49b099dbca790951c9a5bb419350c6890436906d8f96902bedcb4f5c`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9273024d693739fbdbc56c9798f1c3c3ae95c9a85c2c7f40b91b4eb667a1a33`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803f64826436951cce1c10eca55f9bb8d06022dfd8e7082120fe516f5bf1e39`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add5c4a54ddd2dbe43db21dcbf685d6ceda1ecf6368e07c0f83507a0387e9ca`  
		Last Modified: Wed, 07 Dec 2016 19:25:40 GMT  
		Size: 96.1 MB (96084664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3e477327e9dcb9ef0279f03d6c3497b259868b047e0cfad666089437d0f47`  
		Last Modified: Wed, 07 Dec 2016 19:24:20 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:8397119a3de0ef77970de076627a3a22df0f55f16034c365918d249968ee1306
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4950321183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890406aa34a3c4b4827a2b6a3b4d0cdc98d815389d92ed5af3a145dc288078b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Dec 2016 19:13:31 GMT
ENV GOLANG_VERSION=1.7.4
# Wed, 07 Dec 2016 19:13:34 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.windows-amd64.zip
# Wed, 07 Dec 2016 19:13:36 GMT
ENV GOLANG_DOWNLOAD_SHA256=36739164fed38a6da908813aba48d72fb22fea923de5611a85a81135b7cfceb9
# Wed, 07 Dec 2016 19:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:17:52 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9585712d49b099dbca790951c9a5bb419350c6890436906d8f96902bedcb4f5c`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9273024d693739fbdbc56c9798f1c3c3ae95c9a85c2c7f40b91b4eb667a1a33`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803f64826436951cce1c10eca55f9bb8d06022dfd8e7082120fe516f5bf1e39`  
		Last Modified: Wed, 07 Dec 2016 19:24:18 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add5c4a54ddd2dbe43db21dcbf685d6ceda1ecf6368e07c0f83507a0387e9ca`  
		Last Modified: Wed, 07 Dec 2016 19:25:40 GMT  
		Size: 96.1 MB (96084664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3e477327e9dcb9ef0279f03d6c3497b259868b047e0cfad666089437d0f47`  
		Last Modified: Wed, 07 Dec 2016 19:24:20 GMT  
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

## `golang:1.8beta2`

```console
$ docker pull golang@sha256:65d5b920991341db59aaa4300ce8caa6ed3304443f715d152951acd51dd9d44c
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260683836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c32786e482af99361687665131c578ce8a65bd03137af46af54730d82163e8`
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
# Mon, 19 Dec 2016 22:20:44 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:20:56 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:20:56 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:20:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:20:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:20:58 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:20:59 GMT
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
	-	`sha256:2a10223986a7ab9f691eb459e7292db826ba7d921684da030a91df0e917cea47`  
		Last Modified: Mon, 19 Dec 2016 22:29:43 GMT  
		Size: 88.6 MB (88635491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60742e2d9d5d6a20869f52e3c99dad3b8e9e4b72878623ada32a035e1877b524`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1984bbd1a8fee42ea6c7b923776f4b2f8f7986f8c22b4dcd75fbe53613bb5b`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:65d5b920991341db59aaa4300ce8caa6ed3304443f715d152951acd51dd9d44c
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260683836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c32786e482af99361687665131c578ce8a65bd03137af46af54730d82163e8`
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
# Mon, 19 Dec 2016 22:20:44 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:20:56 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:20:56 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:20:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:20:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:20:58 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:20:59 GMT
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
	-	`sha256:2a10223986a7ab9f691eb459e7292db826ba7d921684da030a91df0e917cea47`  
		Last Modified: Mon, 19 Dec 2016 22:29:43 GMT  
		Size: 88.6 MB (88635491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60742e2d9d5d6a20869f52e3c99dad3b8e9e4b72878623ada32a035e1877b524`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1984bbd1a8fee42ea6c7b923776f4b2f8f7986f8c22b4dcd75fbe53613bb5b`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta2-onbuild`

```console
$ docker pull golang@sha256:f18ba6fa8e3f1ded102f37a26b7dfa9db741569cf875e8fa774ffedbec3eef1a
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260683969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fddf7ad6e2a910f72492a122029ef5f659eafdb912b5c754135ef4b40fb885a`
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
# Mon, 19 Dec 2016 22:20:44 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:20:56 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:20:56 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:20:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:20:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:20:58 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:20:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:21:00 GMT
RUN mkdir -p /go/src/app
# Mon, 19 Dec 2016 22:21:01 GMT
WORKDIR /go/src/app
# Mon, 19 Dec 2016 22:21:01 GMT
CMD ["go-wrapper" "run"]
# Mon, 19 Dec 2016 22:21:01 GMT
ONBUILD COPY . /go/src/app
# Mon, 19 Dec 2016 22:21:02 GMT
ONBUILD RUN go-wrapper download
# Mon, 19 Dec 2016 22:21:02 GMT
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
	-	`sha256:2a10223986a7ab9f691eb459e7292db826ba7d921684da030a91df0e917cea47`  
		Last Modified: Mon, 19 Dec 2016 22:29:43 GMT  
		Size: 88.6 MB (88635491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60742e2d9d5d6a20869f52e3c99dad3b8e9e4b72878623ada32a035e1877b524`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1984bbd1a8fee42ea6c7b923776f4b2f8f7986f8c22b4dcd75fbe53613bb5b`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e688e82b335f2eb5525036988f523f50b4a37a8d9c46b2b14ae91dc4db8371d`  
		Last Modified: Mon, 19 Dec 2016 22:30:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:f18ba6fa8e3f1ded102f37a26b7dfa9db741569cf875e8fa774ffedbec3eef1a
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260683969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fddf7ad6e2a910f72492a122029ef5f659eafdb912b5c754135ef4b40fb885a`
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
# Mon, 19 Dec 2016 22:20:44 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:20:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:20:56 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:20:56 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:20:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:20:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:20:58 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:20:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:21:00 GMT
RUN mkdir -p /go/src/app
# Mon, 19 Dec 2016 22:21:01 GMT
WORKDIR /go/src/app
# Mon, 19 Dec 2016 22:21:01 GMT
CMD ["go-wrapper" "run"]
# Mon, 19 Dec 2016 22:21:01 GMT
ONBUILD COPY . /go/src/app
# Mon, 19 Dec 2016 22:21:02 GMT
ONBUILD RUN go-wrapper download
# Mon, 19 Dec 2016 22:21:02 GMT
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
	-	`sha256:2a10223986a7ab9f691eb459e7292db826ba7d921684da030a91df0e917cea47`  
		Last Modified: Mon, 19 Dec 2016 22:29:43 GMT  
		Size: 88.6 MB (88635491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60742e2d9d5d6a20869f52e3c99dad3b8e9e4b72878623ada32a035e1877b524`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1984bbd1a8fee42ea6c7b923776f4b2f8f7986f8c22b4dcd75fbe53613bb5b`  
		Last Modified: Mon, 19 Dec 2016 22:29:17 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e688e82b335f2eb5525036988f523f50b4a37a8d9c46b2b14ae91dc4db8371d`  
		Last Modified: Mon, 19 Dec 2016 22:30:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta2-wheezy`

```console
$ docker pull golang@sha256:d09fa8f7f5bc39a9579cdbdad08c327cae65b23cd148d9607755667eb329fe4f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta2-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206632514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f1c89e91e8bf718603946fb79ac8de36e7f4b8155b4b71bf2a32118e0254`
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
# Mon, 19 Dec 2016 22:21:03 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:21:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:21:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:21:15 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:21:16 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:21:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:21:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:21:18 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:21:19 GMT
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
	-	`sha256:90c8e7db4639cd8738040f9fbebbf892fdbb2dff2b9876b83a638bbd6b59a43f`  
		Last Modified: Mon, 19 Dec 2016 22:31:37 GMT  
		Size: 88.6 MB (88635467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a14fdbfe88ce6e77f6fbf65969ecfa31f28ed8c168c9da1e48bee26d4f19a5f`  
		Last Modified: Mon, 19 Dec 2016 22:31:09 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7c115466ad75ae7a13a26d6cbf7bc1f50ace66732ab189da0b6363b460284e`  
		Last Modified: Mon, 19 Dec 2016 22:31:09 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-wheezy`

```console
$ docker pull golang@sha256:d09fa8f7f5bc39a9579cdbdad08c327cae65b23cd148d9607755667eb329fe4f
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206632514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f1c89e91e8bf718603946fb79ac8de36e7f4b8155b4b71bf2a32118e0254`
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
# Mon, 19 Dec 2016 22:21:03 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 22:21:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.linux-amd64.tar.gz
# Mon, 19 Dec 2016 22:21:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=4cb9bfb0e82d665871b84070929d6eeb4d51af6bedbc8fdd3df5766e937ef84c
# Mon, 19 Dec 2016 22:21:15 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 19 Dec 2016 22:21:16 GMT
ENV GOPATH=/go
# Mon, 19 Dec 2016 22:21:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 22:21:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Dec 2016 22:21:18 GMT
WORKDIR /go
# Mon, 19 Dec 2016 22:21:19 GMT
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
	-	`sha256:90c8e7db4639cd8738040f9fbebbf892fdbb2dff2b9876b83a638bbd6b59a43f`  
		Last Modified: Mon, 19 Dec 2016 22:31:37 GMT  
		Size: 88.6 MB (88635467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a14fdbfe88ce6e77f6fbf65969ecfa31f28ed8c168c9da1e48bee26d4f19a5f`  
		Last Modified: Mon, 19 Dec 2016 22:31:09 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7c115466ad75ae7a13a26d6cbf7bc1f50ace66732ab189da0b6363b460284e`  
		Last Modified: Mon, 19 Dec 2016 22:31:09 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta2-alpine`

```console
$ docker pull golang@sha256:631bfa812d405fef187f866a6e17d424d289a8108723534d546771af48c3e024
```

-	Platforms:
	-	linux; amd64

### `golang:1.8beta2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9babf3059ecb5450ab0e01727e0929a0b31ce24209b0603217ab25d32bee60ca`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:03:49 GMT
ENV GOLANG_VERSION=1.8beta2
# Tue, 27 Dec 2016 19:03:50 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8beta2.src.tar.gz
# Tue, 27 Dec 2016 19:03:50 GMT
ENV GOLANG_SRC_SHA256=f5d8252f7746c77df0beb205b8f8b158362ad1718e1a2195d122ac43859f5930
# Tue, 27 Dec 2016 19:03:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Tue, 27 Dec 2016 19:04:54 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:04:55 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:04:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:04:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:04:57 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:04:57 GMT
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
	-	`sha256:642b9af321004d6cf5d56b52b256f31475101d5cc82b3c6900834b3efb80ff17`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297bb690d155a99595aa0fd625ddd1833d539b9922338a725847ad56062dd6cc`  
		Last Modified: Tue, 27 Dec 2016 19:07:56 GMT  
		Size: 75.7 MB (75706255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a40e6dc97397c9b9cba78862cfed481a32492b585a8e8761a3b3a03a2584`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fee5fa3a65c8b4ebe1f7b88aa2c0ee7bfc23422be41ccea7987f5c10e5800`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:631bfa812d405fef187f866a6e17d424d289a8108723534d546771af48c3e024
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9babf3059ecb5450ab0e01727e0929a0b31ce24209b0603217ab25d32bee60ca`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:00:00 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Dec 2016 19:03:49 GMT
ENV GOLANG_VERSION=1.8beta2
# Tue, 27 Dec 2016 19:03:50 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.8beta2.src.tar.gz
# Tue, 27 Dec 2016 19:03:50 GMT
ENV GOLANG_SRC_SHA256=f5d8252f7746c77df0beb205b8f8b158362ad1718e1a2195d122ac43859f5930
# Tue, 27 Dec 2016 19:03:51 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in / 
# Tue, 27 Dec 2016 19:04:54 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:04:55 GMT
ENV GOPATH=/go
# Tue, 27 Dec 2016 19:04:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Dec 2016 19:04:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Dec 2016 19:04:57 GMT
WORKDIR /go
# Tue, 27 Dec 2016 19:04:57 GMT
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
	-	`sha256:642b9af321004d6cf5d56b52b256f31475101d5cc82b3c6900834b3efb80ff17`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297bb690d155a99595aa0fd625ddd1833d539b9922338a725847ad56062dd6cc`  
		Last Modified: Tue, 27 Dec 2016 19:07:56 GMT  
		Size: 75.7 MB (75706255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a40e6dc97397c9b9cba78862cfed481a32492b585a8e8761a3b3a03a2584`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fee5fa3a65c8b4ebe1f7b88aa2c0ee7bfc23422be41ccea7987f5c10e5800`  
		Last Modified: Tue, 27 Dec 2016 19:07:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta2-windowsservercore`

```console
$ docker pull golang@sha256:7f75304af53f420d31e56bc516afbc7d9240fe4490f11544c92826656053dd75
```

-	Platforms:
	-	windows; amd64

### `golang:1.8beta2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4955821623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75aebfce6f8f212298373a4a422de9b4b25bea4f1e16174deb585aadfda42a8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 19 Dec 2016 19:18:50 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 19:18:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.windows-amd64.zip
# Mon, 19 Dec 2016 19:18:55 GMT
ENV GOLANG_DOWNLOAD_SHA256=98e44960cdbdd9f42fb466bfd02b347a78fab9b9e48744ea86e02d9d19439ee1
# Mon, 19 Dec 2016 19:25:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 19 Dec 2016 19:25:43 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aebae8b7bfb60d66e1395893eba2d0d412d034d37725cefb018e7df6487197f`  
		Last Modified: Mon, 19 Dec 2016 19:33:00 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c946b9876464265946ff0854a877ab30b8554554b1cab3f84d4c59d3555c2843`  
		Last Modified: Mon, 19 Dec 2016 19:33:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f844fa3f6f1d19149405620dc8740369f16852538d596dd8df742d419b90c9`  
		Last Modified: Mon, 19 Dec 2016 19:33:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0690b312f5fcbfe11f57c7558d6c99a0179e346d1bc51cdb8a8f6aafb63264d`  
		Last Modified: Mon, 19 Dec 2016 19:33:25 GMT  
		Size: 101.6 MB (101585109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6af9d87c8e19764ccd1dabc1e648612dfa255bd00726c70929702c667cb9a`  
		Last Modified: Mon, 19 Dec 2016 19:33:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:7f75304af53f420d31e56bc516afbc7d9240fe4490f11544c92826656053dd75
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4955821623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75aebfce6f8f212298373a4a422de9b4b25bea4f1e16174deb585aadfda42a8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:38:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Dec 2016 19:04:35 GMT
ENV GIT_VERSION=2.11.0
# Wed, 07 Dec 2016 19:04:37 GMT
ENV GIT_TAG=v2.11.0.windows.1
# Wed, 07 Dec 2016 19:04:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe
# Wed, 07 Dec 2016 19:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=fd1937ea8468461d35d9cabfcdd2daa3a74509dc9213c43c2b9615e8f0b85086
# Wed, 07 Dec 2016 19:08:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Dec 2016 19:08:51 GMT
ENV GOPATH=C:\gopath
# Wed, 07 Dec 2016 19:09:14 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 19 Dec 2016 19:18:50 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 19:18:52 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.windows-amd64.zip
# Mon, 19 Dec 2016 19:18:55 GMT
ENV GOLANG_DOWNLOAD_SHA256=98e44960cdbdd9f42fb466bfd02b347a78fab9b9e48744ea86e02d9d19439ee1
# Mon, 19 Dec 2016 19:25:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 19 Dec 2016 19:25:43 GMT
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
	-	`sha256:31f3eeac6a9cf5de7589ca5d04a6bdad635fa8119a57396f1295ed9281be4d91`  
		Last Modified: Wed, 07 Dec 2016 19:23:00 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1601856818ffb47a6b00b190d75f421b78c992478cecd1e71da0328291138565`  
		Last Modified: Wed, 07 Dec 2016 19:22:54 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad2276f400f6794ce4db833400ab6929750a42c4784784cefc25065ccf39476`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c954d7fdbe9041a8f57e7ea9b78e57fdc80851be276ae15748f946dd496f`  
		Last Modified: Wed, 07 Dec 2016 19:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d3cbf0e0f246e09a2e0d8ba9d15eb13e131f47ee5976fa0c24519c9c9d558e`  
		Last Modified: Wed, 07 Dec 2016 19:23:59 GMT  
		Size: 228.7 MB (228658971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9406f96f0c1ea3e2dd48b68dcd30341f5f610285b683d436c4b1b66ed73d14`  
		Last Modified: Wed, 07 Dec 2016 19:22:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ac9e301a08beecf1a26058ed6bf843e5672c34573952edf067e54a5a6f8b8`  
		Last Modified: Wed, 07 Dec 2016 19:22:53 GMT  
		Size: 8.9 MB (8888943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aebae8b7bfb60d66e1395893eba2d0d412d034d37725cefb018e7df6487197f`  
		Last Modified: Mon, 19 Dec 2016 19:33:00 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c946b9876464265946ff0854a877ab30b8554554b1cab3f84d4c59d3555c2843`  
		Last Modified: Mon, 19 Dec 2016 19:33:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f844fa3f6f1d19149405620dc8740369f16852538d596dd8df742d419b90c9`  
		Last Modified: Mon, 19 Dec 2016 19:33:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0690b312f5fcbfe11f57c7558d6c99a0179e346d1bc51cdb8a8f6aafb63264d`  
		Last Modified: Mon, 19 Dec 2016 19:33:25 GMT  
		Size: 101.6 MB (101585109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6af9d87c8e19764ccd1dabc1e648612dfa255bd00726c70929702c667cb9a`  
		Last Modified: Mon, 19 Dec 2016 19:33:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8beta2-nanoserver`

```console
$ docker pull golang@sha256:793ece7d07f3dec1e425542f58af0c28ba1323b8c1c540031890b86fa37af4be
```

-	Platforms:
	-	windows; amd64

### `golang:1.8beta2-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440568952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cc2b972b6eecd86e518b1060b8988ed839642eb6b291e78d3df98313026762`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 19 Dec 2016 19:25:45 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 19:25:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.windows-amd64.zip
# Mon, 19 Dec 2016 19:25:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=98e44960cdbdd9f42fb466bfd02b347a78fab9b9e48744ea86e02d9d19439ee1
# Mon, 19 Dec 2016 19:32:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 19 Dec 2016 19:32:13 GMT
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
	-	`sha256:70ec80188525acbc38d74063e1c40e38214e07aa73340723948378cb5319a819`  
		Last Modified: Mon, 19 Dec 2016 19:33:37 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bc4c4fdccb66cdd96bb199187e34cc204ad8de57168895e49d8df2efb13ba`  
		Last Modified: Mon, 19 Dec 2016 19:33:39 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdedc809027b75bd2570c7c8a7c631f1c6151026ea00d7eb33e4598c8d2652d3`  
		Last Modified: Mon, 19 Dec 2016 19:33:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574c52669c35b13f6cc4937eb42016b745cd2c459d52eb59c1f03b87ebfc218c`  
		Last Modified: Mon, 19 Dec 2016 19:34:00 GMT  
		Size: 96.5 MB (96531566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b465e25782dc6ebef9d1c15e233332a46698a3de4e4fb0bcfd99da624ceeacfd`  
		Last Modified: Mon, 19 Dec 2016 19:33:36 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:793ece7d07f3dec1e425542f58af0c28ba1323b8c1c540031890b86fa37af4be
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440568952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cc2b972b6eecd86e518b1060b8988ed839642eb6b291e78d3df98313026762`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 01 Dec 2016 23:47:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Dec 2016 23:47:17 GMT
ENV GOPATH=C:\gopath
# Thu, 01 Dec 2016 23:47:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 19 Dec 2016 19:25:45 GMT
ENV GOLANG_VERSION=1.8beta2
# Mon, 19 Dec 2016 19:25:47 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8beta2.windows-amd64.zip
# Mon, 19 Dec 2016 19:25:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=98e44960cdbdd9f42fb466bfd02b347a78fab9b9e48744ea86e02d9d19439ee1
# Mon, 19 Dec 2016 19:32:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GOLANG_DOWNLOAD_URL -OutFile 'go.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 19 Dec 2016 19:32:13 GMT
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
	-	`sha256:70ec80188525acbc38d74063e1c40e38214e07aa73340723948378cb5319a819`  
		Last Modified: Mon, 19 Dec 2016 19:33:37 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1bc4c4fdccb66cdd96bb199187e34cc204ad8de57168895e49d8df2efb13ba`  
		Last Modified: Mon, 19 Dec 2016 19:33:39 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdedc809027b75bd2570c7c8a7c631f1c6151026ea00d7eb33e4598c8d2652d3`  
		Last Modified: Mon, 19 Dec 2016 19:33:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574c52669c35b13f6cc4937eb42016b745cd2c459d52eb59c1f03b87ebfc218c`  
		Last Modified: Mon, 19 Dec 2016 19:34:00 GMT  
		Size: 96.5 MB (96531566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b465e25782dc6ebef9d1c15e233332a46698a3de4e4fb0bcfd99da624ceeacfd`  
		Last Modified: Mon, 19 Dec 2016 19:33:36 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
