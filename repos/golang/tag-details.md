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
-	[`golang:1.8.3`](#golang183)
-	[`golang:1.8`](#golang18)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.8.3-onbuild`](#golang183-onbuild)
-	[`golang:1.8-onbuild`](#golang18-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.8.3-stretch`](#golang183-stretch)
-	[`golang:1.8-stretch`](#golang18-stretch)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:stretch`](#golangstretch)
-	[`golang:1.8.3-alpine`](#golang183-alpine)
-	[`golang:1.8-alpine`](#golang18-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.8.3-windowsservercore`](#golang183-windowsservercore)
-	[`golang:1.8-windowsservercore`](#golang18-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:1.8.3-nanoserver`](#golang183-nanoserver)
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

```console
$ docker pull golang@sha256:086f2fce9672665a434f53fde7bde38df9c5ea83c4ffcf5c0f475df07eb9bf2a
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5362855444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c71c164f5edcc8ce36f75419ccaa8232b6b68f12a9fcd1f42e4ff17711e961`
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
# Tue, 23 May 2017 22:21:22 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:25:16 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '3c648f9b89b7e0ed746c211dbf959aa230c8034506dd70c9852bf0f94d06065d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:25:19 GMT
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
	-	`sha256:525a6942b9b564a25d83e237a73525aa6816858bc50ac1927ac6495e3a9822c7`  
		Last Modified: Tue, 23 May 2017 22:34:12 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e92f6132a6ec3da293992b9231705fdd690950f5509722760b1b94daf429d1`  
		Last Modified: Tue, 23 May 2017 22:34:35 GMT  
		Size: 96.9 MB (96925707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e24f046e67b2d97d88c864728b3cc42818e02a3152fd43738e0c7bc974d4c6`  
		Last Modified: Tue, 23 May 2017 22:34:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:086f2fce9672665a434f53fde7bde38df9c5ea83c4ffcf5c0f475df07eb9bf2a
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5362855444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c71c164f5edcc8ce36f75419ccaa8232b6b68f12a9fcd1f42e4ff17711e961`
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
# Tue, 23 May 2017 22:21:22 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:25:16 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '3c648f9b89b7e0ed746c211dbf959aa230c8034506dd70c9852bf0f94d06065d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:25:19 GMT
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
	-	`sha256:525a6942b9b564a25d83e237a73525aa6816858bc50ac1927ac6495e3a9822c7`  
		Last Modified: Tue, 23 May 2017 22:34:12 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e92f6132a6ec3da293992b9231705fdd690950f5509722760b1b94daf429d1`  
		Last Modified: Tue, 23 May 2017 22:34:35 GMT  
		Size: 96.9 MB (96925707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e24f046e67b2d97d88c864728b3cc42818e02a3152fd43738e0c7bc974d4c6`  
		Last Modified: Tue, 23 May 2017 22:34:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.6-nanoserver`

```console
$ docker pull golang@sha256:f36374dc2ac735079651cfd242ae0339b4ddbf27f80f8258ce90eda4bb0ad999
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.6-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457355138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb9585193c6e36f6d6916c90722a171f826db4f80a7afdf2ab7fc8b78ec023f`
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
# Tue, 23 May 2017 22:25:21 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:27:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '3c648f9b89b7e0ed746c211dbf959aa230c8034506dd70c9852bf0f94d06065d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:28:01 GMT
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
	-	`sha256:4a8169bc0a81bac27959ebf229efd6394638749ea399e6a9a199425f53eb36c2`  
		Last Modified: Tue, 23 May 2017 22:34:46 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a16e52c9108d6da725f9438d875e3e2198147c6ac6ee74d568c8ca7246f9a`  
		Last Modified: Tue, 23 May 2017 22:35:06 GMT  
		Size: 87.7 MB (87738517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e716057388a840ab3a3a33eec537b0c34e4f0fc6b72fa7e6e2f8a8649630011`  
		Last Modified: Tue, 23 May 2017 22:34:46 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-nanoserver`

```console
$ docker pull golang@sha256:f36374dc2ac735079651cfd242ae0339b4ddbf27f80f8258ce90eda4bb0ad999
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457355138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb9585193c6e36f6d6916c90722a171f826db4f80a7afdf2ab7fc8b78ec023f`
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
# Tue, 23 May 2017 22:25:21 GMT
ENV GOLANG_VERSION=1.7.6
# Tue, 23 May 2017 22:27:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '3c648f9b89b7e0ed746c211dbf959aa230c8034506dd70c9852bf0f94d06065d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:28:01 GMT
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
	-	`sha256:4a8169bc0a81bac27959ebf229efd6394638749ea399e6a9a199425f53eb36c2`  
		Last Modified: Tue, 23 May 2017 22:34:46 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a16e52c9108d6da725f9438d875e3e2198147c6ac6ee74d568c8ca7246f9a`  
		Last Modified: Tue, 23 May 2017 22:35:06 GMT  
		Size: 87.7 MB (87738517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e716057388a840ab3a3a33eec537b0c34e4f0fc6b72fa7e6e2f8a8649630011`  
		Last Modified: Tue, 23 May 2017 22:34:46 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3`

```console
$ docker pull golang@sha256:51f988b1a86f528c2e40681175088b5312b96bba9bea0f05bdb7ab504425c52d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c61f0b079641f069a3369803165788f944ef6b520599731274099a342d3467`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:51f988b1a86f528c2e40681175088b5312b96bba9bea0f05bdb7ab504425c52d
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c61f0b079641f069a3369803165788f944ef6b520599731274099a342d3467`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:51f988b1a86f528c2e40681175088b5312b96bba9bea0f05bdb7ab504425c52d
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c61f0b079641f069a3369803165788f944ef6b520599731274099a342d3467`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:51f988b1a86f528c2e40681175088b5312b96bba9bea0f05bdb7ab504425c52d
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c61f0b079641f069a3369803165788f944ef6b520599731274099a342d3467`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-onbuild`

```console
$ docker pull golang@sha256:f7bfa8f7274bb1ac1c590e8a5b0cdd17f32c7a91f0d6d5c309563044b625fb06
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009df987ff700ff2ee2c70a93a0e3c02fa5eba0b5cc774a88a4cfac16ae48776`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 24 May 2017 23:17:25 GMT
RUN mkdir -p /go/src/app
# Wed, 24 May 2017 23:17:25 GMT
WORKDIR /go/src/app
# Wed, 24 May 2017 23:17:26 GMT
CMD ["go-wrapper" "run"]
# Wed, 24 May 2017 23:17:27 GMT
ONBUILD COPY . /go/src/app
# Wed, 24 May 2017 23:17:28 GMT
ONBUILD RUN go-wrapper download
# Wed, 24 May 2017 23:17:28 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed371c80998077e78787e1b2f3a99819939edd56c5f82391ce0c9746b8fd5a`  
		Last Modified: Wed, 24 May 2017 23:26:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:f7bfa8f7274bb1ac1c590e8a5b0cdd17f32c7a91f0d6d5c309563044b625fb06
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009df987ff700ff2ee2c70a93a0e3c02fa5eba0b5cc774a88a4cfac16ae48776`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 24 May 2017 23:17:25 GMT
RUN mkdir -p /go/src/app
# Wed, 24 May 2017 23:17:25 GMT
WORKDIR /go/src/app
# Wed, 24 May 2017 23:17:26 GMT
CMD ["go-wrapper" "run"]
# Wed, 24 May 2017 23:17:27 GMT
ONBUILD COPY . /go/src/app
# Wed, 24 May 2017 23:17:28 GMT
ONBUILD RUN go-wrapper download
# Wed, 24 May 2017 23:17:28 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed371c80998077e78787e1b2f3a99819939edd56c5f82391ce0c9746b8fd5a`  
		Last Modified: Wed, 24 May 2017 23:26:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:f7bfa8f7274bb1ac1c590e8a5b0cdd17f32c7a91f0d6d5c309563044b625fb06
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009df987ff700ff2ee2c70a93a0e3c02fa5eba0b5cc774a88a4cfac16ae48776`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 24 May 2017 23:17:25 GMT
RUN mkdir -p /go/src/app
# Wed, 24 May 2017 23:17:25 GMT
WORKDIR /go/src/app
# Wed, 24 May 2017 23:17:26 GMT
CMD ["go-wrapper" "run"]
# Wed, 24 May 2017 23:17:27 GMT
ONBUILD COPY . /go/src/app
# Wed, 24 May 2017 23:17:28 GMT
ONBUILD RUN go-wrapper download
# Wed, 24 May 2017 23:17:28 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed371c80998077e78787e1b2f3a99819939edd56c5f82391ce0c9746b8fd5a`  
		Last Modified: Wed, 24 May 2017 23:26:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:f7bfa8f7274bb1ac1c590e8a5b0cdd17f32c7a91f0d6d5c309563044b625fb06
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265769833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009df987ff700ff2ee2c70a93a0e3c02fa5eba0b5cc774a88a4cfac16ae48776`
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
# Wed, 24 May 2017 23:16:39 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:16:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:16:57 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:16:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:17:00 GMT
WORKDIR /go
# Wed, 24 May 2017 23:17:02 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 24 May 2017 23:17:25 GMT
RUN mkdir -p /go/src/app
# Wed, 24 May 2017 23:17:25 GMT
WORKDIR /go/src/app
# Wed, 24 May 2017 23:17:26 GMT
CMD ["go-wrapper" "run"]
# Wed, 24 May 2017 23:17:27 GMT
ONBUILD COPY . /go/src/app
# Wed, 24 May 2017 23:17:28 GMT
ONBUILD RUN go-wrapper download
# Wed, 24 May 2017 23:17:28 GMT
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
	-	`sha256:b01dfb81dcfe8030b889460602069784a4399f8fe6d283f005d660d152252d88`  
		Last Modified: Wed, 24 May 2017 23:24:27 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2887fcab405b9ded99e1867483d18c569db198db2be081648d0ee5a5091e9f88`  
		Last Modified: Wed, 24 May 2017 23:24:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bcf38edfe0eda88d8d7dca823df17c96257b04c8a4324ff2eb0c0431176727`  
		Last Modified: Wed, 24 May 2017 23:24:05 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed371c80998077e78787e1b2f3a99819939edd56c5f82391ce0c9746b8fd5a`  
		Last Modified: Wed, 24 May 2017 23:26:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-stretch`

```console
$ docker pull golang@sha256:18bb0707e8a0548c04824981c51b964fcaf488e7cfa3de1c461ffccc5256d834
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254363976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114e401681d410a5d172601aacdcca03fdc4a1794fcdcfb473b81ea5172a4a9b`
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
# Wed, 24 May 2017 23:17:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:18:10 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:18:13 GMT
WORKDIR /go
# Wed, 24 May 2017 23:18:14 GMT
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
	-	`sha256:e12a3e77469fa87dffd97ef3b95e6978f7ba6ea88ad550fd63e8b228f75d3d17`  
		Last Modified: Wed, 24 May 2017 23:27:56 GMT  
		Size: 90.0 MB (90038866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae80fc3f0c0739dc0a8cd3087d12192e9645125cab468627adf54524080e185`  
		Last Modified: Wed, 24 May 2017 23:27:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a665272bebdda381e5e502dc5e2c41fc2d18c21c1e3fd09117ea354f7993d1`  
		Last Modified: Wed, 24 May 2017 23:27:42 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:18bb0707e8a0548c04824981c51b964fcaf488e7cfa3de1c461ffccc5256d834
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254363976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114e401681d410a5d172601aacdcca03fdc4a1794fcdcfb473b81ea5172a4a9b`
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
# Wed, 24 May 2017 23:17:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:18:10 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:18:13 GMT
WORKDIR /go
# Wed, 24 May 2017 23:18:14 GMT
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
	-	`sha256:e12a3e77469fa87dffd97ef3b95e6978f7ba6ea88ad550fd63e8b228f75d3d17`  
		Last Modified: Wed, 24 May 2017 23:27:56 GMT  
		Size: 90.0 MB (90038866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae80fc3f0c0739dc0a8cd3087d12192e9645125cab468627adf54524080e185`  
		Last Modified: Wed, 24 May 2017 23:27:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a665272bebdda381e5e502dc5e2c41fc2d18c21c1e3fd09117ea354f7993d1`  
		Last Modified: Wed, 24 May 2017 23:27:42 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:18bb0707e8a0548c04824981c51b964fcaf488e7cfa3de1c461ffccc5256d834
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254363976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114e401681d410a5d172601aacdcca03fdc4a1794fcdcfb473b81ea5172a4a9b`
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
# Wed, 24 May 2017 23:17:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:18:10 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:18:13 GMT
WORKDIR /go
# Wed, 24 May 2017 23:18:14 GMT
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
	-	`sha256:e12a3e77469fa87dffd97ef3b95e6978f7ba6ea88ad550fd63e8b228f75d3d17`  
		Last Modified: Wed, 24 May 2017 23:27:56 GMT  
		Size: 90.0 MB (90038866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae80fc3f0c0739dc0a8cd3087d12192e9645125cab468627adf54524080e185`  
		Last Modified: Wed, 24 May 2017 23:27:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a665272bebdda381e5e502dc5e2c41fc2d18c21c1e3fd09117ea354f7993d1`  
		Last Modified: Wed, 24 May 2017 23:27:42 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:18bb0707e8a0548c04824981c51b964fcaf488e7cfa3de1c461ffccc5256d834
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254363976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114e401681d410a5d172601aacdcca03fdc4a1794fcdcfb473b81ea5172a4a9b`
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
# Wed, 24 May 2017 23:17:51 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:18:10 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:18:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:18:13 GMT
WORKDIR /go
# Wed, 24 May 2017 23:18:14 GMT
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
	-	`sha256:e12a3e77469fa87dffd97ef3b95e6978f7ba6ea88ad550fd63e8b228f75d3d17`  
		Last Modified: Wed, 24 May 2017 23:27:56 GMT  
		Size: 90.0 MB (90038866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae80fc3f0c0739dc0a8cd3087d12192e9645125cab468627adf54524080e185`  
		Last Modified: Wed, 24 May 2017 23:27:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a665272bebdda381e5e502dc5e2c41fc2d18c21c1e3fd09117ea354f7993d1`  
		Last Modified: Wed, 24 May 2017 23:27:42 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-alpine`

```console
$ docker pull golang@sha256:ea0ceb167d4e37813e0c5be96adbc79daf75900446f3e3e591ca472423365a28
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054e02e2a2f3dfe552b0e501836953b5640f3a78ae241c91562c346b75b57939`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 May 2017 23:18:36 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:37 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 24 May 2017 23:19:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:19:41 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:19:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:19:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:19:44 GMT
WORKDIR /go
# Wed, 24 May 2017 23:19:45 GMT
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
	-	`sha256:cc081931e985797bc4a8e2b855ba056469e2a4162da5e0f6cc9df0728377869b`  
		Last Modified: Wed, 24 May 2017 23:29:33 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19b17b54b08c27a080c6ef3e16408bbd81d8acea61a7e09fea793cc9375b6`  
		Last Modified: Wed, 24 May 2017 23:29:47 GMT  
		Size: 75.6 MB (75627477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19419129ed6d15b965239d7de97296115d478c1e948660876de09ebdd7dfb`  
		Last Modified: Wed, 24 May 2017 23:29:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2559bbfd37255bf1dd06c0feaa01414ab690c978f50796afb913ba5a57ea3f8`  
		Last Modified: Wed, 24 May 2017 23:29:34 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:ea0ceb167d4e37813e0c5be96adbc79daf75900446f3e3e591ca472423365a28
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054e02e2a2f3dfe552b0e501836953b5640f3a78ae241c91562c346b75b57939`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Wed, 24 May 2017 23:18:36 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:18:37 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 24 May 2017 23:19:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 24 May 2017 23:19:41 GMT
ENV GOPATH=/go
# Wed, 24 May 2017 23:19:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 May 2017 23:19:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 24 May 2017 23:19:44 GMT
WORKDIR /go
# Wed, 24 May 2017 23:19:45 GMT
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
	-	`sha256:cc081931e985797bc4a8e2b855ba056469e2a4162da5e0f6cc9df0728377869b`  
		Last Modified: Wed, 24 May 2017 23:29:33 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19b17b54b08c27a080c6ef3e16408bbd81d8acea61a7e09fea793cc9375b6`  
		Last Modified: Wed, 24 May 2017 23:29:47 GMT  
		Size: 75.6 MB (75627477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19419129ed6d15b965239d7de97296115d478c1e948660876de09ebdd7dfb`  
		Last Modified: Wed, 24 May 2017 23:29:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2559bbfd37255bf1dd06c0feaa01414ab690c978f50796afb913ba5a57ea3f8`  
		Last Modified: Wed, 24 May 2017 23:29:34 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:1d45c59eb9fc5970ef6141adf3e2e3b08e93ffffc6d93bb49eca927e9aff88c6
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56145cfd09fc29f04222184981d6d36dd6e6f2a5a6a68eb825e181d217292772`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:21:56 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:21:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 23 May 2017 22:22:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:22:59 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:22:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:23:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:23:02 GMT
WORKDIR /go
# Tue, 23 May 2017 22:23:03 GMT
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
	-	`sha256:f02d26de1829b17329334132052d70b39d5f641ac9dba9ac888aa812fb294bc2`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85d6d1981f0c8e0aa9c6e87d6330d993ff6ec9c026f3fe0c3b0659e0436567`  
		Last Modified: Tue, 23 May 2017 22:35:22 GMT  
		Size: 75.6 MB (75570132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434f26f07fedd309993f234328beef428567c96ad326734b5fafeced95be01e5`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b362bd9d84a7cce2b9fb67f2cf136fd7f314ea429878dd296566ca26282a8e45`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:1d45c59eb9fc5970ef6141adf3e2e3b08e93ffffc6d93bb49eca927e9aff88c6
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56145cfd09fc29f04222184981d6d36dd6e6f2a5a6a68eb825e181d217292772`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:24:07 GMT
RUN apk add --no-cache ca-certificates
# Tue, 23 May 2017 22:21:56 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:21:57 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Tue, 23 May 2017 22:22:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:22:59 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:22:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:23:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:23:02 GMT
WORKDIR /go
# Tue, 23 May 2017 22:23:03 GMT
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
	-	`sha256:f02d26de1829b17329334132052d70b39d5f641ac9dba9ac888aa812fb294bc2`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85d6d1981f0c8e0aa9c6e87d6330d993ff6ec9c026f3fe0c3b0659e0436567`  
		Last Modified: Tue, 23 May 2017 22:35:22 GMT  
		Size: 75.6 MB (75570132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434f26f07fedd309993f234328beef428567c96ad326734b5fafeced95be01e5`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b362bd9d84a7cce2b9fb67f2cf136fd7f314ea429878dd296566ca26282a8e45`  
		Last Modified: Tue, 23 May 2017 22:35:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-windowsservercore`

```console
$ docker pull golang@sha256:070d5ae011e52315a3a92528e75c61a6931baad4ec4525966e06740e6dce43e9
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368679492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b648944b381b9d1f7c05ab2b6a8d1017880df5f9aa1e774d7a5d549c1b1c263`
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
# Wed, 24 May 2017 23:16:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:19:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:19:07 GMT
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
	-	`sha256:5b331d15aa621885c086c370b0acd3f098bb7061187021ec2f4042218deb2ff1`  
		Last Modified: Wed, 24 May 2017 23:22:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c632a99d7492e69b58a43144c119720fdd94bb23e568ad093cb2a701c88a3d2`  
		Last Modified: Wed, 24 May 2017 23:22:32 GMT  
		Size: 102.7 MB (102749745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0476df5a9b09e1b23f2d2d3db74cbbc07083f6d83e6678edc6299d22f6a9040d`  
		Last Modified: Wed, 24 May 2017 23:22:10 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-windowsservercore`

```console
$ docker pull golang@sha256:070d5ae011e52315a3a92528e75c61a6931baad4ec4525966e06740e6dce43e9
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368679492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b648944b381b9d1f7c05ab2b6a8d1017880df5f9aa1e774d7a5d549c1b1c263`
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
# Wed, 24 May 2017 23:16:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:19:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:19:07 GMT
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
	-	`sha256:5b331d15aa621885c086c370b0acd3f098bb7061187021ec2f4042218deb2ff1`  
		Last Modified: Wed, 24 May 2017 23:22:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c632a99d7492e69b58a43144c119720fdd94bb23e568ad093cb2a701c88a3d2`  
		Last Modified: Wed, 24 May 2017 23:22:32 GMT  
		Size: 102.7 MB (102749745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0476df5a9b09e1b23f2d2d3db74cbbc07083f6d83e6678edc6299d22f6a9040d`  
		Last Modified: Wed, 24 May 2017 23:22:10 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:070d5ae011e52315a3a92528e75c61a6931baad4ec4525966e06740e6dce43e9
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368679492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b648944b381b9d1f7c05ab2b6a8d1017880df5f9aa1e774d7a5d549c1b1c263`
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
# Wed, 24 May 2017 23:16:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:19:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:19:07 GMT
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
	-	`sha256:5b331d15aa621885c086c370b0acd3f098bb7061187021ec2f4042218deb2ff1`  
		Last Modified: Wed, 24 May 2017 23:22:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c632a99d7492e69b58a43144c119720fdd94bb23e568ad093cb2a701c88a3d2`  
		Last Modified: Wed, 24 May 2017 23:22:32 GMT  
		Size: 102.7 MB (102749745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0476df5a9b09e1b23f2d2d3db74cbbc07083f6d83e6678edc6299d22f6a9040d`  
		Last Modified: Wed, 24 May 2017 23:22:10 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:070d5ae011e52315a3a92528e75c61a6931baad4ec4525966e06740e6dce43e9
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5368679492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b648944b381b9d1f7c05ab2b6a8d1017880df5f9aa1e774d7a5d549c1b1c263`
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
# Wed, 24 May 2017 23:16:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:19:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:19:07 GMT
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
	-	`sha256:5b331d15aa621885c086c370b0acd3f098bb7061187021ec2f4042218deb2ff1`  
		Last Modified: Wed, 24 May 2017 23:22:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c632a99d7492e69b58a43144c119720fdd94bb23e568ad093cb2a701c88a3d2`  
		Last Modified: Wed, 24 May 2017 23:22:32 GMT  
		Size: 102.7 MB (102749745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0476df5a9b09e1b23f2d2d3db74cbbc07083f6d83e6678edc6299d22f6a9040d`  
		Last Modified: Wed, 24 May 2017 23:22:10 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.3-nanoserver`

```console
$ docker pull golang@sha256:8ddbc93866dee49686255220fc0753d5cae182275491106c4523175f70d43288
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.3-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463185928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03466d60814e410ff64bae86dfd788292906e46974f4b8fb91a0cab101834b2`
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
# Wed, 24 May 2017 23:19:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:21:50 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:21:52 GMT
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
	-	`sha256:60e5465cb24caf28a4387aade1953646dbbf2a8712f595243180fba328bf884c`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6bc3f09958aa72bad9bf2fe1cefa30d60dd7429b89757c26e494d7a4f0253`  
		Last Modified: Wed, 24 May 2017 23:23:08 GMT  
		Size: 93.6 MB (93569310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88f4b7b43e6cf9947972b8bdb216e310996e2d8832e21f2c94432b3f9c7bab`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-nanoserver`

```console
$ docker pull golang@sha256:8ddbc93866dee49686255220fc0753d5cae182275491106c4523175f70d43288
```

-	Platforms:
	-	windows; amd64

### `golang:1.8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463185928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03466d60814e410ff64bae86dfd788292906e46974f4b8fb91a0cab101834b2`
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
# Wed, 24 May 2017 23:19:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:21:50 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:21:52 GMT
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
	-	`sha256:60e5465cb24caf28a4387aade1953646dbbf2a8712f595243180fba328bf884c`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6bc3f09958aa72bad9bf2fe1cefa30d60dd7429b89757c26e494d7a4f0253`  
		Last Modified: Wed, 24 May 2017 23:23:08 GMT  
		Size: 93.6 MB (93569310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88f4b7b43e6cf9947972b8bdb216e310996e2d8832e21f2c94432b3f9c7bab`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:8ddbc93866dee49686255220fc0753d5cae182275491106c4523175f70d43288
```

-	Platforms:
	-	windows; amd64

### `golang:1-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463185928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03466d60814e410ff64bae86dfd788292906e46974f4b8fb91a0cab101834b2`
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
# Wed, 24 May 2017 23:19:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:21:50 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:21:52 GMT
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
	-	`sha256:60e5465cb24caf28a4387aade1953646dbbf2a8712f595243180fba328bf884c`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6bc3f09958aa72bad9bf2fe1cefa30d60dd7429b89757c26e494d7a4f0253`  
		Last Modified: Wed, 24 May 2017 23:23:08 GMT  
		Size: 93.6 MB (93569310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88f4b7b43e6cf9947972b8bdb216e310996e2d8832e21f2c94432b3f9c7bab`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:8ddbc93866dee49686255220fc0753d5cae182275491106c4523175f70d43288
```

-	Platforms:
	-	windows; amd64

### `golang:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463185928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03466d60814e410ff64bae86dfd788292906e46974f4b8fb91a0cab101834b2`
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
# Wed, 24 May 2017 23:19:09 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 24 May 2017 23:21:50 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'de026caef4c5b4a74f359737dcb2d14c67ca45c45093755d3b0d2e0ee3aafd96'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 24 May 2017 23:21:52 GMT
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
	-	`sha256:60e5465cb24caf28a4387aade1953646dbbf2a8712f595243180fba328bf884c`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6bc3f09958aa72bad9bf2fe1cefa30d60dd7429b89757c26e494d7a4f0253`  
		Last Modified: Wed, 24 May 2017 23:23:08 GMT  
		Size: 93.6 MB (93569310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88f4b7b43e6cf9947972b8bdb216e310996e2d8832e21f2c94432b3f9c7bab`  
		Last Modified: Wed, 24 May 2017 23:22:50 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
