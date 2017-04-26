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
