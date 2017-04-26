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
$ docker pull golang@sha256:036e430b902b1b91070492953992a6784621753c858f7d305f11916b12a5b5b6
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56101cf2abe8e687a30ca01cbdc58e10a0129c09b8df69e0ad9fbb4f9dc320e0`
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
# Wed, 26 Apr 2017 19:53:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:53:54 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:53:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:53:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:53:57 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:53:59 GMT
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
	-	`sha256:80bf2c802733971df3366b919cadad2d0d6c4f26e6c898788429711666a8e066`  
		Last Modified: Wed, 26 Apr 2017 20:02:52 GMT  
		Size: 84.1 MB (84079763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c4df2d435b00cdacd84ef762fc4706063500349b4c59aba12ee2c56469be4`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7040d6ad86c32f280dbab8254f205c57d114c888c8e702deb461dbdca7cd5de7`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:036e430b902b1b91070492953992a6784621753c858f7d305f11916b12a5b5b6
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56101cf2abe8e687a30ca01cbdc58e10a0129c09b8df69e0ad9fbb4f9dc320e0`
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
# Wed, 26 Apr 2017 19:53:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:53:54 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:53:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:53:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:53:57 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:53:59 GMT
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
	-	`sha256:80bf2c802733971df3366b919cadad2d0d6c4f26e6c898788429711666a8e066`  
		Last Modified: Wed, 26 Apr 2017 20:02:52 GMT  
		Size: 84.1 MB (84079763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c4df2d435b00cdacd84ef762fc4706063500349b4c59aba12ee2c56469be4`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7040d6ad86c32f280dbab8254f205c57d114c888c8e702deb461dbdca7cd5de7`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-onbuild`

```console
$ docker pull golang@sha256:1625b6807816a70ee56eea433f66cbcaa9956280f75e615b6007734345f18a36
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884e920f2ce06921bae6aebcf495832dae92bfc1ebd40cc76a9f8c1b06ad65f6`
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
# Wed, 26 Apr 2017 19:53:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:53:54 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:53:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:53:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:53:57 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:53:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:54:20 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:54:21 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:54:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:54:39 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:54:40 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:54:41 GMT
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
	-	`sha256:80bf2c802733971df3366b919cadad2d0d6c4f26e6c898788429711666a8e066`  
		Last Modified: Wed, 26 Apr 2017 20:02:52 GMT  
		Size: 84.1 MB (84079763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c4df2d435b00cdacd84ef762fc4706063500349b4c59aba12ee2c56469be4`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7040d6ad86c32f280dbab8254f205c57d114c888c8e702deb461dbdca7cd5de7`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dad192e69eb07bde8f994a761c4678834869df1d736f31118135924828070ba`  
		Last Modified: Wed, 26 Apr 2017 20:03:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:1625b6807816a70ee56eea433f66cbcaa9956280f75e615b6007734345f18a36
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884e920f2ce06921bae6aebcf495832dae92bfc1ebd40cc76a9f8c1b06ad65f6`
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
# Wed, 26 Apr 2017 19:53:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:53:54 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:53:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:53:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:53:57 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:53:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:54:20 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:54:21 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:54:38 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:54:39 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:54:40 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:54:41 GMT
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
	-	`sha256:80bf2c802733971df3366b919cadad2d0d6c4f26e6c898788429711666a8e066`  
		Last Modified: Wed, 26 Apr 2017 20:02:52 GMT  
		Size: 84.1 MB (84079763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c4df2d435b00cdacd84ef762fc4706063500349b4c59aba12ee2c56469be4`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7040d6ad86c32f280dbab8254f205c57d114c888c8e702deb461dbdca7cd5de7`  
		Last Modified: Wed, 26 Apr 2017 20:02:22 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dad192e69eb07bde8f994a761c4678834869df1d736f31118135924828070ba`  
		Last Modified: Wed, 26 Apr 2017 20:03:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-wheezy`

```console
$ docker pull golang@sha256:2188b03f63eabe94e0a51c9c07ab67b5d558b8766c807293e5ef1f61c7a2501e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8abe4115d7273a5bd5d26d26de5d68e7a31238db4662ef23dc074b6b86fb7d`
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
# Wed, 26 Apr 2017 19:55:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:55:13 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:55:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:55:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:55:17 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:55:19 GMT
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
	-	`sha256:8475b04d2232ba3ec7b18f18210e21a88b28ea2de8bbd975980de4805bee5907`  
		Last Modified: Wed, 26 Apr 2017 20:05:05 GMT  
		Size: 84.1 MB (84079731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772a7a7a960194f3b28a4ccba6b4790bd3856f17f540fb2ddfa04f243b72b691`  
		Last Modified: Wed, 26 Apr 2017 20:04:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f26f948867e37855d3725fa8f099aaa0efd01f9e33a8a7cdb7c9dd132a95c1`  
		Last Modified: Wed, 26 Apr 2017 20:04:39 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:2188b03f63eabe94e0a51c9c07ab67b5d558b8766c807293e5ef1f61c7a2501e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8abe4115d7273a5bd5d26d26de5d68e7a31238db4662ef23dc074b6b86fb7d`
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
# Wed, 26 Apr 2017 19:55:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='ced737e36f2b2017b59f31cce86f50a2519245f017a81b8dce93bf986717e3ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='858df47609594570479ff937e3704c58e06b40e485ce29d7f934eae87b7a4450' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='cf93c8171dda189c226fe337e3aae11db24bd600841caab36c91d753f631aa2b' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3' ;; 		*) goRelArch='src'; goRelSha256='4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:55:13 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:55:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:55:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:55:17 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:55:19 GMT
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
	-	`sha256:8475b04d2232ba3ec7b18f18210e21a88b28ea2de8bbd975980de4805bee5907`  
		Last Modified: Wed, 26 Apr 2017 20:05:05 GMT  
		Size: 84.1 MB (84079731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772a7a7a960194f3b28a4ccba6b4790bd3856f17f540fb2ddfa04f243b72b691`  
		Last Modified: Wed, 26 Apr 2017 20:04:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f26f948867e37855d3725fa8f099aaa0efd01f9e33a8a7cdb7c9dd132a95c1`  
		Last Modified: Wed, 26 Apr 2017 20:04:39 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine`

```console
$ docker pull golang@sha256:950548b5ee6945d32ebcd0f4783dae40b48a258d58ebae5bc2021cab6b133f23
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73656868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dede84922f61bd4b427ba06ed188985e118e5bc11c71514e016b16a82dfa317e`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:52:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:55:43 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:46:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:46:59 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:47:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:47:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:47:18 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:47:19 GMT
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
	-	`sha256:079aac8fa8672b25dbc71143f89a612af4c9d533873c1910494c3dc8ef4bdb28`  
		Last Modified: Wed, 26 Apr 2017 20:05:55 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbdff71fd2a2a98e133c3c76823e29ec9833ec1dbb499bdbd47be691e0941da`  
		Last Modified: Wed, 26 Apr 2017 22:54:14 GMT  
		Size: 71.0 MB (70992249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231363e8286e2d0b7918bd6d02779a124e88f3955994dfd650fb562cae4c7dc`  
		Last Modified: Wed, 26 Apr 2017 22:53:47 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15328ac5d6b9053b1ce1cbf1889534514120004f562297ce0c6ead141f9993a`  
		Last Modified: Wed, 26 Apr 2017 22:53:46 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:950548b5ee6945d32ebcd0f4783dae40b48a258d58ebae5bc2021cab6b133f23
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73656868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dede84922f61bd4b427ba06ed188985e118e5bc11c71514e016b16a82dfa317e`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:52:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:52:45 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:55:43 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:46:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:46:59 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:47:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:47:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:47:18 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:47:19 GMT
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
	-	`sha256:079aac8fa8672b25dbc71143f89a612af4c9d533873c1910494c3dc8ef4bdb28`  
		Last Modified: Wed, 26 Apr 2017 20:05:55 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbdff71fd2a2a98e133c3c76823e29ec9833ec1dbb499bdbd47be691e0941da`  
		Last Modified: Wed, 26 Apr 2017 22:54:14 GMT  
		Size: 71.0 MB (70992249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231363e8286e2d0b7918bd6d02779a124e88f3955994dfd650fb562cae4c7dc`  
		Last Modified: Wed, 26 Apr 2017 22:53:47 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15328ac5d6b9053b1ce1cbf1889534514120004f562297ce0c6ead141f9993a`  
		Last Modified: Wed, 26 Apr 2017 22:53:46 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-alpine3.5`

```console
$ docker pull golang@sha256:f14cb84adca0f9e95040b2732c1eebeb914d515e719ce2cc4a920a817ee6240d
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.5-alpine3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72455841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c363af55cb2afc33a2def2974cf9cfdf0f5025ef1811d41ff6992d1c76434d`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:57:34 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:48:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:49:05 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:49:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:49:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:49:08 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:49:25 GMT
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
	-	`sha256:a9047373235a8e0e869197c02b9992d4704bf20bb0e28ddb470407cba5233c5b`  
		Last Modified: Wed, 26 Apr 2017 20:07:05 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632214db093180702cf0c509eed75e300febdc2910ac4dd1d99f4c384a634313`  
		Last Modified: Wed, 26 Apr 2017 22:55:36 GMT  
		Size: 70.2 MB (70195306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5270a655e5f308da72036a847f429856bc132d97f1ab24d3288b26b043ed51`  
		Last Modified: Wed, 26 Apr 2017 22:55:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198a9f15ba15b3357f633617fcffb3e9f26e62a2a64e2a639d2ac14d94e1290c`  
		Last Modified: Wed, 26 Apr 2017 22:55:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine3.5`

```console
$ docker pull golang@sha256:f14cb84adca0f9e95040b2732c1eebeb914d515e719ce2cc4a920a817ee6240d
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72455841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c363af55cb2afc33a2def2974cf9cfdf0f5025ef1811d41ff6992d1c76434d`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 21:53:46 GMT
ENV GOLANG_VERSION=1.7.5
# Wed, 26 Apr 2017 19:57:34 GMT
COPY multi:492383bd4204895d3e6ddadf141d4ab8fc8e97b0d4df8387b5124fe722039f0d in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:48:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4e834513a2079f8cbbd357502cccaac9507fd00a1efe672375798858ff291815 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:49:05 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:49:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:49:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:49:08 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:49:25 GMT
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
	-	`sha256:a9047373235a8e0e869197c02b9992d4704bf20bb0e28ddb470407cba5233c5b`  
		Last Modified: Wed, 26 Apr 2017 20:07:05 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632214db093180702cf0c509eed75e300febdc2910ac4dd1d99f4c384a634313`  
		Last Modified: Wed, 26 Apr 2017 22:55:36 GMT  
		Size: 70.2 MB (70195306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5270a655e5f308da72036a847f429856bc132d97f1ab24d3288b26b043ed51`  
		Last Modified: Wed, 26 Apr 2017 22:55:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198a9f15ba15b3357f633617fcffb3e9f26e62a2a64e2a639d2ac14d94e1290c`  
		Last Modified: Wed, 26 Apr 2017 22:55:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.5-windowsservercore`

```console
$ docker pull golang@sha256:ddb5f890d3da5663783531475039e77d4e1e14230b3dfe51f56bb360e7fe82a7
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-windowsservercore` - windows; amd64

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

## `golang:1.7.5-nanoserver`

```console
$ docker pull golang@sha256:d7d842052b3bf01b04e1b7c4cf946ceee21f1e84135ff76699de67e758803a93
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.5-nanoserver` - windows; amd64

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

## `golang:1.8.1`

```console
$ docker pull golang@sha256:509642e9d391b14b859ebcf19a1177717c8e04115706df6b03c61712e0f656ea
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0bfafa0452c6398be979f89614b5e3cb5d10e853ccd4f5791c4971a88065e0`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8`

```console
$ docker pull golang@sha256:509642e9d391b14b859ebcf19a1177717c8e04115706df6b03c61712e0f656ea
```

-	Platforms:
	-	linux; amd64

### `golang:1.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0bfafa0452c6398be979f89614b5e3cb5d10e853ccd4f5791c4971a88065e0`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:509642e9d391b14b859ebcf19a1177717c8e04115706df6b03c61712e0f656ea
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0bfafa0452c6398be979f89614b5e3cb5d10e853ccd4f5791c4971a88065e0`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:509642e9d391b14b859ebcf19a1177717c8e04115706df6b03c61712e0f656ea
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0bfafa0452c6398be979f89614b5e3cb5d10e853ccd4f5791c4971a88065e0`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-onbuild`

```console
$ docker pull golang@sha256:566ab6c1ae6be9c4ad5b2b8d745a8a2d8c027b8a1a75f1c3950f17e5bae21476
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85020fdb7b8c00b5a0f1000c171d7dd50c9fa640cfd3f830b457a7f6054ac5b5`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:59:43 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:59:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:59:46 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:59:46 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184687dfb77fb4de99ed979079209834999d3180df24df30a9464791bd51e51`  
		Last Modified: Wed, 26 Apr 2017 20:10:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-onbuild`

```console
$ docker pull golang@sha256:566ab6c1ae6be9c4ad5b2b8d745a8a2d8c027b8a1a75f1c3950f17e5bae21476
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85020fdb7b8c00b5a0f1000c171d7dd50c9fa640cfd3f830b457a7f6054ac5b5`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:59:43 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:59:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:59:46 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:59:46 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184687dfb77fb4de99ed979079209834999d3180df24df30a9464791bd51e51`  
		Last Modified: Wed, 26 Apr 2017 20:10:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:566ab6c1ae6be9c4ad5b2b8d745a8a2d8c027b8a1a75f1c3950f17e5bae21476
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85020fdb7b8c00b5a0f1000c171d7dd50c9fa640cfd3f830b457a7f6054ac5b5`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:59:43 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:59:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:59:46 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:59:46 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184687dfb77fb4de99ed979079209834999d3180df24df30a9464791bd51e51`  
		Last Modified: Wed, 26 Apr 2017 20:10:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:566ab6c1ae6be9c4ad5b2b8d745a8a2d8c027b8a1a75f1c3950f17e5bae21476
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266964293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85020fdb7b8c00b5a0f1000c171d7dd50c9fa640cfd3f830b457a7f6054ac5b5`
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
# Wed, 26 Apr 2017 19:59:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 19:59:19 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 19:59:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 19:59:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 19:59:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 19:59:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:59:43 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
WORKDIR /go/src/app
# Wed, 26 Apr 2017 19:59:44 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Apr 2017 19:59:45 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Apr 2017 19:59:46 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Apr 2017 19:59:46 GMT
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
	-	`sha256:07530c4e04c3fb0201d6185df5695a684cb874e5507cbcf4e00b31b9b3ad7d93`  
		Last Modified: Wed, 26 Apr 2017 20:08:53 GMT  
		Size: 91.3 MB (91279358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679b0a872eb90e147732cc3512da5fe6ad208d3c8c68dcf44b06a468e37f5e`  
		Last Modified: Wed, 26 Apr 2017 20:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3241e48946920e67fcc4a66418c6dd79430f785725b405daad1e1efe39c3f5`  
		Last Modified: Wed, 26 Apr 2017 20:08:24 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184687dfb77fb4de99ed979079209834999d3180df24df30a9464791bd51e51`  
		Last Modified: Wed, 26 Apr 2017 20:10:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-stretch`

```console
$ docker pull golang@sha256:41c3c6d656f8dd0a92b08e00d2560806f3240d886deb306d79899024b4c56270
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255611184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2463f7e100294b0420b2bd59ab1638079df1f508fd3288d0fc7a234705506f`
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
# Wed, 26 Apr 2017 20:00:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 20:00:18 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 20:00:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:00:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 20:00:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 20:00:23 GMT
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
	-	`sha256:587820d67c72d4af98d0f16d4e1773655d3071b6550bb6ea6723b05d578da5bc`  
		Last Modified: Wed, 26 Apr 2017 20:12:52 GMT  
		Size: 91.3 MB (91278481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955b5875dad40e91e6fd2c2d3d2dcc6498f9971ef8e3cd606c07fc773e2fec1`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fddf93e112ad87ca7edf18df7604cc2aca0d4a2e6db1cd08daff00b4d628a32`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-stretch`

```console
$ docker pull golang@sha256:41c3c6d656f8dd0a92b08e00d2560806f3240d886deb306d79899024b4c56270
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255611184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2463f7e100294b0420b2bd59ab1638079df1f508fd3288d0fc7a234705506f`
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
# Wed, 26 Apr 2017 20:00:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 20:00:18 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 20:00:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:00:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 20:00:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 20:00:23 GMT
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
	-	`sha256:587820d67c72d4af98d0f16d4e1773655d3071b6550bb6ea6723b05d578da5bc`  
		Last Modified: Wed, 26 Apr 2017 20:12:52 GMT  
		Size: 91.3 MB (91278481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955b5875dad40e91e6fd2c2d3d2dcc6498f9971ef8e3cd606c07fc773e2fec1`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fddf93e112ad87ca7edf18df7604cc2aca0d4a2e6db1cd08daff00b4d628a32`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:41c3c6d656f8dd0a92b08e00d2560806f3240d886deb306d79899024b4c56270
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255611184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2463f7e100294b0420b2bd59ab1638079df1f508fd3288d0fc7a234705506f`
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
# Wed, 26 Apr 2017 20:00:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 20:00:18 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 20:00:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:00:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 20:00:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 20:00:23 GMT
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
	-	`sha256:587820d67c72d4af98d0f16d4e1773655d3071b6550bb6ea6723b05d578da5bc`  
		Last Modified: Wed, 26 Apr 2017 20:12:52 GMT  
		Size: 91.3 MB (91278481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955b5875dad40e91e6fd2c2d3d2dcc6498f9971ef8e3cd606c07fc773e2fec1`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fddf93e112ad87ca7edf18df7604cc2aca0d4a2e6db1cd08daff00b4d628a32`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:41c3c6d656f8dd0a92b08e00d2560806f3240d886deb306d79899024b4c56270
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255611184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2463f7e100294b0420b2bd59ab1638079df1f508fd3288d0fc7a234705506f`
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
# Wed, 26 Apr 2017 20:00:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 20:00:18 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 20:00:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:00:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 20:00:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 20:00:23 GMT
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
	-	`sha256:587820d67c72d4af98d0f16d4e1773655d3071b6550bb6ea6723b05d578da5bc`  
		Last Modified: Wed, 26 Apr 2017 20:12:52 GMT  
		Size: 91.3 MB (91278481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955b5875dad40e91e6fd2c2d3d2dcc6498f9971ef8e3cd606c07fc773e2fec1`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fddf93e112ad87ca7edf18df7604cc2aca0d4a2e6db1cd08daff00b4d628a32`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-alpine`

```console
$ docker pull golang@sha256:328861d4d36d767d6b6a349d5beda7e5fd372a2b273b0332e9fb9c2ef7ecbac3
```

-	Platforms:
	-	linux; amd64

### `golang:1.8.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f9778d3947538a71ef0006bad29edbeecb698142be6e2ed6b847aae1678d0`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:43 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:51:08 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:51:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:51:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:51:11 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:51:13 GMT
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
	-	`sha256:a6c879fceda05cd3de6e5c96c25bc928628c9b4f7014a125b6dfce1549307a1d`  
		Last Modified: Wed, 26 Apr 2017 20:14:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b616d23b4b9759bc6312aecfa2bb91a0a71c2d1860b1d4aa7dd73337f175084`  
		Last Modified: Wed, 26 Apr 2017 23:02:14 GMT  
		Size: 75.6 MB (75571040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ca3fc2c25c38c0dc65efb04ce49cda960567dcd383bb115e798a2e4307024`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf895cdf2ed0ecb0a893a50635c5a29e5267cc939d203a9cee10a1ad14999a22`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8-alpine`

```console
$ docker pull golang@sha256:328861d4d36d767d6b6a349d5beda7e5fd372a2b273b0332e9fb9c2ef7ecbac3
```

-	Platforms:
	-	linux; amd64

### `golang:1.8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f9778d3947538a71ef0006bad29edbeecb698142be6e2ed6b847aae1678d0`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:43 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:51:08 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:51:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:51:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:51:11 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:51:13 GMT
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
	-	`sha256:a6c879fceda05cd3de6e5c96c25bc928628c9b4f7014a125b6dfce1549307a1d`  
		Last Modified: Wed, 26 Apr 2017 20:14:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b616d23b4b9759bc6312aecfa2bb91a0a71c2d1860b1d4aa7dd73337f175084`  
		Last Modified: Wed, 26 Apr 2017 23:02:14 GMT  
		Size: 75.6 MB (75571040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ca3fc2c25c38c0dc65efb04ce49cda960567dcd383bb115e798a2e4307024`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf895cdf2ed0ecb0a893a50635c5a29e5267cc939d203a9cee10a1ad14999a22`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:328861d4d36d767d6b6a349d5beda7e5fd372a2b273b0332e9fb9c2ef7ecbac3
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f9778d3947538a71ef0006bad29edbeecb698142be6e2ed6b847aae1678d0`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:43 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:51:08 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:51:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:51:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:51:11 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:51:13 GMT
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
	-	`sha256:a6c879fceda05cd3de6e5c96c25bc928628c9b4f7014a125b6dfce1549307a1d`  
		Last Modified: Wed, 26 Apr 2017 20:14:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b616d23b4b9759bc6312aecfa2bb91a0a71c2d1860b1d4aa7dd73337f175084`  
		Last Modified: Wed, 26 Apr 2017 23:02:14 GMT  
		Size: 75.6 MB (75571040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ca3fc2c25c38c0dc65efb04ce49cda960567dcd383bb115e798a2e4307024`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf895cdf2ed0ecb0a893a50635c5a29e5267cc939d203a9cee10a1ad14999a22`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:328861d4d36d767d6b6a349d5beda7e5fd372a2b273b0332e9fb9c2ef7ecbac3
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70f9778d3947538a71ef0006bad29edbeecb698142be6e2ed6b847aae1678d0`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:51:43 GMT
RUN apk add --no-cache ca-certificates
# Fri, 07 Apr 2017 21:59:56 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:43 GMT
COPY file:8bfad5c310fe0639fcf658b30e2f65d04df13ad329573b58a3e782441bb7839c in /go-alpine-patches/ 
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GO386="$(go env GO386)" 		GOARM="$(go env GOARM)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 22:51:08 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 22:51:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 22:51:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 22:51:11 GMT
WORKDIR /go
# Wed, 26 Apr 2017 22:51:13 GMT
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
	-	`sha256:a6c879fceda05cd3de6e5c96c25bc928628c9b4f7014a125b6dfce1549307a1d`  
		Last Modified: Wed, 26 Apr 2017 20:14:37 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b616d23b4b9759bc6312aecfa2bb91a0a71c2d1860b1d4aa7dd73337f175084`  
		Last Modified: Wed, 26 Apr 2017 23:02:14 GMT  
		Size: 75.6 MB (75571040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ca3fc2c25c38c0dc65efb04ce49cda960567dcd383bb115e798a2e4307024`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf895cdf2ed0ecb0a893a50635c5a29e5267cc939d203a9cee10a1ad14999a22`  
		Last Modified: Wed, 26 Apr 2017 23:01:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.8.1-windowsservercore`

```console
$ docker pull golang@sha256:e36c56f9830ae11125921ce0643219dc8a788e427ef12e4504a0b5f7c7f0a932
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.1-windowsservercore` - windows; amd64

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

## `golang:1.8.1-nanoserver`

```console
$ docker pull golang@sha256:6087e6559ecd3da652dea941dcbcfee08b4bd0ad4ed30f0b15d4b39cba20d6bc
```

-	Platforms:
	-	windows; amd64

### `golang:1.8.1-nanoserver` - windows; amd64

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
