## `golang:rc`

```console
$ docker pull golang@sha256:1d1aacf2009d064ecccd7fd064d60bec64948d7e9a47f4e41d6c53fa45e09caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

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

### `golang:rc` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5236987ea66adfa952460a504f799bb7cbc9ddba06325d65ec4f8545d2062ecb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325201301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e73bb2612847cc7cc52c775fee92e1de927ca2e2cfc8bc3a25fb86e28edc18b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Dec 2017 20:54:45 GMT
ENV GOLANG_VERSION=1.10beta1
# Fri, 08 Dec 2017 20:55:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 08 Dec 2017 20:55:24 GMT
ENV GOPATH=/go
# Fri, 08 Dec 2017 20:55:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Dec 2017 20:55:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 08 Dec 2017 20:55:28 GMT
WORKDIR /go
# Fri, 08 Dec 2017 20:55:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668da98169d7749fa164a767a9fbec49fbecfa276cb489bb378d0c43a4967a1`  
		Last Modified: Fri, 03 Nov 2017 11:24:40 GMT  
		Size: 48.9 MB (48918697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f761fd4d1683f195f00c3265be164305ed609259d5d116e35cafb824a1ed32`  
		Last Modified: Fri, 08 Dec 2017 21:01:02 GMT  
		Size: 171.2 MB (171241170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76ab5c8ab8dcb5f34cfce3f108eedbde4be5370dfb5e08846fc7668b59f1906`  
		Last Modified: Fri, 08 Dec 2017 21:00:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a72f791a89d31c3eab960f2f012967b6d4f7a3101fb76211ce0b9a3f6ae61f6`  
		Last Modified: Fri, 08 Dec 2017 21:00:01 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; 386

```console
$ docker pull golang@sha256:c54e99487c0deeee8a0384efd9fc04aeecbb8b7ae1489c724459545942c11e01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.9 MB (356858450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05506910492105cdb09e7efb60c260ccd12d34b8d9a645d4068d0630af8814a9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 06:24:32 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 06:25:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Dec 2017 06:25:16 GMT
ENV GOPATH=/go
# Sat, 09 Dec 2017 06:25:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Dec 2017 06:25:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Dec 2017 06:25:18 GMT
WORKDIR /go
# Sat, 09 Dec 2017 06:25:18 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153813120c19b5e240df008de0a43b660d6d47710aa2bf759ce3ca8e87ee4cf`  
		Last Modified: Fri, 03 Nov 2017 00:59:13 GMT  
		Size: 62.0 MB (62018085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fa70737e1372831831f59f2999e997ee961e4bed18655938faef9e4488574b`  
		Last Modified: Sat, 09 Dec 2017 06:42:13 GMT  
		Size: 181.8 MB (181752841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80aa069afe3e659ecb7d4c574641ab24bfb6fc78e89f614f790738112e25e25`  
		Last Modified: Sat, 09 Dec 2017 06:41:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d3baf5ab445d71443e19aef2b68b7f6b157877605636efbac2a5ef6f98998a`  
		Last Modified: Sat, 09 Dec 2017 06:41:08 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; ppc64le

```console
$ docker pull golang@sha256:59fe5f66c89bdaaa38e7cb78683cda637d5195ba72f0a7e50185cf10c68c6846
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283072694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf0ef430594ba8b2ed76a95c38524092a0b000da0431398e5882641438fadc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 18:14:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 16:50:38 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 16:51:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Dec 2017 16:51:32 GMT
ENV GOPATH=/go
# Sat, 09 Dec 2017 16:51:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Dec 2017 16:51:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Dec 2017 16:51:44 GMT
WORKDIR /go
# Sat, 09 Dec 2017 16:51:46 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f815b4256da633dccf2f85914d98a7f751ba7037b488be7abe7f75e58a36d`  
		Last Modified: Thu, 02 Nov 2017 18:21:33 GMT  
		Size: 52.7 MB (52694006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575a49056d51e2f38b913181da68173c8056c27e9b9c7823d9f8e2065caf5f3`  
		Last Modified: Sat, 09 Dec 2017 16:56:18 GMT  
		Size: 120.3 MB (120345608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565c98d6757a0b15aa5029bfeaa85962089f97706fe17dd38ca1741a6210fb3b`  
		Last Modified: Sat, 09 Dec 2017 16:55:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426ac58ff19a6c6b03488499e5ea54c134848f33952fa104fd641d404f8f6fd`  
		Last Modified: Sat, 09 Dec 2017 16:55:31 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; s390x

```console
$ docker pull golang@sha256:81585c5440137104169341b84338d83eb1f569a1ae450847c68fc3e5ef53250a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295883420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6aa80812d656d6b1cb0a14cb1b31b5b0e46e5921a9fbd58b6e6d47b0cf2337d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:25:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 11:39:43 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 11:40:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 09 Dec 2017 11:40:09 GMT
ENV GOPATH=/go
# Sat, 09 Dec 2017 11:40:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Dec 2017 11:40:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 09 Dec 2017 11:40:10 GMT
WORKDIR /go
# Sat, 09 Dec 2017 11:40:10 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e167ba0c242d071f8bc7c7284c1943bab4eee3e8847f847b2949f26e4b978d5`  
		Last Modified: Thu, 02 Nov 2017 20:29:43 GMT  
		Size: 45.8 MB (45798738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db7166342148853e32491367d5c7e46c73965d5c83c9c47f58a9d3527ea4680`  
		Last Modified: Sat, 09 Dec 2017 11:42:46 GMT  
		Size: 139.6 MB (139635612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e605855e6f834bb881076c7b00b4e69fcd8b0810d9000761135feb6ba130ef9`  
		Last Modified: Sat, 09 Dec 2017 11:42:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c085a6e62b3469f8d37c9164915ba0e2b05a973694ca3353b8b2da7e03caee8`  
		Last Modified: Sat, 09 Dec 2017 11:42:21 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.1884; amd64

```console
$ docker pull golang@sha256:85dc411c6980b64f006596cd25b88cc2757c61d6f4686c79a78b64b2b2244e7e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5597354202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395eea5c2d4d86c05ab44d8faa4f9aff76a51da866a6dfc5175feff2947cbb81`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 03:14:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 15 Nov 2017 03:14:48 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 15 Nov 2017 03:14:49 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 15 Nov 2017 03:14:50 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 15 Nov 2017 03:16:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 03:16:10 GMT
ENV GOPATH=C:\gopath
# Wed, 15 Nov 2017 03:17:04 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 09 Dec 2017 03:13:59 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 03:22:37 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ff2789b7baf33f87111d30bac81ac1ae19dcc16bdd75553f9b5aceda14733a40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 09 Dec 2017 03:22:39 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7881d55c6460ffd480348b47c32558dcf6ad16f19fd42cc84ab88d7a31a7354`  
		Last Modified: Wed, 15 Nov 2017 21:07:24 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756cb1d3ca84e98360315210209122b4d082c4e3421d0a99ddff1160004c11b9`  
		Last Modified: Wed, 15 Nov 2017 21:07:23 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f310c0ab0f725120b556aeb0e4692d4ebef66cce637bc43b9e1b7df371d064b`  
		Last Modified: Wed, 15 Nov 2017 21:07:24 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3addc838ce72cbd7ba84f2e7a578c114e363b5528a5a5fd8b05f3d6d16ad98`  
		Last Modified: Wed, 15 Nov 2017 21:07:22 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350521fd1ecc2a7c2752bdcd895b72b359e4fe71b72132931baf81b47e47e286`  
		Last Modified: Wed, 15 Nov 2017 21:07:35 GMT  
		Size: 29.3 MB (29278749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bfbbfa8893aa7a6a2309941324b101fc1bf557072d147910116c6ff0687e85`  
		Last Modified: Wed, 15 Nov 2017 21:07:19 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87233df14fe4ccb026fe1ae797fd76a455ecdcd8e84ef78d3c3d81b278e6cc37`  
		Last Modified: Wed, 15 Nov 2017 21:07:19 GMT  
		Size: 4.8 MB (4812673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3925832be4511c4171d1fc6d1988b9c127f7109cda6621ca108725dd32f3ef94`  
		Last Modified: Sat, 09 Dec 2017 03:41:14 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a0f8911086734e0cfbe92bb903e6305a353cbc0688162838f3ea06e44dd462`  
		Last Modified: Sat, 09 Dec 2017 03:42:02 GMT  
		Size: 206.3 MB (206274219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e77d17d89fc9451908eef6f50bf3913fcc2f0ff7e0772a7e44210deb57d1271`  
		Last Modified: Sat, 09 Dec 2017 03:41:14 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.64; amd64

```console
$ docker pull golang@sha256:7fb56067a37922178adc14a9d88eab8d317b94e87422278227e4297454ff2f5e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910439250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c04a793b6b311b0f62c4d662457c9e00fc20f287981fa574aaff6e5f7fe3c8d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 03:14:49 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Nov 2017 03:14:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Nov 2017 03:14:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Nov 2017 03:14:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Nov 2017 03:15:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 03:15:54 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Nov 2017 03:16:32 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 09 Dec 2017 03:22:47 GMT
ENV GOLANG_VERSION=1.10beta1
# Sat, 09 Dec 2017 03:31:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ff2789b7baf33f87111d30bac81ac1ae19dcc16bdd75553f9b5aceda14733a40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 09 Dec 2017 03:31:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4faf186419ae3dcd335236aa5e2ca7acb55eeec42ec2405bc58609e4d95865`  
		Last Modified: Fri, 24 Nov 2017 03:14:36 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fa7bd09766498bd7681433eac101e73c4275f796023d916c641635d3b4c0`  
		Last Modified: Fri, 24 Nov 2017 03:14:31 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a101190861fa70d545bdb2a573f574beda22761b1312ac8eccb29f34a9c1c3`  
		Last Modified: Fri, 24 Nov 2017 03:14:31 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b2c01f8926e64fce60661b0e21e6d740ed74f852c6287ba026c5f68843607`  
		Last Modified: Fri, 24 Nov 2017 03:14:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6d33d5bf2704e077dffad5324451016ecea4f6763f5cc1a42cea85fcbfd270`  
		Last Modified: Fri, 24 Nov 2017 03:14:40 GMT  
		Size: 28.7 MB (28732389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf647264036f2621422ec88c72082497f25c8c0151ae329748eb1df0368ccdf0`  
		Last Modified: Fri, 24 Nov 2017 03:14:23 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02acff9559083d060b4addc4c20aae3429d7e0f9facdd0a617b8c7a7d5137729`  
		Last Modified: Fri, 24 Nov 2017 03:14:25 GMT  
		Size: 4.3 MB (4299685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7b5b6171eec0c966ca37bd2ada7148803e9c262fa04c48a4d4a11c37848dc9`  
		Last Modified: Sat, 09 Dec 2017 03:42:20 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf356ec01c684ff9d011ebeb1a49ca0b909da47c6b9249c77b9fea38860c7ac5`  
		Last Modified: Sat, 09 Dec 2017 03:43:08 GMT  
		Size: 201.2 MB (201245814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd6fbfdaced4e39bfb3828c10de5b5c86a9e315f7178424096bff225ad6c7b`  
		Last Modified: Sat, 09 Dec 2017 03:42:20 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
