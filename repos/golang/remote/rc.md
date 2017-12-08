## `golang:rc`

```console
$ docker pull golang@sha256:cc67768e1e8f2af59a77797e4076595e606f109aba42a9638d653efcebe44758
```

-	Platforms:
	-	linux; amd64

### `golang:rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266321302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9d44a980dbe3ceef6d337bc3e781c38f0a10f8f6b0cbd9407f9e069fe7e0fe`
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
# Tue, 08 Aug 2017 18:21:13 GMT
ENV GOLANG_VERSION=1.9rc2
# Tue, 08 Aug 2017 18:21:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='0d17d440f02505d8fbf6becb777175c242486c1d71046705876dcd20e0574002' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c61a2efe5127e88c20a49278b9748a326af197bb38949387710119914d1d77a4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='c53bdbc41fcd980f4ad6e5f216913053709479871cd395990fa4bf4f01c21e7d' ;; 		i386) goRelArch='linux-386'; goRelSha256='b4d9e1f2f0f4f406150f21f7d166fa6f6ca54d7370752dc77e5b9f2ca2850dd0' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='765f844aec22328d5f3347c42b22f240ad0ecb78cc6f5f55d35e47d0379cfc79' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='1ec407c52ed02c472a71412733940c065666ceb76b83192c0ca09c70502b409d' ;; 		*) goRelArch='src'; goRelSha256='12b09ea6cb3189ea5e4c057f7047b5709ae8edd14706421b188f7e4ae8d8d3e4'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 08 Aug 2017 18:21:24 GMT
ENV GOPATH=/go
# Tue, 08 Aug 2017 18:21:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 18:21:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 08 Aug 2017 18:21:25 GMT
WORKDIR /go
# Tue, 08 Aug 2017 18:21:26 GMT
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
	-	`sha256:d67192cdc95436af68477614f5b80282cdf24e642df382688b4f9126f82e5969`  
		Last Modified: Tue, 08 Aug 2017 18:22:58 GMT  
		Size: 98.4 MB (98426089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f6767083197a4f59915629d37de17fca11b0073ed8faf5ddccefb0f13daddf`  
		Last Modified: Tue, 08 Aug 2017 18:22:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c8dc0759346874e8f492b833e0401f5ef04802172daf25941458f59e28bf03`  
		Last Modified: Tue, 08 Aug 2017 18:22:41 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
