## `golang:1-stretch`

```console
$ docker pull golang@sha256:f4fa848e707fc2f8458bdfca38bd9e404d83153f85d866fe6f81b736de20cbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:5d75647097d99838c5dca2c29e1e4359ebd5704be10b9aaa526dde881ce61541
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270928122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdc81f11b10321f11a2075eb992a05322fac87df5c35fc884e599a465833ec0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:36:23 GMT
ENV GOLANG_VERSION=1.9
# Thu, 14 Sep 2017 01:36:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 14 Sep 2017 01:36:32 GMT
ENV GOPATH=/go
# Thu, 14 Sep 2017 01:36:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 01:36:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 14 Sep 2017 01:36:34 GMT
WORKDIR /go
# Thu, 14 Sep 2017 01:36:35 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bf2214b363bbcef9cab240d83a8100f927dd142499b743f05d359340a87ead`  
		Last Modified: Thu, 14 Sep 2017 01:41:37 GMT  
		Size: 57.5 MB (57451978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cea41720ffc8a9ca64f5c2c6edfe72827ca939db45cbc951a5994baa30b37d`  
		Last Modified: Thu, 14 Sep 2017 01:41:51 GMT  
		Size: 102.6 MB (102595844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f04fd4e5e3291f4f9d3cb061176a411827c004db77aea1f658204f1d437f7f`  
		Last Modified: Thu, 14 Sep 2017 01:41:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1ba867568b783716bb38b8927d26208c3139ae471d646d4f8e6418ec7b9802`  
		Last Modified: Thu, 14 Sep 2017 01:41:23 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:b36334dd17fc55e6b732952f298f4ce0468c79cad956d8dc9b06a674d3078c3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237595711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b457ac21ff530e71b31c173b79b40bdcef5f2478faf37fb81bcab2773437ef5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 19:23:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:13:22 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:14:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:14:27 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:14:31 GMT
WORKDIR /go
# Fri, 01 Sep 2017 23:08:08 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92015f4a35a09780066f8e6543655a97744323dd9dd69b8c23c45152a872d918`  
		Last Modified: Fri, 11 Aug 2017 19:39:59 GMT  
		Size: 45.8 MB (45824161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409f11b3dd240afd840b6eed98cb4f8d0f5e55769ef0b020db779852c633769`  
		Last Modified: Fri, 25 Aug 2017 00:15:43 GMT  
		Size: 89.5 MB (89542038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1962ce28b5196e9af5d3d7f865fa43a98f275150bbc9817f53bc05f06a03c8`  
		Last Modified: Fri, 25 Aug 2017 00:14:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebb0301a0e71b25552088c2fc8ab1518f5394d1347ed9667fa647ad5d14dc8d`  
		Last Modified: Fri, 01 Sep 2017 23:08:34 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c316284276f5ffcf5353c6a485272d638d1726af6c4c986487fccb5a76934530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242338021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89deef5aae785590e4cee221b9338ba7554575ffb85c2d8c7d8b396929b9998d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:33:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 00:07:03 GMT
ENV GOLANG_VERSION=1.9
# Fri, 25 Aug 2017 00:07:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Aug 2017 00:07:20 GMT
ENV GOPATH=/go
# Fri, 25 Aug 2017 00:07:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Aug 2017 00:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Aug 2017 00:07:23 GMT
WORKDIR /go
# Wed, 30 Aug 2017 19:53:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18c4085fbb2fdfd0e768d26b67d99fe31dd19fc4ffeb5bf93b23febeef34af`  
		Last Modified: Mon, 24 Jul 2017 22:35:20 GMT  
		Size: 48.9 MB (48889360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eddee5545af9e4104f38d0ae197bd349d6a7eb8f2616f8dca1d6fd19bcfec3`  
		Last Modified: Fri, 25 Aug 2017 00:08:04 GMT  
		Size: 88.1 MB (88126877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a12213048d5a2015162116ec202a4d91fbb9b47edf30f88f5a128c718db931b`  
		Last Modified: Fri, 25 Aug 2017 00:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050dca1bede613bf1b6ec452766a6890f77b54730f46f1d45017a02aeebe2bf9`  
		Last Modified: Wed, 30 Aug 2017 19:53:41 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:3d1d27861b816570fc4592c07fc89d81bee63d01294e55cdc4030f3861c0354f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9deccf240d772ca244053d1fa4987ef2549b2d52e46f7a67cbe86d88ea8c6a12`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:26:10 GMT
ENV GOLANG_VERSION=1.9
# Sat, 09 Sep 2017 14:26:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Sep 2017 14:26:21 GMT
ENV GOPATH=/go
# Sat, 09 Sep 2017 14:30:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 14:30:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Sep 2017 14:30:29 GMT
WORKDIR /go
# Sat, 09 Sep 2017 14:30:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fa4666b8ac625ddc3356a2f5e34d9be8abe9b8b4a7e654f7546a2fad610159`  
		Last Modified: Sat, 09 Sep 2017 14:40:39 GMT  
		Size: 62.0 MB (61988285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db729185e360b346120a54198049c0744088124b7abbd4e74a191c1411d65ae9`  
		Last Modified: Sat, 09 Sep 2017 14:40:47 GMT  
		Size: 90.2 MB (90237501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e742ae83b25d3534cddb1d624dca534004808daa5b4285c5df91e969cd44d8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23194a4c7300ed35bde3ff842f823563f2a251febc82d748f46dd5addaeac8`  
		Last Modified: Sat, 09 Sep 2017 14:40:18 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8d2984e4b7e1faa97bb8460423f66091dbbed75873d1bb249487a70424bdbfa7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250638343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bad182faa5ea6c191abf67a3197863aa0294253669f3d2e4c592611c778bd96`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:55:54 GMT
ENV GOLANG_VERSION=1.9
# Thu, 14 Sep 2017 22:56:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 14 Sep 2017 22:56:16 GMT
ENV GOPATH=/go
# Thu, 14 Sep 2017 22:56:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 22:56:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 14 Sep 2017 22:56:34 GMT
WORKDIR /go
# Thu, 14 Sep 2017 22:56:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c2443a88fe87270b076edcb01292417b638b243cb51ca502f639d0b89cdf6e`  
		Last Modified: Thu, 14 Sep 2017 23:03:03 GMT  
		Size: 52.7 MB (52662869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7945498776ef7ca8823e184c50deb59654ef34286e4044ceb730f4bcfdcfd8d0`  
		Last Modified: Thu, 14 Sep 2017 23:03:09 GMT  
		Size: 87.7 MB (87650075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c477749a7d90903a1ac2ebf59ef9d1eeb12d428059b76df8708800be2303c404`  
		Last Modified: Thu, 14 Sep 2017 23:02:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781781e3bed6bd2642e327f783c1bef4ee6e83a6e2a05bc7e9334bec138d525a`  
		Last Modified: Thu, 14 Sep 2017 23:02:47 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:af3808ba2ecffad0cf5793c2baac8f060bb1bceeb7f127badc444469bf8ec3b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243793408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a86ff9ae930df053bc2d7f00d4953f7dad57092d8dfc0378c504f250485259`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:00:57 GMT
ENV GOLANG_VERSION=1.9
# Fri, 08 Sep 2017 17:01:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='f52ca5933f7a8de2daf7a3172b0406353622c6a39e67dd08bbbeb84c6496f487' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='0958dcf454f7f26d7acc1a4ddc34220d499df845bc2051c14ff8efdf1e3c29a6' ;; 		i386) goRelArch='linux-386'; goRelSha256='7cccff99dacf59162cd67f5b11070d667691397fd421b0a9ad287da019debc4f' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='10b66dae326b32a56d4c295747df564616ec46ed0079553e88e39d4f1b2ae985' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e06231e4918528e2eba1d3cff9bc4310b777971e5d8985f9772c6018694a3af8' ;; 		*) goRelArch='src'; goRelSha256='a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Sep 2017 17:01:04 GMT
ENV GOPATH=/go
# Fri, 08 Sep 2017 17:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:01:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Sep 2017 17:01:04 GMT
WORKDIR /go
# Fri, 08 Sep 2017 17:01:05 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b50373851afeb028f7f59dd45f9f27a95e4db7e3e0d860bdc6eb21e7dcd28`  
		Last Modified: Fri, 08 Sep 2017 17:02:16 GMT  
		Size: 45.8 MB (45776258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa3791ce2e3d9e40f41f6054eaf07b0266cdce0e22805a135fe0ab4b8b51dd`  
		Last Modified: Fri, 08 Sep 2017 17:02:24 GMT  
		Size: 87.3 MB (87282678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91761fa00f08e0c6ed86a2908f51a5f1096ac27e1c0e8c8586de432584e4b46b`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2050980cb91a0f0bf9548adf2499e680a034e738fccd5c3334d8dbcebbfb9b45`  
		Last Modified: Fri, 08 Sep 2017 17:02:06 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
