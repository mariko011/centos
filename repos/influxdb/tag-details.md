<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.4`](#influxdb124)
-	[`influxdb:1.2.4-alpine`](#influxdb124-alpine)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.6`](#influxdb136)
-	[`influxdb:1.3.6-alpine`](#influxdb136-alpine)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:latest`](#influxdblatest)

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:330456ca5d3818224c64d55a46f74e1d79300a06af5f260cdc7ffd6161de041e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2` - linux; amd64

```console
$ docker pull influxdb@sha256:90564284c2a4bf6225c3603a02d1eb5a704f86c987b4b8047ddbe944d6a3db5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78375437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187366323f5815155d7c7f92eaac0f415cdd76167e87d566e7ff173eaedd9a21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:07 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 21 Sep 2017 16:40:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:15 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:15 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:16 GMT
CMD ["influxd"]
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
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8990d4bfb1b9434501606f2f4cd464e878330608bf6cc50991654235e99d753d`  
		Last Modified: Thu, 21 Sep 2017 16:40:46 GMT  
		Size: 17.5 MB (17504089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b199a0c16133205f123301cf6810c1b1c45460e9964f04d58066d9cecf4e9bf0`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742f1795a2226c36732a31bd2ed81822162c799b08f1dc05cdd231137f4fc0e7`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cef07dbb6860a2883c696feeb747cb17fef60749f79173f421fe14612d41f95`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:f308bc2d63fec3ee8beef5620b7399b86023e24cad6bc5020993426aa9ceab8e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71903108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfa1784d9d070e917d841d0cffac4874cabab6eedfb2e4d4fff2010cd482888`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 00:54:16 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 00:54:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 00:54:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 00:54:21 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 00:54:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 00:54:22 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Tue, 10 Oct 2017 00:54:23 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 00:54:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c731bc374fa17cb1392c0b9b34ded38e20dd2b7338f58f018598872a4bcac35c`  
		Last Modified: Tue, 10 Oct 2017 00:55:03 GMT  
		Size: 16.0 MB (16022998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f039dfec324a4255c54cdd1c49db2ef314255c675041a41ab8cf9d2885bf4db5`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014529edcb3aaa42fde9d35850782ab48411b88d941b758cf50359397906e42a`  
		Last Modified: Tue, 10 Oct 2017 00:54:56 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9a5ac56616b70c2e29314fcf1e22efd0c680c4dc58b17b824505e46693feb5`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:92bfbf1210b0ad7db200e0fee777664a451eded0a9d125c373f709b808665797
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73384685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7bb923ae4cfb00e5b6b9a45c32f2c7ecf504e747823bd4b12f34cb582c08bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:18 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 21 Sep 2017 16:40:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:28 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:29 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:30 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc7792b984931ba980af621d52d45d66d5e52e3cbcf5bbd17d4b5378e676443`  
		Last Modified: Thu, 21 Sep 2017 16:41:18 GMT  
		Size: 16.0 MB (16022651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f2979638a4fdf8b615e80394e680934e003a4a647597d5b33bb2b00551635`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577df61dc0807b1b6c4dc34378c061e54992d98bef56e238a7c822cf96a16e2b`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a09fb9459a1bb666fc33665d2e70e0099afdbeb1e73c280b185216db0696166`  
		Last Modified: Thu, 21 Sep 2017 16:41:11 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:330456ca5d3818224c64d55a46f74e1d79300a06af5f260cdc7ffd6161de041e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2.4` - linux; amd64

```console
$ docker pull influxdb@sha256:90564284c2a4bf6225c3603a02d1eb5a704f86c987b4b8047ddbe944d6a3db5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78375437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187366323f5815155d7c7f92eaac0f415cdd76167e87d566e7ff173eaedd9a21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:07 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 21 Sep 2017 16:40:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:15 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:15 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:16 GMT
CMD ["influxd"]
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
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8990d4bfb1b9434501606f2f4cd464e878330608bf6cc50991654235e99d753d`  
		Last Modified: Thu, 21 Sep 2017 16:40:46 GMT  
		Size: 17.5 MB (17504089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b199a0c16133205f123301cf6810c1b1c45460e9964f04d58066d9cecf4e9bf0`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742f1795a2226c36732a31bd2ed81822162c799b08f1dc05cdd231137f4fc0e7`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cef07dbb6860a2883c696feeb747cb17fef60749f79173f421fe14612d41f95`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:f308bc2d63fec3ee8beef5620b7399b86023e24cad6bc5020993426aa9ceab8e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71903108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfa1784d9d070e917d841d0cffac4874cabab6eedfb2e4d4fff2010cd482888`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 00:54:16 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 00:54:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 00:54:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 00:54:21 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 00:54:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 00:54:22 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Tue, 10 Oct 2017 00:54:23 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 00:54:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c731bc374fa17cb1392c0b9b34ded38e20dd2b7338f58f018598872a4bcac35c`  
		Last Modified: Tue, 10 Oct 2017 00:55:03 GMT  
		Size: 16.0 MB (16022998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f039dfec324a4255c54cdd1c49db2ef314255c675041a41ab8cf9d2885bf4db5`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014529edcb3aaa42fde9d35850782ab48411b88d941b758cf50359397906e42a`  
		Last Modified: Tue, 10 Oct 2017 00:54:56 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9a5ac56616b70c2e29314fcf1e22efd0c680c4dc58b17b824505e46693feb5`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:92bfbf1210b0ad7db200e0fee777664a451eded0a9d125c373f709b808665797
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73384685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7bb923ae4cfb00e5b6b9a45c32f2c7ecf504e747823bd4b12f34cb582c08bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:18 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 21 Sep 2017 16:40:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:28 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:29 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:30 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc7792b984931ba980af621d52d45d66d5e52e3cbcf5bbd17d4b5378e676443`  
		Last Modified: Thu, 21 Sep 2017 16:41:18 GMT  
		Size: 16.0 MB (16022651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f2979638a4fdf8b615e80394e680934e003a4a647597d5b33bb2b00551635`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577df61dc0807b1b6c4dc34378c061e54992d98bef56e238a7c822cf96a16e2b`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a09fb9459a1bb666fc33665d2e70e0099afdbeb1e73c280b185216db0696166`  
		Last Modified: Thu, 21 Sep 2017 16:41:11 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:9ab5f550f71c0fee9bd1209b963aba15eb64e77fdf2ddd081719ed598e45972b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:cbc3d10bc6e9b91173796cb955178e93de0423c8db790389c94c799ce1f45b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531daefc3c0b75875467576a1b5e86b1bbd034843ff05168b4ca4fbd485e913c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 22:29:38 GMT
RUN apk add --no-cache bash
# Wed, 13 Sep 2017 22:29:38 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 13 Sep 2017 22:29:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 22:29:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 13 Sep 2017 22:29:57 GMT
EXPOSE 8086/tcp
# Wed, 13 Sep 2017 22:29:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Sep 2017 21:42:39 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 14 Sep 2017 21:42:39 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 14 Sep 2017 21:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 21:42:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602710340ad582e41bc288dad76aa603ce7d3a8d549c8426e3fc551fdb122c8d`  
		Last Modified: Wed, 13 Sep 2017 22:35:23 GMT  
		Size: 1.1 MB (1092378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7980ccda8ebb5773eb3c4add9a3d311a2e0f34921f26217fa04786dccaa28aa`  
		Last Modified: Wed, 13 Sep 2017 22:35:25 GMT  
		Size: 12.5 MB (12489710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ae68e97bebb0343e3beb74000c61781e6642b1a64c8be30fe767671ca86ba`  
		Last Modified: Wed, 13 Sep 2017 22:35:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c00e7194d2562f078abd6ec60ae621b95e6e6d4545575d4f3da8f931d6a55c`  
		Last Modified: Thu, 14 Sep 2017 21:42:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cfd5a712d9d1aeeee668d66188863e9f18deeaa2ff2926d2ca2d3c60cc522`  
		Last Modified: Thu, 14 Sep 2017 21:42:55 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:9ab5f550f71c0fee9bd1209b963aba15eb64e77fdf2ddd081719ed598e45972b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:cbc3d10bc6e9b91173796cb955178e93de0423c8db790389c94c799ce1f45b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531daefc3c0b75875467576a1b5e86b1bbd034843ff05168b4ca4fbd485e913c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 22:29:38 GMT
RUN apk add --no-cache bash
# Wed, 13 Sep 2017 22:29:38 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 13 Sep 2017 22:29:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 13 Sep 2017 22:29:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 13 Sep 2017 22:29:57 GMT
EXPOSE 8086/tcp
# Wed, 13 Sep 2017 22:29:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 14 Sep 2017 21:42:39 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 14 Sep 2017 21:42:39 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 14 Sep 2017 21:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 21:42:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602710340ad582e41bc288dad76aa603ce7d3a8d549c8426e3fc551fdb122c8d`  
		Last Modified: Wed, 13 Sep 2017 22:35:23 GMT  
		Size: 1.1 MB (1092378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7980ccda8ebb5773eb3c4add9a3d311a2e0f34921f26217fa04786dccaa28aa`  
		Last Modified: Wed, 13 Sep 2017 22:35:25 GMT  
		Size: 12.5 MB (12489710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ae68e97bebb0343e3beb74000c61781e6642b1a64c8be30fe767671ca86ba`  
		Last Modified: Wed, 13 Sep 2017 22:35:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c00e7194d2562f078abd6ec60ae621b95e6e6d4545575d4f3da8f931d6a55c`  
		Last Modified: Thu, 14 Sep 2017 21:42:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cfd5a712d9d1aeeee668d66188863e9f18deeaa2ff2926d2ca2d3c60cc522`  
		Last Modified: Thu, 14 Sep 2017 21:42:55 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:2871450b16afc7997b9d09dc504239a522ad62d859a83eca4686e4d824d0142b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:b9a0bb9a3c36b212a69a1ff8c49c6228f1fe954a8a6f1e2dc9f49922321ff428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79965298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f466aff6230414fae2f350f7995868a0613f21c3924ff7fcc6c8a170df859869`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 29 Sep 2017 17:29:38 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:29:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 29 Sep 2017 17:29:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:29:51 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:29:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:29:53 GMT
CMD ["influxd"]
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
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1915492c6ba157e0a5a5c5b68ebe532cfc01a914f5e0408794b2d640affb60`  
		Last Modified: Fri, 29 Sep 2017 17:30:41 GMT  
		Size: 19.1 MB (19093952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6b916da5b66ec60c6049cea32ce516e6a438b2576537833a990ba5203a97a`  
		Last Modified: Fri, 29 Sep 2017 17:30:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dd99226f1d6c8a8fb5f90e07c24da0b61eb229daea96d1d22cf804ad362f87`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df038b4125047af18068006ed78424fcfbbca6d2c92999d69aab1e20307e544`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:839d799299d0f825e9d256a9126db0d6b2db3be31354b8069048d8dcffee13b7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841e9e5f6c7c384337070a0ca8223b5d0bd563d48cfa20319193e0b84f603692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 00:54:31 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 00:54:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 00:54:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 00:54:37 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 00:54:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 00:54:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 00:54:43 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 00:54:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c60424b55b8120fe0adea4c90f5fd62f0814722349782dc511f250412fdd7a`  
		Last Modified: Tue, 10 Oct 2017 00:55:20 GMT  
		Size: 18.1 MB (18143286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c9304fcb46fcca437138a0d5bfabda211a61f9ab7345277d2d51c395a07522`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230fc0d81e648632e2857a2bb1e15af4d78158a5d92c4ef56d916089ca22fb32`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13491cea755322c5f86966452d1b4b9a517ae391136c0b82afead6dfa1c0e65`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0c924e7041b12cfa8feb1698345e5105e3f7ee470df6a90167eff6075e23826a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75187807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b06d67a240e92ca3bff8e5ec18364c8d293423272f17a41180c0b669406bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 30 Sep 2017 15:43:36 GMT
ENV INFLUXDB_VERSION=1.3.6
# Sat, 30 Sep 2017 15:43:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 30 Sep 2017 15:43:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 30 Sep 2017 15:43:45 GMT
EXPOSE 8086/tcp
# Sat, 30 Sep 2017 15:43:46 GMT
VOLUME [/var/lib/influxdb]
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Sat, 30 Sep 2017 15:43:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 15:43:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702c732849296117a431708b297c330b599a5e62a12d646ce46150fd4d5513f6`  
		Last Modified: Sat, 30 Sep 2017 15:44:17 GMT  
		Size: 17.8 MB (17825773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2f1880d183b34d0c08f5e39a7072c996bac7e77244c7736e82d3e60c839bb`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf7ea9d8c5eb30a19a39b1179fd50ff93f12e0c2c3fa20f46e2ef73a1618d4`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034a859245fc8d49eed621b0598c26b5b0b6ed3558e833837a7f8696f4e884e`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.6`

```console
$ docker pull influxdb@sha256:2871450b16afc7997b9d09dc504239a522ad62d859a83eca4686e4d824d0142b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.6` - linux; amd64

```console
$ docker pull influxdb@sha256:b9a0bb9a3c36b212a69a1ff8c49c6228f1fe954a8a6f1e2dc9f49922321ff428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79965298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f466aff6230414fae2f350f7995868a0613f21c3924ff7fcc6c8a170df859869`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 29 Sep 2017 17:29:38 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:29:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 29 Sep 2017 17:29:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:29:51 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:29:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:29:53 GMT
CMD ["influxd"]
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
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1915492c6ba157e0a5a5c5b68ebe532cfc01a914f5e0408794b2d640affb60`  
		Last Modified: Fri, 29 Sep 2017 17:30:41 GMT  
		Size: 19.1 MB (19093952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6b916da5b66ec60c6049cea32ce516e6a438b2576537833a990ba5203a97a`  
		Last Modified: Fri, 29 Sep 2017 17:30:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dd99226f1d6c8a8fb5f90e07c24da0b61eb229daea96d1d22cf804ad362f87`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df038b4125047af18068006ed78424fcfbbca6d2c92999d69aab1e20307e544`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:839d799299d0f825e9d256a9126db0d6b2db3be31354b8069048d8dcffee13b7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841e9e5f6c7c384337070a0ca8223b5d0bd563d48cfa20319193e0b84f603692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 00:54:31 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 00:54:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 00:54:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 00:54:37 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 00:54:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 00:54:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 00:54:43 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 00:54:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c60424b55b8120fe0adea4c90f5fd62f0814722349782dc511f250412fdd7a`  
		Last Modified: Tue, 10 Oct 2017 00:55:20 GMT  
		Size: 18.1 MB (18143286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c9304fcb46fcca437138a0d5bfabda211a61f9ab7345277d2d51c395a07522`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230fc0d81e648632e2857a2bb1e15af4d78158a5d92c4ef56d916089ca22fb32`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13491cea755322c5f86966452d1b4b9a517ae391136c0b82afead6dfa1c0e65`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0c924e7041b12cfa8feb1698345e5105e3f7ee470df6a90167eff6075e23826a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75187807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b06d67a240e92ca3bff8e5ec18364c8d293423272f17a41180c0b669406bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 30 Sep 2017 15:43:36 GMT
ENV INFLUXDB_VERSION=1.3.6
# Sat, 30 Sep 2017 15:43:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 30 Sep 2017 15:43:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 30 Sep 2017 15:43:45 GMT
EXPOSE 8086/tcp
# Sat, 30 Sep 2017 15:43:46 GMT
VOLUME [/var/lib/influxdb]
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Sat, 30 Sep 2017 15:43:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 15:43:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702c732849296117a431708b297c330b599a5e62a12d646ce46150fd4d5513f6`  
		Last Modified: Sat, 30 Sep 2017 15:44:17 GMT  
		Size: 17.8 MB (17825773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2f1880d183b34d0c08f5e39a7072c996bac7e77244c7736e82d3e60c839bb`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf7ea9d8c5eb30a19a39b1179fd50ff93f12e0c2c3fa20f46e2ef73a1618d4`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034a859245fc8d49eed621b0598c26b5b0b6ed3558e833837a7f8696f4e884e`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.6-alpine`

```console
$ docker pull influxdb@sha256:f9bd84addf82e0d8dda67c67c93f88a18386e5ae004ba80f9f15a66a9b7d7d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b839eda3dcb35c300869997653990523543b9e84736a0dfae12ddc007bebaca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22452438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a33a305529acaf881c6b21623e4798b78b95b63432926944e2f57bbdae4320d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 22:30:12 GMT
RUN apk add --no-cache tzdata bash
# Fri, 29 Sep 2017 17:30:00 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:30:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/bin/influx_inspect /usr/bin/influx_stress /usr/bin/influxd /usr/bin/influx_tsm /usr/bin/influx &&     rm -rf *.tar.gz* /usr/src /root/.gnupg /etc/influxdb/influxdb.conf &&     apk del .build-deps
# Fri, 29 Sep 2017 17:30:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:30:25 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:30:25 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:30:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8923a00959f4dc85fa50ee5a6a0e8d2aaf46212a75fd83bb66b00c8b831792b`  
		Last Modified: Wed, 13 Sep 2017 22:35:59 GMT  
		Size: 1.5 MB (1483392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c5669c6b426a559188b135b57c856c7f5567e78846a63f8258bcdfbf1eb7`  
		Last Modified: Fri, 29 Sep 2017 17:31:13 GMT  
		Size: 19.0 MB (18997047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545a68421ecc037e09e1056f9170417f7b8e088a4d0b0ef7871f44869f26bf5d`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df74f1a303eba1f9efd530d321e68ef69c06c6c170c38739e13d34f43d11c54a`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1faf8e297cdf7fb53a9d03c23552e24167f91e7781076e21edbe23d5c0261b`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:f9bd84addf82e0d8dda67c67c93f88a18386e5ae004ba80f9f15a66a9b7d7d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b839eda3dcb35c300869997653990523543b9e84736a0dfae12ddc007bebaca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22452438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a33a305529acaf881c6b21623e4798b78b95b63432926944e2f57bbdae4320d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 22:30:12 GMT
RUN apk add --no-cache tzdata bash
# Fri, 29 Sep 2017 17:30:00 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:30:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/bin/influx_inspect /usr/bin/influx_stress /usr/bin/influxd /usr/bin/influx_tsm /usr/bin/influx &&     rm -rf *.tar.gz* /usr/src /root/.gnupg /etc/influxdb/influxdb.conf &&     apk del .build-deps
# Fri, 29 Sep 2017 17:30:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:30:25 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:30:25 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:30:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8923a00959f4dc85fa50ee5a6a0e8d2aaf46212a75fd83bb66b00c8b831792b`  
		Last Modified: Wed, 13 Sep 2017 22:35:59 GMT  
		Size: 1.5 MB (1483392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c5669c6b426a559188b135b57c856c7f5567e78846a63f8258bcdfbf1eb7`  
		Last Modified: Fri, 29 Sep 2017 17:31:13 GMT  
		Size: 19.0 MB (18997047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545a68421ecc037e09e1056f9170417f7b8e088a4d0b0ef7871f44869f26bf5d`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df74f1a303eba1f9efd530d321e68ef69c06c6c170c38739e13d34f43d11c54a`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1faf8e297cdf7fb53a9d03c23552e24167f91e7781076e21edbe23d5c0261b`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:f9bd84addf82e0d8dda67c67c93f88a18386e5ae004ba80f9f15a66a9b7d7d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b839eda3dcb35c300869997653990523543b9e84736a0dfae12ddc007bebaca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22452438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a33a305529acaf881c6b21623e4798b78b95b63432926944e2f57bbdae4320d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 13 Sep 2017 22:30:12 GMT
RUN apk add --no-cache tzdata bash
# Fri, 29 Sep 2017 17:30:00 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:30:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/bin/influx_inspect /usr/bin/influx_stress /usr/bin/influxd /usr/bin/influx_tsm /usr/bin/influx &&     rm -rf *.tar.gz* /usr/src /root/.gnupg /etc/influxdb/influxdb.conf &&     apk del .build-deps
# Fri, 29 Sep 2017 17:30:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:30:25 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:30:25 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:30:25 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:30:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f86ea3a05bc091d3d70e7de3d61d06e961eaeb967c4e0c6060196f0dcdc42f`  
		Last Modified: Wed, 13 Sep 2017 15:14:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8923a00959f4dc85fa50ee5a6a0e8d2aaf46212a75fd83bb66b00c8b831792b`  
		Last Modified: Wed, 13 Sep 2017 22:35:59 GMT  
		Size: 1.5 MB (1483392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c5669c6b426a559188b135b57c856c7f5567e78846a63f8258bcdfbf1eb7`  
		Last Modified: Fri, 29 Sep 2017 17:31:13 GMT  
		Size: 19.0 MB (18997047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545a68421ecc037e09e1056f9170417f7b8e088a4d0b0ef7871f44869f26bf5d`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df74f1a303eba1f9efd530d321e68ef69c06c6c170c38739e13d34f43d11c54a`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1faf8e297cdf7fb53a9d03c23552e24167f91e7781076e21edbe23d5c0261b`  
		Last Modified: Fri, 29 Sep 2017 17:31:08 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:2871450b16afc7997b9d09dc504239a522ad62d859a83eca4686e4d824d0142b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:b9a0bb9a3c36b212a69a1ff8c49c6228f1fe954a8a6f1e2dc9f49922321ff428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79965298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f466aff6230414fae2f350f7995868a0613f21c3924ff7fcc6c8a170df859869`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 29 Sep 2017 17:29:38 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:29:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 29 Sep 2017 17:29:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:29:51 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:29:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:29:53 GMT
CMD ["influxd"]
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
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1915492c6ba157e0a5a5c5b68ebe532cfc01a914f5e0408794b2d640affb60`  
		Last Modified: Fri, 29 Sep 2017 17:30:41 GMT  
		Size: 19.1 MB (19093952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6b916da5b66ec60c6049cea32ce516e6a438b2576537833a990ba5203a97a`  
		Last Modified: Fri, 29 Sep 2017 17:30:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dd99226f1d6c8a8fb5f90e07c24da0b61eb229daea96d1d22cf804ad362f87`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df038b4125047af18068006ed78424fcfbbca6d2c92999d69aab1e20307e544`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:839d799299d0f825e9d256a9126db0d6b2db3be31354b8069048d8dcffee13b7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841e9e5f6c7c384337070a0ca8223b5d0bd563d48cfa20319193e0b84f603692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:54:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 00:54:31 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 00:54:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 00:54:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 00:54:37 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 00:54:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 00:54:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 00:54:43 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 00:54:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f652a063b90e2803ffa64fd8d62fa0f5d16b0940f569aa36e820d20e0c46a`  
		Last Modified: Tue, 10 Oct 2017 00:54:57 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c60424b55b8120fe0adea4c90f5fd62f0814722349782dc511f250412fdd7a`  
		Last Modified: Tue, 10 Oct 2017 00:55:20 GMT  
		Size: 18.1 MB (18143286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c9304fcb46fcca437138a0d5bfabda211a61f9ab7345277d2d51c395a07522`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230fc0d81e648632e2857a2bb1e15af4d78158a5d92c4ef56d916089ca22fb32`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13491cea755322c5f86966452d1b4b9a517ae391136c0b82afead6dfa1c0e65`  
		Last Modified: Tue, 10 Oct 2017 00:55:14 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0c924e7041b12cfa8feb1698345e5105e3f7ee470df6a90167eff6075e23826a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75187807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5b06d67a240e92ca3bff8e5ec18364c8d293423272f17a41180c0b669406bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 30 Sep 2017 15:43:36 GMT
ENV INFLUXDB_VERSION=1.3.6
# Sat, 30 Sep 2017 15:43:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 30 Sep 2017 15:43:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 30 Sep 2017 15:43:45 GMT
EXPOSE 8086/tcp
# Sat, 30 Sep 2017 15:43:46 GMT
VOLUME [/var/lib/influxdb]
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 30 Sep 2017 15:43:47 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Sat, 30 Sep 2017 15:43:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 15:43:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702c732849296117a431708b297c330b599a5e62a12d646ce46150fd4d5513f6`  
		Last Modified: Sat, 30 Sep 2017 15:44:17 GMT  
		Size: 17.8 MB (17825773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2f1880d183b34d0c08f5e39a7072c996bac7e77244c7736e82d3e60c839bb`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf7ea9d8c5eb30a19a39b1179fd50ff93f12e0c2c3fa20f46e2ef73a1618d4`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034a859245fc8d49eed621b0598c26b5b0b6ed3558e833837a7f8696f4e884e`  
		Last Modified: Sat, 30 Sep 2017 15:44:09 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
