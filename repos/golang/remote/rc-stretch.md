## `golang:rc-stretch`

```console
$ docker pull golang@sha256:8a24194807905a36ea0b2ac1a1706e4a47b26645653327b63344c3297756b4e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:rc-stretch` - linux; amd64

```console
$ docker pull golang@sha256:d91693da34090d9d14224a4e5ed6eb27a0900f05c01f32b3b60f6b88249883c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (288041448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e97307ee2ff7a7a554278b38b7712e6816d6054545373c587f4b8ac4603567`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:21:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 01:59:55 GMT
ENV GOLANG_VERSION=1.10rc1
# Fri, 26 Jan 2018 02:00:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='c10d3cc7760bf3799037bd39027bbffdc568aea21d6fe60fe833373289c7b7c6' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='2c1ed86e3cbf9d9866333b73cee96a0cd0b8c73654f4705088caa64eb5a624d4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a749faf38e80025b832dae250442ddc86d5bc353d752c781ea632e904922ff1' ;; 		i386) goRelArch='linux-386'; goRelSha256='03a98cc12b65dde36ed9561fa23530bcf5fa7ed85596aa74f2380f686fcbe928' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f482c7d6193c23d36657f8f026a74222c82eeb443331c38bbf3493d971144988' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a20d4077c0bb1d58710e48478ba0042950cf282f6ef1593aea4ac6e66265d22c' ;; 		*) goRelArch='src'; goRelSha256='743e97c856067f12fb39f1323d6e9956fb5f3339f0691d8749ecea553548ab03'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 26 Jan 2018 02:00:09 GMT
ENV GOPATH=/go
# Fri, 26 Jan 2018 02:00:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 02:00:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 26 Jan 2018 02:00:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe52c89597fa1aac51f8ed83c481d0d5b269ab0f59a955168d69e9284ca46a8`  
		Last Modified: Tue, 12 Dec 2017 11:30:45 GMT  
		Size: 57.5 MB (57499152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bef1c9ad4d19d79e6ba6c7dfcc7fc69eee1f32e0f5ad3282989acca155965a`  
		Last Modified: Fri, 26 Jan 2018 02:15:40 GMT  
		Size: 120.0 MB (119954939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48765d3ca254c479beb8eb8920f581e83b0681bffcb5aa4a1e1a7bd46af7cf1b`  
		Last Modified: Fri, 26 Jan 2018 02:15:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
