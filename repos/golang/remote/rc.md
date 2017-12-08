## `golang:rc`

```console
$ docker pull golang@sha256:9d5c3089eda8058fe39ce8e06f0f98a00960ab522e4fe73d8e3d061029494f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:dcbbd703fdaf3e9e1e665a4919ad6c6a2e0442d4ba408d22906a16b4cd19dcca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376216067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6636f2507d2ff5572406bee390fada0ced9ba4a03711d4914b688142b69b9ec2`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:04:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Dec 2017 19:19:50 GMT
ENV GOLANG_VERSION=1.10beta1
# Fri, 08 Dec 2017 19:20:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Dec 2017 19:20:26 GMT
ENV GOPATH=/go
# Fri, 08 Dec 2017 19:20:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Dec 2017 19:20:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Dec 2017 19:20:27 GMT
WORKDIR /go
# Fri, 08 Dec 2017 19:20:27 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a43f474a7643952dd929d0cf329aa82685b031c21a8d56be70dde6eee381a55`  
		Last Modified: Sat, 04 Nov 2017 16:06:09 GMT  
		Size: 57.5 MB (57482470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c352d09778b5f2f2c0ac4d358524abb8cf0a28083d1ce6acb69fbf91d20786a`  
		Last Modified: Fri, 08 Dec 2017 19:35:54 GMT  
		Size: 208.1 MB (208139692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276b4ea13e13aa57f5bce5336d977bb70072e1b5e7ea4a63b4bd01d2f21b688d`  
		Last Modified: Fri, 08 Dec 2017 19:35:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2905f2f3f6529a209f70d2948b3bcdd05ac061466607083bb4fbada4b0b95304`  
		Last Modified: Fri, 08 Dec 2017 19:35:09 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
