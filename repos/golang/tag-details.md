<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1.7.6`](#golang176)
-	[`golang:1.7`](#golang17)
-	[`golang:1.7.6-onbuild`](#golang176-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1.7.6-wheezy`](#golang176-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1.7.6-alpine`](#golang176-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1.7.6-alpine3.5`](#golang176-alpine35)
-	[`golang:1.7-alpine3.5`](#golang17-alpine35)
-	[`golang:1.7.6-windowsservercore`](#golang176-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1.7.6-nanoserver`](#golang176-nanoserver)
-	[`golang:1.7-nanoserver`](#golang17-nanoserver)
-	[`golang:1.8.2`](#golang182)
-	[`golang:1.8`](#golang18)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.8.2-onbuild`](#golang182-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.8.2-stretch`](#golang182-stretch)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:stretch`](#golangstretch)
-	[`golang:1.8.2-alpine`](#golang182-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.8.2-windowsservercore`](#golang182-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.8.2-nanoserver`](#golang182-nanoserver)
-	[`golang:1.8-nanoserver`](#golang18-nanoserver)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:nanoserver`](#golangnanoserver)

## `golang:1.7.6`

```console
$ docker pull golang@sha256:9bd56cd1d298b30e79e6f6ea14405c98b6cfb6553e05d2cd8ac02ecfc544dee0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259972768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c85e04ec6fc26b827cd41887ec23a60c18d8d49021749a8686b1636925241c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:15:15 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:15:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:15:30 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:15:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:15:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:15:33 GMT
WORKDIR /go
# Tue, 23 May 2017 22:15:34 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd192f784946c23a693bee67a030fe96d2da4bf62be431943c6a065d28e8df`  
		Last Modified: Tue, 23 May 2017 22:23:54 GMT  
		Size: 84.2 MB (84241903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60800b8e312d4df03de52f0f5aa06b8dba5da74e54b0818e41a108c32345a0cb`  
		Last Modified: Tue, 23 May 2017 22:23:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b685cba29d779ac8b7fdf33f57fd1b7466493badc2efe6eef23046858c3af`  
		Last Modified: Tue, 23 May 2017 22:23:29 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:9bd56cd1d298b30e79e6f6ea14405c98b6cfb6553e05d2cd8ac02ecfc544dee0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259972768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c85e04ec6fc26b827cd41887ec23a60c18d8d49021749a8686b1636925241c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:15:15 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:15:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:15:30 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:15:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:15:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:15:33 GMT
WORKDIR /go
# Tue, 23 May 2017 22:15:34 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd192f784946c23a693bee67a030fe96d2da4bf62be431943c6a065d28e8df`  
		Last Modified: Tue, 23 May 2017 22:23:54 GMT  
		Size: 84.2 MB (84241903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60800b8e312d4df03de52f0f5aa06b8dba5da74e54b0818e41a108c32345a0cb`  
		Last Modified: Tue, 23 May 2017 22:23:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b685cba29d779ac8b7fdf33f57fd1b7466493badc2efe6eef23046858c3af`  
		Last Modified: Tue, 23 May 2017 22:23:29 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-onbuild`

```console
$ docker pull golang@sha256:5796fdf00fc9fe9710200da655fd0f258485796a707686819b9ac62137873820
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.6-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259972901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e7e0fd232945210629e9d377fcdcaa2842b7ef38f37b5f619669da6fd988f1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:15:15 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:15:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:15:30 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:15:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:15:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:15:33 GMT
WORKDIR /go
# Tue, 23 May 2017 22:15:34 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 23 May 2017 22:15:57 GMT
RUN mkdir -p /go/src/app
# Tue, 23 May 2017 22:15:57 GMT
WORKDIR /go/src/app
# Tue, 23 May 2017 22:15:58 GMT
CMD ["go-wrapper" "run"]
# Tue, 23 May 2017 22:15:59 GMT
ONBUILD COPY . /go/src/app
# Tue, 23 May 2017 22:16:00 GMT
ONBUILD RUN go-wrapper download
# Tue, 23 May 2017 22:16:01 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd192f784946c23a693bee67a030fe96d2da4bf62be431943c6a065d28e8df`  
		Last Modified: Tue, 23 May 2017 22:23:54 GMT  
		Size: 84.2 MB (84241903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60800b8e312d4df03de52f0f5aa06b8dba5da74e54b0818e41a108c32345a0cb`  
		Last Modified: Tue, 23 May 2017 22:23:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b685cba29d779ac8b7fdf33f57fd1b7466493badc2efe6eef23046858c3af`  
		Last Modified: Tue, 23 May 2017 22:23:29 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d142590e9ac098b181a6fa93c49963bf3bfd261ffa76d25e73dc5a3a1785a0`  
		Last Modified: Tue, 23 May 2017 22:24:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:5796fdf00fc9fe9710200da655fd0f258485796a707686819b9ac62137873820
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259972901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e7e0fd232945210629e9d377fcdcaa2842b7ef38f37b5f619669da6fd988f1`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:15:15 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:15:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:15:30 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:15:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:15:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:15:33 GMT
WORKDIR /go
# Tue, 23 May 2017 22:15:34 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 23 May 2017 22:15:57 GMT
RUN mkdir -p /go/src/app
# Tue, 23 May 2017 22:15:57 GMT
WORKDIR /go/src/app
# Tue, 23 May 2017 22:15:58 GMT
CMD ["go-wrapper" "run"]
# Tue, 23 May 2017 22:15:59 GMT
ONBUILD COPY . /go/src/app
# Tue, 23 May 2017 22:16:00 GMT
ONBUILD RUN go-wrapper download
# Tue, 23 May 2017 22:16:01 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd192f784946c23a693bee67a030fe96d2da4bf62be431943c6a065d28e8df`  
		Last Modified: Tue, 23 May 2017 22:23:54 GMT  
		Size: 84.2 MB (84241903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60800b8e312d4df03de52f0f5aa06b8dba5da74e54b0818e41a108c32345a0cb`  
		Last Modified: Tue, 23 May 2017 22:23:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b685cba29d779ac8b7fdf33f57fd1b7466493badc2efe6eef23046858c3af`  
		Last Modified: Tue, 23 May 2017 22:23:29 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d142590e9ac098b181a6fa93c49963bf3bfd261ffa76d25e73dc5a3a1785a0`  
		Last Modified: Tue, 23 May 2017 22:24:46 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-wheezy`

```console
$ docker pull golang@sha256:d0410454dc0e340a64b4f0130e9d5c16f5a6aa2fcac3e8e6054c54eda6996af0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.6-wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204428593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b74d1f43f8c93b5aaded5ef13902847f56fc0fe08b8f9613809054c7ddb355`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:16:23 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:16:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:16:40 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:16:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:16:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:16:43 GMT
WORKDIR /go
# Tue, 23 May 2017 22:16:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40534d9a8d06dc2cd8098ed856d92e158c5f56823285a2311b4033c708e1f821`  
		Last Modified: Sat, 13 May 2017 06:04:58 GMT  
		Size: 37.2 MB (37172713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad4d346af814e0f6644ac24b6de86aea599b4f37c1c3ddfb3a21282c63cc999`  
		Last Modified: Tue, 23 May 2017 22:26:04 GMT  
		Size: 84.2 MB (84241859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564ad389e1f7c6964273d1e02a9e7b751a9463b085bd8985371dda1660470d9d`  
		Last Modified: Tue, 23 May 2017 22:25:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400cff049d7f83b580513dd8c9c123c747a2e81d05b008c51eb2e230df1e5df3`  
		Last Modified: Tue, 23 May 2017 22:25:38 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:d0410454dc0e340a64b4f0130e9d5c16f5a6aa2fcac3e8e6054c54eda6996af0
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204428593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b74d1f43f8c93b5aaded5ef13902847f56fc0fe08b8f9613809054c7ddb355`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:16:23 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:16:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b5b602958396f165a3547a1308ab91ae3f2ad8ecb56063571a37aadc2df2332' ;; 		i386) goRelArch='linux-386'; goRelSha256='99f79d4e0f966f492794963ecbf4b08c16a9a268f2c09053a5ce10b343ee4082' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='d692643d1ac4f4dea8fb6d949ffa750e974e63ff0ee6ca2a7c38fc7c90da8b5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='fc5c40fb1f76d0978504b94cd06b5ea6e0e216ba1d494060d081e022540900f8' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='ad5808bf42b014c22dd7646458f631385003049ded0bb6af2efc7f1f79fa29ea' ;; 		*) goRelArch='src'; goRelSha256='1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:16:40 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:16:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:16:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:16:43 GMT
WORKDIR /go
# Tue, 23 May 2017 22:16:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40534d9a8d06dc2cd8098ed856d92e158c5f56823285a2311b4033c708e1f821`  
		Last Modified: Sat, 13 May 2017 06:04:58 GMT  
		Size: 37.2 MB (37172713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad4d346af814e0f6644ac24b6de86aea599b4f37c1c3ddfb3a21282c63cc999`  
		Last Modified: Tue, 23 May 2017 22:26:04 GMT  
		Size: 84.2 MB (84241859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564ad389e1f7c6964273d1e02a9e7b751a9463b085bd8985371dda1660470d9d`  
		Last Modified: Tue, 23 May 2017 22:25:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400cff049d7f83b580513dd8c9c123c747a2e81d05b008c51eb2e230df1e5df3`  
		Last Modified: Tue, 23 May 2017 22:25:38 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-alpine`

```console
$ docker pull golang@sha256:4441ac03c9e1a3665358a80ce983f30476c02b76daa3858dbcfa1f3a7e57ad24
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73723970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb04a8d5f512f6e1d8ca97601724b8a4727794a898ff32d299fcb113b7d0ea40`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:25:32 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:17:06 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:17:08 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Tue, 23 May 2017 22:18:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:18:10 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:18:13 GMT
WORKDIR /go
# Tue, 23 May 2017 22:18:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464640cfc17156986df7bc8fbb277ef98eea58e3fcb863ec3216fe0a823caaf3`  
		Last Modified: Sat, 13 May 2017 06:01:37 GMT  
		Size: 346.8 KB (346795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25dcb6f004a52be801f783c9d897d65377819bbce922fceb1ec0b0cbb38951a`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc972a707e40c6e34b00d7e00ee61e0182c601bf42a36bb35b299828fde19e9`  
		Last Modified: Tue, 23 May 2017 22:27:20 GMT  
		Size: 71.0 MB (70991623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc249244b4a82defe41d7bee59afe4b8f5ee44a01204b6c1f50f502c6bf36c2`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eb456bf0243bbee276e48d177a286d4b59ffb80c118dcd571496e0271f74b`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:4441ac03c9e1a3665358a80ce983f30476c02b76daa3858dbcfa1f3a7e57ad24
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73723970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb04a8d5f512f6e1d8ca97601724b8a4727794a898ff32d299fcb113b7d0ea40`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:25:32 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:17:06 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:17:08 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Tue, 23 May 2017 22:18:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:18:10 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:18:13 GMT
WORKDIR /go
# Tue, 23 May 2017 22:18:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464640cfc17156986df7bc8fbb277ef98eea58e3fcb863ec3216fe0a823caaf3`  
		Last Modified: Sat, 13 May 2017 06:01:37 GMT  
		Size: 346.8 KB (346795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25dcb6f004a52be801f783c9d897d65377819bbce922fceb1ec0b0cbb38951a`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc972a707e40c6e34b00d7e00ee61e0182c601bf42a36bb35b299828fde19e9`  
		Last Modified: Tue, 23 May 2017 22:27:20 GMT  
		Size: 71.0 MB (70991623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc249244b4a82defe41d7bee59afe4b8f5ee44a01204b6c1f50f502c6bf36c2`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eb456bf0243bbee276e48d177a286d4b59ffb80c118dcd571496e0271f74b`  
		Last Modified: Tue, 23 May 2017 22:26:55 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-alpine3.5`

```console
$ docker pull golang@sha256:27b34c78252deff1ef315d5729c4f4f71a3e702244936502546833a2f8aeb01e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.6-alpine3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72515121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc6f37ce40b5f770fddd86cde4cb451faaa212a07b933fa7edce53d861dfb07`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:18:38 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:18:39 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Tue, 23 May 2017 22:19:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:19:35 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:19:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:19:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:19:38 GMT
WORKDIR /go
# Tue, 23 May 2017 22:19:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e374cd375921ec0b5f77b9e779a21bdc1763b1fd44b70b97f02efb83764651e`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c839c98a3e5495cdd6e5dd9fa173a531dfb06d9e72d469c88b1d89843d3dbb23`  
		Last Modified: Tue, 23 May 2017 22:28:34 GMT  
		Size: 70.2 MB (70194083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ca2271c07c089b4e7f061a1c4e73241dc71f1cc9d44f6c3846734421f21fc6`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c3bf9ab0ab82c5d162697ec74d18bf36a96ad3238d1828626e9117603e4e5e`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine3.5`

```console
$ docker pull golang@sha256:27b34c78252deff1ef315d5729c4f4f71a3e702244936502546833a2f8aeb01e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72515121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc6f37ce40b5f770fddd86cde4cb451faaa212a07b933fa7edce53d861dfb07`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:18:38 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:18:39 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Tue, 23 May 2017 22:19:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '1a67a4e688673fdff7ba41e73482b0e59ac5bd0f7acf703bc6d50cc775c5baba *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:19:35 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:19:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:19:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:19:38 GMT
WORKDIR /go
# Tue, 23 May 2017 22:19:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e374cd375921ec0b5f77b9e779a21bdc1763b1fd44b70b97f02efb83764651e`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c839c98a3e5495cdd6e5dd9fa173a531dfb06d9e72d469c88b1d89843d3dbb23`  
		Last Modified: Tue, 23 May 2017 22:28:34 GMT  
		Size: 70.2 MB (70194083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ca2271c07c089b4e7f061a1c4e73241dc71f1cc9d44f6c3846734421f21fc6`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c3bf9ab0ab82c5d162697ec74d18bf36a96ad3238d1828626e9117603e4e5e`  
		Last Modified: Tue, 23 May 2017 22:28:10 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-windowsservercore`

**does not exist** (yet?)

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:ddb5f890d3da5663783531475039e77d4e1e14230b3dfe51f56bb360e7fe82a7
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5363176792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cf901d7a90d840adbdf15f6112de8952a3bbc5cc3155c37bbccfbad4a58823`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:30:54 GMT
ENV GIT_VERSION=2.11.1
# Wed, 26 Apr 2017 19:30:56 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 26 Apr 2017 19:30:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 26 Apr 2017 19:31:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 26 Apr 2017 19:32:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:32:23 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:33:08 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 26 Apr 2017 19:33:18 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:37:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:37:18 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d158fdba2085467b086532bdef037f6c3e01a8e4c98b6038fb14e6676a0797da`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb15d8910eb9c1eacc4caa25f5c9b435980b9e21a1b444642cf0fc531ef4256`  
		Last Modified: Wed, 26 Apr 2017 19:51:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47849740fa1bc93b5e949cc3a162272b1bc0195e36f3c1e58ef9f2a5d00bb4be`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468c50bc88aca6818d8e8de7227c48675cac2973b7809d96c2013e35a115967`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bdc1f87b8a2c0ca9fb770410e3ffbf0ab24ac237237b9ea14fec80afd3dd5b`  
		Last Modified: Wed, 26 Apr 2017 19:51:18 GMT  
		Size: 29.4 MB (29367839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d90260aa9b0d30a56d43412e6a7b83fa5c64125602737360844aaf02dbbb64`  
		Last Modified: Wed, 26 Apr 2017 19:50:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b711361369e4436d130eeedbec0cb505eba3f1306c48e03ffde37521925e98`  
		Last Modified: Wed, 26 Apr 2017 19:51:01 GMT  
		Size: 4.7 MB (4664221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fed862a64994e78b831c5c917fef129f09801146e210e38d666fd887dbfd3a5`  
		Last Modified: Wed, 26 Apr 2017 19:50:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2dd2b3494b902feb6af7ff57cb71bbce1c875337f95fe155c676d45d243c23`  
		Last Modified: Wed, 26 Apr 2017 19:51:25 GMT  
		Size: 97.2 MB (97247051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f2337944a1b91fd9f7152dbf471842fdf751120712e4580bce3544b9f5f68c`  
		Last Modified: Wed, 26 Apr 2017 19:50:57 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-nanoserver`

**does not exist** (yet?)

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:d7d842052b3bf01b04e1b7c4cf946ceee21f1e84135ff76699de67e758803a93
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.1 MB (461125166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe981cf47800502695cddef540d5a71072ef33ae109dab1f6c3cd12c1e7bd244`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:37:29 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:38:59 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 26 Apr 2017 19:39:01 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:43:08 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '01eb518cb5a12edd6cf7380ec17ebedee755e3ce7e5362febeebb9e70e45fcaa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:43:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7167106ea4983c584c43960a695bcccefce2f7f604dc1f1cfd26907d00d2f8`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7544570f668ef6cf0e481c4c3a5ea4da04a6611b622ef4dee84176030f987`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 884.5 KB (884544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec1385f1ec931e7a965a16d24fed4b7c5b00349e0b838facd1826e65e8c95f`  
		Last Modified: Wed, 26 Apr 2017 19:51:36 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06604601b49d20433b2ea5fcf2a8367341b8ddd1b16b0cca3bdd55f0182b8667`  
		Last Modified: Wed, 26 Apr 2017 19:51:58 GMT  
		Size: 91.5 MB (91508532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e53a62bd880ab38fbcddafda35c7b3ed9f3ef1d39468655c904c6e38f6878`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2`

```console
$ docker pull golang@sha256:179321dc7700b71cbc03eb109cd0144e1cfb2931a1e970b8cbb6783ef8292ad5
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265722095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2063493320dce4d554a026d15a16130ad0d2657a30788e980312848048a3eff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:20:01 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:20:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='031035eab11903237e02007fc69c085bd4769ff2e2aa5e9af427ddaed3d37e2b' ;; 		i386) goRelArch='linux-386'; goRelSha256='00bc94606610bf25c660d6106fa8e61cca6a276c046f3ceb9091053e99ceebe9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='f091afb86501191270e14a653a056e8e7635e18a72e43cfbd13093b2482ca7a8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='a1942b2833e7d2685d7dbb7ac81c66125c351f24c7f006e8ae4a4283905257d1' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='5477d6c9a4f96fa120847fafa88319d7b56b5d5068e41c3587eebe248b939be7' ;; 		*) goRelArch='src'; goRelSha256='e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:20:17 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:20:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:20:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:20:20 GMT
WORKDIR /go
# Tue, 23 May 2017 22:20:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e85c214a6d14204fa0505efc3127bf70e7a48e941f6b0b774c7cb83c954b0e`  
		Last Modified: Tue, 23 May 2017 22:29:50 GMT  
		Size: 90.0 MB (89991231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b17304476dd5fc2d68caafa63231d098cd0ef47e7f1a39c62bcfa6c70ca7d`  
		Last Modified: Tue, 23 May 2017 22:29:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421938132e69411cdefb982f221b091787ad344fe01d23475935aa677a330ac4`  
		Last Modified: Tue, 23 May 2017 22:29:26 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:179321dc7700b71cbc03eb109cd0144e1cfb2931a1e970b8cbb6783ef8292ad5
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265722095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2063493320dce4d554a026d15a16130ad0d2657a30788e980312848048a3eff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:20:01 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:20:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='031035eab11903237e02007fc69c085bd4769ff2e2aa5e9af427ddaed3d37e2b' ;; 		i386) goRelArch='linux-386'; goRelSha256='00bc94606610bf25c660d6106fa8e61cca6a276c046f3ceb9091053e99ceebe9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='f091afb86501191270e14a653a056e8e7635e18a72e43cfbd13093b2482ca7a8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='a1942b2833e7d2685d7dbb7ac81c66125c351f24c7f006e8ae4a4283905257d1' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='5477d6c9a4f96fa120847fafa88319d7b56b5d5068e41c3587eebe248b939be7' ;; 		*) goRelArch='src'; goRelSha256='e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:20:17 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:20:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:20:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:20:20 GMT
WORKDIR /go
# Tue, 23 May 2017 22:20:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e85c214a6d14204fa0505efc3127bf70e7a48e941f6b0b774c7cb83c954b0e`  
		Last Modified: Tue, 23 May 2017 22:29:50 GMT  
		Size: 90.0 MB (89991231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b17304476dd5fc2d68caafa63231d098cd0ef47e7f1a39c62bcfa6c70ca7d`  
		Last Modified: Tue, 23 May 2017 22:29:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421938132e69411cdefb982f221b091787ad344fe01d23475935aa677a330ac4`  
		Last Modified: Tue, 23 May 2017 22:29:26 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:179321dc7700b71cbc03eb109cd0144e1cfb2931a1e970b8cbb6783ef8292ad5
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265722095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2063493320dce4d554a026d15a16130ad0d2657a30788e980312848048a3eff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:20:01 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:20:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='031035eab11903237e02007fc69c085bd4769ff2e2aa5e9af427ddaed3d37e2b' ;; 		i386) goRelArch='linux-386'; goRelSha256='00bc94606610bf25c660d6106fa8e61cca6a276c046f3ceb9091053e99ceebe9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='f091afb86501191270e14a653a056e8e7635e18a72e43cfbd13093b2482ca7a8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='a1942b2833e7d2685d7dbb7ac81c66125c351f24c7f006e8ae4a4283905257d1' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='5477d6c9a4f96fa120847fafa88319d7b56b5d5068e41c3587eebe248b939be7' ;; 		*) goRelArch='src'; goRelSha256='e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:20:17 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:20:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:20:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:20:20 GMT
WORKDIR /go
# Tue, 23 May 2017 22:20:21 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e85c214a6d14204fa0505efc3127bf70e7a48e941f6b0b774c7cb83c954b0e`  
		Last Modified: Tue, 23 May 2017 22:29:50 GMT  
		Size: 90.0 MB (89991231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b17304476dd5fc2d68caafa63231d098cd0ef47e7f1a39c62bcfa6c70ca7d`  
		Last Modified: Tue, 23 May 2017 22:29:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421938132e69411cdefb982f221b091787ad344fe01d23475935aa677a330ac4`  
		Last Modified: Tue, 23 May 2017 22:29:26 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:fbc08ed49ead169a4e921192f739af69cb45871af3a51f1334e477482816e34e
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267010230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcef75ee6be1e97a41e5add13be92c4ca4c07c6e2cb31d3a94f8386595476f30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:55 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:44:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:44:04 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:44:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:44:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:44:07 GMT
WORKDIR /go
# Tue, 09 May 2017 16:44:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d8fbf72ff869cf8d6c135135f89f96f54f0fc42e95bee36907e9c0f07aacbe`  
		Last Modified: Sat, 13 May 2017 06:06:27 GMT  
		Size: 91.3 MB (91279361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d6884234558835c2b01deca20f22e961be0093d11d7930b2d65aa1a848b1ae`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ade847cc747b6b7d0e6612f230243108b524d878d0c7cb28609a150e4f7b71`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2-onbuild`

**does not exist** (yet?)

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:93fe73ae67ed0f1391b49495bc6a21106617f61f16bbc61a885674d7174d8070
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267010362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3064d3aa065d9716edce7925ab6b859685477f5dab0be089e26a93f812c99436`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:55 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:44:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:44:04 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:44:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:44:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:44:07 GMT
WORKDIR /go
# Tue, 09 May 2017 16:44:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 09 May 2017 16:44:28 GMT
RUN mkdir -p /go/src/app
# Tue, 09 May 2017 16:44:29 GMT
WORKDIR /go/src/app
# Tue, 09 May 2017 16:44:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD COPY . /go/src/app
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 09 May 2017 16:44:32 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d8fbf72ff869cf8d6c135135f89f96f54f0fc42e95bee36907e9c0f07aacbe`  
		Last Modified: Sat, 13 May 2017 06:06:27 GMT  
		Size: 91.3 MB (91279361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d6884234558835c2b01deca20f22e961be0093d11d7930b2d65aa1a848b1ae`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ade847cc747b6b7d0e6612f230243108b524d878d0c7cb28609a150e4f7b71`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5139017b86e50c48c36e299150d86cbc6f6724b746cc8e94aef763440c6723b9`  
		Last Modified: Sat, 13 May 2017 06:10:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:93fe73ae67ed0f1391b49495bc6a21106617f61f16bbc61a885674d7174d8070
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267010362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3064d3aa065d9716edce7925ab6b859685477f5dab0be089e26a93f812c99436`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:55 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:44:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:44:04 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:44:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:44:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:44:07 GMT
WORKDIR /go
# Tue, 09 May 2017 16:44:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 09 May 2017 16:44:28 GMT
RUN mkdir -p /go/src/app
# Tue, 09 May 2017 16:44:29 GMT
WORKDIR /go/src/app
# Tue, 09 May 2017 16:44:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD COPY . /go/src/app
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 09 May 2017 16:44:32 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d8fbf72ff869cf8d6c135135f89f96f54f0fc42e95bee36907e9c0f07aacbe`  
		Last Modified: Sat, 13 May 2017 06:06:27 GMT  
		Size: 91.3 MB (91279361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d6884234558835c2b01deca20f22e961be0093d11d7930b2d65aa1a848b1ae`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ade847cc747b6b7d0e6612f230243108b524d878d0c7cb28609a150e4f7b71`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5139017b86e50c48c36e299150d86cbc6f6724b746cc8e94aef763440c6723b9`  
		Last Modified: Sat, 13 May 2017 06:10:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:93fe73ae67ed0f1391b49495bc6a21106617f61f16bbc61a885674d7174d8070
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267010362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3064d3aa065d9716edce7925ab6b859685477f5dab0be089e26a93f812c99436`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:43:55 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:44:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:44:04 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:44:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:44:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:44:07 GMT
WORKDIR /go
# Tue, 09 May 2017 16:44:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 09 May 2017 16:44:28 GMT
RUN mkdir -p /go/src/app
# Tue, 09 May 2017 16:44:29 GMT
WORKDIR /go/src/app
# Tue, 09 May 2017 16:44:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD COPY . /go/src/app
# Tue, 09 May 2017 16:44:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 09 May 2017 16:44:32 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96109dbc0c87efa909696eecf0f13ae03eb8c777638a5593f49652f718ae27a1`  
		Last Modified: Sat, 13 May 2017 06:00:35 GMT  
		Size: 60.6 MB (60647037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d8fbf72ff869cf8d6c135135f89f96f54f0fc42e95bee36907e9c0f07aacbe`  
		Last Modified: Sat, 13 May 2017 06:06:27 GMT  
		Size: 91.3 MB (91279361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d6884234558835c2b01deca20f22e961be0093d11d7930b2d65aa1a848b1ae`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ade847cc747b6b7d0e6612f230243108b524d878d0c7cb28609a150e4f7b71`  
		Last Modified: Sat, 13 May 2017 06:06:02 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5139017b86e50c48c36e299150d86cbc6f6724b746cc8e94aef763440c6723b9`  
		Last Modified: Sat, 13 May 2017 06:10:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2-stretch`

**does not exist** (yet?)

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:df7b48b3cec6b6cf85b5a1228efd4abd91493f8e27dc1f21176f936291c04f2a
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255603590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5186994bf3798d14fc5ebc14ea4698207c399502e83359ac31c3478826cf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:05 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:45:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:45:15 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:45:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:45:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:45:18 GMT
WORKDIR /go
# Tue, 09 May 2017 16:45:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c70ba758df82f559b006465f9f8df0eaaef21c60458c3ce0765940ebc7e589`  
		Last Modified: Sat, 13 May 2017 06:11:50 GMT  
		Size: 57.2 MB (57176613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2b1d651bafa4a62383da188842ddb621c04830676936d9f1d35eb8b1b9c256`  
		Last Modified: Sat, 13 May 2017 06:12:01 GMT  
		Size: 91.3 MB (91278483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8694ebad76d1e9805eb53cf6b094d025f90cfaaf8a5118c191af417b41e568ac`  
		Last Modified: Sat, 13 May 2017 06:11:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b68bf9607ec9f50cd8041601634b2a29abac4368e9e8b9b2ff4632bc7de2a7d`  
		Last Modified: Sat, 13 May 2017 06:11:35 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:df7b48b3cec6b6cf85b5a1228efd4abd91493f8e27dc1f21176f936291c04f2a
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255603590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5186994bf3798d14fc5ebc14ea4698207c399502e83359ac31c3478826cf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:05 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:45:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:45:15 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:45:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:45:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:45:18 GMT
WORKDIR /go
# Tue, 09 May 2017 16:45:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c70ba758df82f559b006465f9f8df0eaaef21c60458c3ce0765940ebc7e589`  
		Last Modified: Sat, 13 May 2017 06:11:50 GMT  
		Size: 57.2 MB (57176613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2b1d651bafa4a62383da188842ddb621c04830676936d9f1d35eb8b1b9c256`  
		Last Modified: Sat, 13 May 2017 06:12:01 GMT  
		Size: 91.3 MB (91278483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8694ebad76d1e9805eb53cf6b094d025f90cfaaf8a5118c191af417b41e568ac`  
		Last Modified: Sat, 13 May 2017 06:11:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b68bf9607ec9f50cd8041601634b2a29abac4368e9e8b9b2ff4632bc7de2a7d`  
		Last Modified: Sat, 13 May 2017 06:11:35 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:df7b48b3cec6b6cf85b5a1228efd4abd91493f8e27dc1f21176f936291c04f2a
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255603590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5186994bf3798d14fc5ebc14ea4698207c399502e83359ac31c3478826cf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:05 GMT
ENV GOLANG_VERSION=1.8.1
# Tue, 09 May 2017 16:45:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 May 2017 16:45:15 GMT
ENV GOPATH=/go
# Tue, 09 May 2017 16:45:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 16:45:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 May 2017 16:45:18 GMT
WORKDIR /go
# Tue, 09 May 2017 16:45:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c70ba758df82f559b006465f9f8df0eaaef21c60458c3ce0765940ebc7e589`  
		Last Modified: Sat, 13 May 2017 06:11:50 GMT  
		Size: 57.2 MB (57176613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2b1d651bafa4a62383da188842ddb621c04830676936d9f1d35eb8b1b9c256`  
		Last Modified: Sat, 13 May 2017 06:12:01 GMT  
		Size: 91.3 MB (91278483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8694ebad76d1e9805eb53cf6b094d025f90cfaaf8a5118c191af417b41e568ac`  
		Last Modified: Sat, 13 May 2017 06:11:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b68bf9607ec9f50cd8041601634b2a29abac4368e9e8b9b2ff4632bc7de2a7d`  
		Last Modified: Sat, 13 May 2017 06:11:35 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2-alpine`

**does not exist** (yet?)

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:f71f38bdcf35dcb0fbe69730cb775bfd29662373d8c5ac1f6c684ee95f88e716
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77891719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32efc118745e4fc5f66ae43095efa8e93cb402839d151031681919aeeeb0fca4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 10 May 2017 21:24:08 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 10 May 2017 21:24:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 10 May 2017 21:25:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 May 2017 21:25:05 GMT
ENV GOPATH=/go
# Wed, 10 May 2017 21:25:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:25:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 May 2017 21:25:08 GMT
WORKDIR /go
# Wed, 10 May 2017 21:25:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a62b0235a60c0947241995d3a66c9e4e926a74ae7f09d7c8c1cfa885c0df75c`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c614fb8fc9673d7e03a9140c42d73853e7a5649721acafe0bf11611f0967c`  
		Last Modified: Sat, 13 May 2017 06:08:27 GMT  
		Size: 75.6 MB (75571234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d597756bf372c71fe3fe9d47dd97bc4ce9180479f6ae6f75a81eb348215fb`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa96bfc65001f7a702665d41b361cbbe5edf28457dd28ff21373cfe2bef796f`  
		Last Modified: Sat, 13 May 2017 06:08:03 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:f71f38bdcf35dcb0fbe69730cb775bfd29662373d8c5ac1f6c684ee95f88e716
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77891719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32efc118745e4fc5f66ae43095efa8e93cb402839d151031681919aeeeb0fca4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 10 May 2017 21:24:08 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 10 May 2017 21:24:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 10 May 2017 21:25:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 May 2017 21:25:05 GMT
ENV GOPATH=/go
# Wed, 10 May 2017 21:25:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:25:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 May 2017 21:25:08 GMT
WORKDIR /go
# Wed, 10 May 2017 21:25:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a62b0235a60c0947241995d3a66c9e4e926a74ae7f09d7c8c1cfa885c0df75c`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c614fb8fc9673d7e03a9140c42d73853e7a5649721acafe0bf11611f0967c`  
		Last Modified: Sat, 13 May 2017 06:08:27 GMT  
		Size: 75.6 MB (75571234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d597756bf372c71fe3fe9d47dd97bc4ce9180479f6ae6f75a81eb348215fb`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa96bfc65001f7a702665d41b361cbbe5edf28457dd28ff21373cfe2bef796f`  
		Last Modified: Sat, 13 May 2017 06:08:03 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:f71f38bdcf35dcb0fbe69730cb775bfd29662373d8c5ac1f6c684ee95f88e716
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77891719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32efc118745e4fc5f66ae43095efa8e93cb402839d151031681919aeeeb0fca4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 10 May 2017 21:24:08 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 10 May 2017 21:24:09 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 10 May 2017 21:25:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 May 2017 21:25:05 GMT
ENV GOPATH=/go
# Wed, 10 May 2017 21:25:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:25:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 May 2017 21:25:08 GMT
WORKDIR /go
# Wed, 10 May 2017 21:25:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d39540db512a5aa9cf27531e02fc904294e3d7618b8d75b8bd1fd6909bf20`  
		Last Modified: Sat, 13 May 2017 06:02:48 GMT  
		Size: 350.6 KB (350620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a62b0235a60c0947241995d3a66c9e4e926a74ae7f09d7c8c1cfa885c0df75c`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c614fb8fc9673d7e03a9140c42d73853e7a5649721acafe0bf11611f0967c`  
		Last Modified: Sat, 13 May 2017 06:08:27 GMT  
		Size: 75.6 MB (75571234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028d597756bf372c71fe3fe9d47dd97bc4ce9180479f6ae6f75a81eb348215fb`  
		Last Modified: Sat, 13 May 2017 06:08:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa96bfc65001f7a702665d41b361cbbe5edf28457dd28ff21373cfe2bef796f`  
		Last Modified: Sat, 13 May 2017 06:08:03 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2-windowsservercore`

**does not exist** (yet?)

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:e36c56f9830ae11125921ce0643219dc8a788e427ef12e4504a0b5f7c7f0a932
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368939364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c195afaf3e8246c13a66b4cc70121724edc02202f59b61694182c1eb7cd9f7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:30:54 GMT
ENV GIT_VERSION=2.11.1
# Wed, 26 Apr 2017 19:30:56 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 26 Apr 2017 19:30:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 26 Apr 2017 19:31:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 26 Apr 2017 19:32:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:32:23 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:33:08 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 26 Apr 2017 19:43:16 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:48:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:48:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d158fdba2085467b086532bdef037f6c3e01a8e4c98b6038fb14e6676a0797da`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb15d8910eb9c1eacc4caa25f5c9b435980b9e21a1b444642cf0fc531ef4256`  
		Last Modified: Wed, 26 Apr 2017 19:51:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47849740fa1bc93b5e949cc3a162272b1bc0195e36f3c1e58ef9f2a5d00bb4be`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468c50bc88aca6818d8e8de7227c48675cac2973b7809d96c2013e35a115967`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bdc1f87b8a2c0ca9fb770410e3ffbf0ab24ac237237b9ea14fec80afd3dd5b`  
		Last Modified: Wed, 26 Apr 2017 19:51:18 GMT  
		Size: 29.4 MB (29367839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d90260aa9b0d30a56d43412e6a7b83fa5c64125602737360844aaf02dbbb64`  
		Last Modified: Wed, 26 Apr 2017 19:50:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b711361369e4436d130eeedbec0cb505eba3f1306c48e03ffde37521925e98`  
		Last Modified: Wed, 26 Apr 2017 19:51:01 GMT  
		Size: 4.7 MB (4664221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211b7208218491a1c66287ca00350b04325a5e5507cb0de1826316610b962f57`  
		Last Modified: Wed, 26 Apr 2017 19:52:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041191af8ad283417788c79b2ed05d9e68b988d913315547766bd31338f348dc`  
		Last Modified: Wed, 26 Apr 2017 19:52:29 GMT  
		Size: 103.0 MB (103009612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbc2c0ec41c062f5bad8537b4f4d02596593d116284c9b34dd44e599babcad`  
		Last Modified: Wed, 26 Apr 2017 19:52:08 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:e36c56f9830ae11125921ce0643219dc8a788e427ef12e4504a0b5f7c7f0a932
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368939364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c195afaf3e8246c13a66b4cc70121724edc02202f59b61694182c1eb7cd9f7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:30:54 GMT
ENV GIT_VERSION=2.11.1
# Wed, 26 Apr 2017 19:30:56 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 26 Apr 2017 19:30:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 26 Apr 2017 19:31:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 26 Apr 2017 19:32:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:32:23 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:33:08 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 26 Apr 2017 19:43:16 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:48:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:48:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d158fdba2085467b086532bdef037f6c3e01a8e4c98b6038fb14e6676a0797da`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb15d8910eb9c1eacc4caa25f5c9b435980b9e21a1b444642cf0fc531ef4256`  
		Last Modified: Wed, 26 Apr 2017 19:51:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47849740fa1bc93b5e949cc3a162272b1bc0195e36f3c1e58ef9f2a5d00bb4be`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468c50bc88aca6818d8e8de7227c48675cac2973b7809d96c2013e35a115967`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bdc1f87b8a2c0ca9fb770410e3ffbf0ab24ac237237b9ea14fec80afd3dd5b`  
		Last Modified: Wed, 26 Apr 2017 19:51:18 GMT  
		Size: 29.4 MB (29367839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d90260aa9b0d30a56d43412e6a7b83fa5c64125602737360844aaf02dbbb64`  
		Last Modified: Wed, 26 Apr 2017 19:50:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b711361369e4436d130eeedbec0cb505eba3f1306c48e03ffde37521925e98`  
		Last Modified: Wed, 26 Apr 2017 19:51:01 GMT  
		Size: 4.7 MB (4664221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211b7208218491a1c66287ca00350b04325a5e5507cb0de1826316610b962f57`  
		Last Modified: Wed, 26 Apr 2017 19:52:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041191af8ad283417788c79b2ed05d9e68b988d913315547766bd31338f348dc`  
		Last Modified: Wed, 26 Apr 2017 19:52:29 GMT  
		Size: 103.0 MB (103009612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbc2c0ec41c062f5bad8537b4f4d02596593d116284c9b34dd44e599babcad`  
		Last Modified: Wed, 26 Apr 2017 19:52:08 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:e36c56f9830ae11125921ce0643219dc8a788e427ef12e4504a0b5f7c7f0a932
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368939364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c195afaf3e8246c13a66b4cc70121724edc02202f59b61694182c1eb7cd9f7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:30:54 GMT
ENV GIT_VERSION=2.11.1
# Wed, 26 Apr 2017 19:30:56 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 26 Apr 2017 19:30:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 26 Apr 2017 19:31:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 26 Apr 2017 19:32:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:32:23 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:33:08 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 26 Apr 2017 19:43:16 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:48:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:48:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d158fdba2085467b086532bdef037f6c3e01a8e4c98b6038fb14e6676a0797da`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb15d8910eb9c1eacc4caa25f5c9b435980b9e21a1b444642cf0fc531ef4256`  
		Last Modified: Wed, 26 Apr 2017 19:51:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47849740fa1bc93b5e949cc3a162272b1bc0195e36f3c1e58ef9f2a5d00bb4be`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468c50bc88aca6818d8e8de7227c48675cac2973b7809d96c2013e35a115967`  
		Last Modified: Wed, 26 Apr 2017 19:51:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bdc1f87b8a2c0ca9fb770410e3ffbf0ab24ac237237b9ea14fec80afd3dd5b`  
		Last Modified: Wed, 26 Apr 2017 19:51:18 GMT  
		Size: 29.4 MB (29367839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d90260aa9b0d30a56d43412e6a7b83fa5c64125602737360844aaf02dbbb64`  
		Last Modified: Wed, 26 Apr 2017 19:50:58 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b711361369e4436d130eeedbec0cb505eba3f1306c48e03ffde37521925e98`  
		Last Modified: Wed, 26 Apr 2017 19:51:01 GMT  
		Size: 4.7 MB (4664221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211b7208218491a1c66287ca00350b04325a5e5507cb0de1826316610b962f57`  
		Last Modified: Wed, 26 Apr 2017 19:52:10 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041191af8ad283417788c79b2ed05d9e68b988d913315547766bd31338f348dc`  
		Last Modified: Wed, 26 Apr 2017 19:52:29 GMT  
		Size: 103.0 MB (103009612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbc2c0ec41c062f5bad8537b4f4d02596593d116284c9b34dd44e599babcad`  
		Last Modified: Wed, 26 Apr 2017 19:52:08 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.2-nanoserver`

**does not exist** (yet?)

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:6087e6559ecd3da652dea941dcbcfee08b4bd0ad4ed30f0b15d4b39cba20d6bc
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.4 MB (463449758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73f22679998a5db1370d3b16e506fca1cfcb2aad66c3c421baeacdcc8df141e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:37:29 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:38:59 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 26 Apr 2017 19:48:11 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:50:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:50:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7167106ea4983c584c43960a695bcccefce2f7f604dc1f1cfd26907d00d2f8`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7544570f668ef6cf0e481c4c3a5ea4da04a6611b622ef4dee84176030f987`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 884.5 KB (884544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6082b32115dbdc0929c88898be3da1706823f71e6ef47a10acd7e80211285afb`  
		Last Modified: Wed, 26 Apr 2017 19:52:47 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18596ca4e2005c2c4705d63e85dda7190b4a67caf9f444b8da41f7e98a3f18`  
		Last Modified: Wed, 26 Apr 2017 19:53:05 GMT  
		Size: 93.8 MB (93833125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f2c5e8342207af2c93a8548b12c251b35e3a4514dea9575a2fcad5b208d128`  
		Last Modified: Wed, 26 Apr 2017 19:52:46 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6087e6559ecd3da652dea941dcbcfee08b4bd0ad4ed30f0b15d4b39cba20d6bc
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.4 MB (463449758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73f22679998a5db1370d3b16e506fca1cfcb2aad66c3c421baeacdcc8df141e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:37:29 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:38:59 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 26 Apr 2017 19:48:11 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:50:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:50:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7167106ea4983c584c43960a695bcccefce2f7f604dc1f1cfd26907d00d2f8`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7544570f668ef6cf0e481c4c3a5ea4da04a6611b622ef4dee84176030f987`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 884.5 KB (884544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6082b32115dbdc0929c88898be3da1706823f71e6ef47a10acd7e80211285afb`  
		Last Modified: Wed, 26 Apr 2017 19:52:47 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18596ca4e2005c2c4705d63e85dda7190b4a67caf9f444b8da41f7e98a3f18`  
		Last Modified: Wed, 26 Apr 2017 19:53:05 GMT  
		Size: 93.8 MB (93833125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f2c5e8342207af2c93a8548b12c251b35e3a4514dea9575a2fcad5b208d128`  
		Last Modified: Wed, 26 Apr 2017 19:52:46 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:6087e6559ecd3da652dea941dcbcfee08b4bd0ad4ed30f0b15d4b39cba20d6bc
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.4 MB (463449758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73f22679998a5db1370d3b16e506fca1cfcb2aad66c3c421baeacdcc8df141e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Apr 2017 19:37:29 GMT
ENV GOPATH=C:\gopath
# Wed, 26 Apr 2017 19:38:59 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 26 Apr 2017 19:48:11 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 19:50:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bb6f0fbef8b80c382455af8699bfbb7fe89256d4baf06d927feaeceb7342e4ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:50:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7167106ea4983c584c43960a695bcccefce2f7f604dc1f1cfd26907d00d2f8`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7544570f668ef6cf0e481c4c3a5ea4da04a6611b622ef4dee84176030f987`  
		Last Modified: Wed, 26 Apr 2017 19:51:37 GMT  
		Size: 884.5 KB (884544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6082b32115dbdc0929c88898be3da1706823f71e6ef47a10acd7e80211285afb`  
		Last Modified: Wed, 26 Apr 2017 19:52:47 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18596ca4e2005c2c4705d63e85dda7190b4a67caf9f444b8da41f7e98a3f18`  
		Last Modified: Wed, 26 Apr 2017 19:53:05 GMT  
		Size: 93.8 MB (93833125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f2c5e8342207af2c93a8548b12c251b35e3a4514dea9575a2fcad5b208d128`  
		Last Modified: Wed, 26 Apr 2017 19:52:46 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
