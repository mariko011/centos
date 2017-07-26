## `golang:rc-stretch`

```console
$ docker pull golang@sha256:fd82359ccc32413b41d7525129b7c92afd1861d915831cfd69a3e8c7cdf4bfac
```

-	Platforms:
	-	linux; amd64

### `golang:rc-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263640961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bee4712d52f67febf142dd5fc3e241986f2054ab47b80c2a01e315fef657ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:38:27 GMT
ENV GOLANG_VERSION=1.9rc1
# Wed, 26 Jul 2017 06:38:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='a8ea2ac09878b7a5ac04fe52f144cdc64ab637230638af6975c0f1facbba3ec2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='634940f127ab3f60ed4acf0985ff4b3d15a9d7a9eb9547e8a112b282fc182ff9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='e1d6f224b3abf6d98530f69f7a2802dfbecf696d1c8b25e3885e1f78e7e0d42b' ;; 		i386) goRelArch='linux-386'; goRelSha256='c8bc26be65faf73289aca64c5096302962bb2b76bcadf19dfa14d0b99a8d42e0' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='34c7cb9e34509fd76ef16fb58ccd88f44d14c5c8720cd2f9dcacd560d0d4caa8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='8e8a5d7b25721a5c81f4117569ffb9fce280a0dea6fff012b31403fed0e6bb2b' ;; 		*) goRelArch='src'; goRelSha256='87717598ea60cc6143afa48f141f7e1308e196b71862028e710b910f376b452e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 06:38:37 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 06:38:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 06:38:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 06:38:39 GMT
WORKDIR /go
# Wed, 26 Jul 2017 06:38:39 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5673a54e2f306878f7ef4dede4302805e53134ffac8326d8209bf3cf3402094a`  
		Last Modified: Wed, 26 Jul 2017 05:15:26 GMT  
		Size: 57.2 MB (57228498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0af5017aa9d94f34906af10332d31cf2160ab6bc8918f3dc936ac50c7d7081`  
		Last Modified: Wed, 26 Jul 2017 06:41:08 GMT  
		Size: 95.7 MB (95745746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1bf01d7aec37f6891cb6f14cbb022c880da2daf6c51ffa591b171d330cf0f1`  
		Last Modified: Wed, 26 Jul 2017 06:40:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96c1db93eb670d0dd54d91d4612c4a08de8cab45a7459e81191216b0d2ed738`  
		Last Modified: Wed, 26 Jul 2017 06:40:51 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
