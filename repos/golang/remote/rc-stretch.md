## `golang:rc-stretch`

```console
$ docker pull golang@sha256:cf5dd9b7cfe7a9bc4bca67248c0c701338a5ebe03a4e38868aa8720736590063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:rc-stretch` - linux; amd64

```console
$ docker pull golang@sha256:99e1ab0c8de10334a6628ffb3ced2cd87cd7c3ed9863f1eb18080f93abccbbc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376227620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc54e48c222d5708d5cd0dbcc7e12d347ba63a8bc1fe793bcb7e1211cfeb781`
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
# Tue, 12 Dec 2017 11:21:00 GMT
ENV GOLANG_VERSION=1.10beta1
# Tue, 12 Dec 2017 11:21:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 12 Dec 2017 11:21:39 GMT
ENV GOPATH=/go
# Tue, 12 Dec 2017 11:21:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 11:21:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 12 Dec 2017 11:21:40 GMT
WORKDIR /go
# Tue, 12 Dec 2017 11:21:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
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
	-	`sha256:9414338df3b556a70d7624be162646921a95f5f612f6b7a7d3660ca16f8aed44`  
		Last Modified: Tue, 12 Dec 2017 11:31:22 GMT  
		Size: 208.1 MB (208139742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e739742e7d7ab9155117908f372ee3b09a6c37e825893f18ff53c5f71df77146`  
		Last Modified: Tue, 12 Dec 2017 11:30:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b6b07624f0e0c69d6b2f61b2cdf99cc76f5345495f20303ae8ea4570368854`  
		Last Modified: Tue, 12 Dec 2017 11:30:29 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0495cc8cc651c9c720ec3c9260b1a7c46f77b4942e31dcd337ebc3b04b2f9abf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325228196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330db7592efdf0f750a1f859a5b0bdf2974cfdd41fda4f80c9e1896d2a0a7ef`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 16:15:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 23:57:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 23:57:09 GMT
ENV GOLANG_VERSION=1.10beta1
# Fri, 15 Dec 2017 23:57:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 15 Dec 2017 23:57:52 GMT
ENV GOPATH=/go
# Fri, 15 Dec 2017 23:57:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 23:57:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 15 Dec 2017 23:57:56 GMT
WORKDIR /go
# Fri, 15 Dec 2017 23:57:57 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab5498df96eae5ccabdf778692dc41eeee09793f3792efadf0079545233069c`  
		Last Modified: Fri, 15 Dec 2017 17:19:55 GMT  
		Size: 48.0 MB (47983199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4e2722df7e740d51b766267b0ec38df71672a5b997802d45c67b8d0bdd2ce8`  
		Last Modified: Sat, 16 Dec 2017 00:01:51 GMT  
		Size: 48.9 MB (48935445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7067bf548fed5e6b6f87d899723de298d1ac92ec042af370f05253e0a4791dd2`  
		Last Modified: Sat, 16 Dec 2017 00:02:34 GMT  
		Size: 171.2 MB (171241170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ebb576a30e6d71bfd0be6b939abfa9740400d5a89a7ed8db8b79a7b4958913`  
		Last Modified: Sat, 16 Dec 2017 00:01:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91da48339f5d0b829d795d3cda5a22af6b9e9c3666dc4b02e0c2abcf0111b8f`  
		Last Modified: Sat, 16 Dec 2017 00:01:33 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:0e25bc3870b0d30e5d0a9d98f4450c32c4c71478c1c8c59a54257bf8cac143f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.9 MB (356874880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f5d06a09f0c92adb3e3d12c144e1fd08732827939659df25ccf1b3a6c9bae8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 14:47:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 16:56:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 16:56:00 GMT
ENV GOLANG_VERSION=1.10beta1
# Wed, 13 Dec 2017 16:56:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 13 Dec 2017 17:00:35 GMT
ENV GOPATH=/go
# Wed, 13 Dec 2017 17:00:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 17:00:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 13 Dec 2017 17:00:36 GMT
WORKDIR /go
# Wed, 13 Dec 2017 17:00:37 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff393180296f30b7b1cf94c5f67f82d434feb08eaff795346b0f5d3fe18c5ab6`  
		Last Modified: Wed, 13 Dec 2017 15:00:30 GMT  
		Size: 51.6 MB (51553695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c281e85d97666b881ac683415f45b31d0ccbdee55c6995710a9d10f4ae50fc`  
		Last Modified: Wed, 13 Dec 2017 17:08:28 GMT  
		Size: 62.0 MB (62034764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c928d573cc63d5b81515761ed7d3386bcc36991cd68ab86ed96b45d1694d65`  
		Last Modified: Wed, 13 Dec 2017 17:09:03 GMT  
		Size: 181.8 MB (181752828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437f9c2f48426aeb3634178fc52673e8d5fccfe79edf3dd367c336fc2d9cf743`  
		Last Modified: Wed, 13 Dec 2017 17:08:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee1aa657c69ee176b46a42af3a51b213b6acfc664fab05cdd6730c23d16acce`  
		Last Modified: Wed, 13 Dec 2017 17:08:06 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:f2ef10b1f69e88bd8b86731ee9114ffb06f1169c75cdaddf81caccbc44bf98e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283097719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317c82fba37592bcf44d8905a8ec687ec2b42b87a991091e63a465f6bc0d612a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:32:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:33:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 03:37:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:22:53 GMT
ENV GOLANG_VERSION=1.10beta1
# Tue, 12 Dec 2017 09:23:28 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 12 Dec 2017 09:23:50 GMT
ENV GOPATH=/go
# Tue, 12 Dec 2017 09:23:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 09:24:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 12 Dec 2017 09:24:05 GMT
WORKDIR /go
# Tue, 12 Dec 2017 09:24:07 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378a191e90f6d5b2a6f6d9850e8c81ea101737db5c068add4c764f2be3aced2`  
		Last Modified: Tue, 12 Dec 2017 03:55:34 GMT  
		Size: 10.3 MB (10339336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b1cf177268cff23511322d11143dadc3f4326448d8aceedad9b759e57fb13`  
		Last Modified: Tue, 12 Dec 2017 03:55:32 GMT  
		Size: 4.3 MB (4289552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90080349eff61f95b053aa65da87029e4c36cbccd1ac1d78002110d52ab56ba7`  
		Last Modified: Tue, 12 Dec 2017 03:56:07 GMT  
		Size: 50.0 MB (50029025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe942a3efef599ac5039d70fdad2f4d596c935116adeebd2024072d4b5f10c0`  
		Last Modified: Tue, 12 Dec 2017 09:34:02 GMT  
		Size: 52.7 MB (52710372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dd5ae6740683e16229b5764e17a24a93e3cf8d570806dee1b7f27b503c32b9`  
		Last Modified: Tue, 12 Dec 2017 09:34:25 GMT  
		Size: 120.3 MB (120345552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32721fe5586ee9259cad93bccfdbea71db4d72f16779f4f49249724a5dc4cb2`  
		Last Modified: Tue, 12 Dec 2017 09:33:20 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5c7880425998e5bead50cadf49483797a8f4e074f128b71c3b33422c04cc4f`  
		Last Modified: Tue, 12 Dec 2017 09:33:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:01cba128718cc85b12e544deb2ef77f12e28c895f5455824830d270a7aeac32b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295901924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cc078094b344ea442bc88aae03f36c67225936ad87f24a0a0f431223ae8033`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:58:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:58:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:59:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:42:24 GMT
ENV GOLANG_VERSION=1.10beta1
# Tue, 12 Dec 2017 09:42:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ec7a10b5bf147a8e06cf64e27384ff3c6d065c74ebd8fdd31f572714f74a1055' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='32daa257a930ef85ca74bca107d477b3484f0b5ef7cc48086110916368d9c584' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a80555b3c4beecfb9af88c718f8676101ada74dea84f4aa1ade29d2d78554e0' ;; 		i386) goRelArch='linux-386'; goRelSha256='e0f30e18384e3beae8ce16cc6d095d899e29fb786c57297650acb7727fb3090e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b4c7404771b380212277fecc3b9a4f99f9978d024a45d3644c495a469df31ed8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bc3c66ab980e782ce52165a3a1572484353904c1b884dbbb87a662776280489d' ;; 		*) goRelArch='src'; goRelSha256='841df62b20fd915d83a2e43b7d043c2a3781c299de78abc45480eec575186b6b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 12 Dec 2017 09:42:50 GMT
ENV GOPATH=/go
# Tue, 12 Dec 2017 09:42:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 09:42:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 12 Dec 2017 09:42:51 GMT
WORKDIR /go
# Tue, 12 Dec 2017 09:42:51 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff282cac5e026f80f2d55f6c7a510a9d2a8855bdde39824f93da04f1fd369475`  
		Last Modified: Tue, 12 Dec 2017 07:09:07 GMT  
		Size: 10.7 MB (10668313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04deb7c3aa54f0bb67511a855139b7d6eaeae932480fd568f7889597e870800f`  
		Last Modified: Tue, 12 Dec 2017 07:09:19 GMT  
		Size: 4.4 MB (4366027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dd8efc8af21b5bb6284436d2189f0d8edb2eeade70328d44174c5cc870aec2`  
		Last Modified: Tue, 12 Dec 2017 07:10:10 GMT  
		Size: 50.4 MB (50448531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1364320336465b0c0c9ce49ceec734250fdb50c9a49a2af4a88ecf8f128580db`  
		Last Modified: Tue, 12 Dec 2017 09:45:33 GMT  
		Size: 45.8 MB (45814874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd315483db057b0172c49e918a81ea4a790daaf3c10abc5292cebaf962bf92`  
		Last Modified: Tue, 12 Dec 2017 09:45:54 GMT  
		Size: 139.6 MB (139635611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8f8ba9d23288bc54340ca9c2ac4de37446b6fb652e16b854ae4d7c3d831ff4`  
		Last Modified: Tue, 12 Dec 2017 09:45:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b989970a602d7df5a3463d3990e6cb8db9100893c94e8fdfae2af152c096438`  
		Last Modified: Tue, 12 Dec 2017 09:45:20 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
