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
$ docker pull influxdb@sha256:16aac74f63d7bb4c83acb65f424715d4a617e63e18a15a7fb183031022976104
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
$ docker pull influxdb@sha256:4361cb644b34f0370b97957ccb3847d489fc0d3c341fbe28618d47e231242261
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71909948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3ddb920db47592353ae0b5fdef8652316e0545d6041fbed3027c6964bc8255`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 06:59:11 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 27 Sep 2017 06:59:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Sep 2017 06:59:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Sep 2017 06:59:15 GMT
EXPOSE 8086/tcp
# Wed, 27 Sep 2017 06:59:15 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Sep 2017 06:59:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 27 Sep 2017 06:59:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 27 Sep 2017 06:59:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 06:59:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36301d16635b3041c48d0a79be55b5bc5e991796b0115e97328f73ab89e31e`  
		Last Modified: Wed, 27 Sep 2017 06:59:42 GMT  
		Size: 16.0 MB (16022860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced350d0a8f09a0c85ab49488aefd78951e7e993ebb25b14364a0c363bdb52e9`  
		Last Modified: Wed, 27 Sep 2017 06:59:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ca158c38a739b082b11ef45a8f2c5d290d93992f5e3b01ed90565f0a166b2`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4be96d43c01a370a9dabeb36c2b7ee04bee406ededb932616539372591de95c`  
		Last Modified: Wed, 27 Sep 2017 06:59:36 GMT  
		Size: 1.1 KB (1145 bytes)  
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
$ docker pull influxdb@sha256:16aac74f63d7bb4c83acb65f424715d4a617e63e18a15a7fb183031022976104
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
$ docker pull influxdb@sha256:4361cb644b34f0370b97957ccb3847d489fc0d3c341fbe28618d47e231242261
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71909948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3ddb920db47592353ae0b5fdef8652316e0545d6041fbed3027c6964bc8255`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 06:59:11 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 27 Sep 2017 06:59:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Sep 2017 06:59:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Sep 2017 06:59:15 GMT
EXPOSE 8086/tcp
# Wed, 27 Sep 2017 06:59:15 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Sep 2017 06:59:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 27 Sep 2017 06:59:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 27 Sep 2017 06:59:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 06:59:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36301d16635b3041c48d0a79be55b5bc5e991796b0115e97328f73ab89e31e`  
		Last Modified: Wed, 27 Sep 2017 06:59:42 GMT  
		Size: 16.0 MB (16022860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced350d0a8f09a0c85ab49488aefd78951e7e993ebb25b14364a0c363bdb52e9`  
		Last Modified: Wed, 27 Sep 2017 06:59:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46ca158c38a739b082b11ef45a8f2c5d290d93992f5e3b01ed90565f0a166b2`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4be96d43c01a370a9dabeb36c2b7ee04bee406ededb932616539372591de95c`  
		Last Modified: Wed, 27 Sep 2017 06:59:36 GMT  
		Size: 1.1 KB (1145 bytes)  
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
$ docker pull influxdb@sha256:79509a9a13d1d68454b6b7b63fa37986cf21e3700a39a351ea2c2b2c3cf81fca
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
$ docker pull influxdb@sha256:846c9cc0ece2420b7f11e648cf3a0d78d1e2e2f8ad3c84818cecfe045a202a25
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73917785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b02f7fc2af04fb0d8558174bb2db08ccc4132d857a6792590f9f02fb8e28d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 06:59:24 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 27 Sep 2017 06:59:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Sep 2017 06:59:27 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Sep 2017 06:59:27 GMT
EXPOSE 8086/tcp
# Wed, 27 Sep 2017 06:59:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 27 Sep 2017 06:59:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 06:59:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddca679ef78eb682594324a591f926764f3da5e88bf91e364e95f75919ab26a`  
		Last Modified: Wed, 27 Sep 2017 06:59:56 GMT  
		Size: 18.0 MB (18030696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0668eeb292e27331596ee6ec50d518f9eaef8af07175139f9f361326f111008d`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6bb0bcec62149b559513f4f2cd2a9980397e8e6e1c42958b847c4d313de8f6`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21efb159978d4c359589e686b7d2cebe75c3c258648fd5f53a3939f61a369e8e`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1e81b5bb98406b40bb6f1a2e857ca666056c54ab078e5394055b84acf4b3ecfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75392649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77df5845a902d342ac041c7262af8e6a2ffddb50267280173bff42566dd17103`
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
# Thu, 21 Sep 2017 16:40:42 GMT
ENV INFLUXDB_VERSION=1.3.5
# Thu, 21 Sep 2017 16:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:52 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:53 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:57 GMT
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
	-	`sha256:ce274ebaaebc73d0e750f91a638cda5327050e1354f9b51d358265824f7bc8be`  
		Last Modified: Thu, 21 Sep 2017 16:41:51 GMT  
		Size: 18.0 MB (18030614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c72f9fd3642ca6fc0e54ba9850ca4969f0f96989d576ec678a1e261707f2c90`  
		Last Modified: Thu, 21 Sep 2017 16:41:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb466fbbbc517290592a9a959315b5e41cc865f4c3a7259f6f29625a06bdd590`  
		Last Modified: Thu, 21 Sep 2017 16:41:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a94bd667a1c0ef5276ee87f79e4f34d0d97b71ee64ec01c25cbb33f03138d4`  
		Last Modified: Thu, 21 Sep 2017 16:41:44 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.6`

```console
$ docker pull influxdb@sha256:79509a9a13d1d68454b6b7b63fa37986cf21e3700a39a351ea2c2b2c3cf81fca
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
$ docker pull influxdb@sha256:846c9cc0ece2420b7f11e648cf3a0d78d1e2e2f8ad3c84818cecfe045a202a25
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73917785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b02f7fc2af04fb0d8558174bb2db08ccc4132d857a6792590f9f02fb8e28d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 06:59:24 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 27 Sep 2017 06:59:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Sep 2017 06:59:27 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Sep 2017 06:59:27 GMT
EXPOSE 8086/tcp
# Wed, 27 Sep 2017 06:59:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 27 Sep 2017 06:59:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 06:59:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddca679ef78eb682594324a591f926764f3da5e88bf91e364e95f75919ab26a`  
		Last Modified: Wed, 27 Sep 2017 06:59:56 GMT  
		Size: 18.0 MB (18030696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0668eeb292e27331596ee6ec50d518f9eaef8af07175139f9f361326f111008d`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6bb0bcec62149b559513f4f2cd2a9980397e8e6e1c42958b847c4d313de8f6`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21efb159978d4c359589e686b7d2cebe75c3c258648fd5f53a3939f61a369e8e`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1e81b5bb98406b40bb6f1a2e857ca666056c54ab078e5394055b84acf4b3ecfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75392649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77df5845a902d342ac041c7262af8e6a2ffddb50267280173bff42566dd17103`
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
# Thu, 21 Sep 2017 16:40:42 GMT
ENV INFLUXDB_VERSION=1.3.5
# Thu, 21 Sep 2017 16:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:52 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:53 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:57 GMT
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
	-	`sha256:ce274ebaaebc73d0e750f91a638cda5327050e1354f9b51d358265824f7bc8be`  
		Last Modified: Thu, 21 Sep 2017 16:41:51 GMT  
		Size: 18.0 MB (18030614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c72f9fd3642ca6fc0e54ba9850ca4969f0f96989d576ec678a1e261707f2c90`  
		Last Modified: Thu, 21 Sep 2017 16:41:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb466fbbbc517290592a9a959315b5e41cc865f4c3a7259f6f29625a06bdd590`  
		Last Modified: Thu, 21 Sep 2017 16:41:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a94bd667a1c0ef5276ee87f79e4f34d0d97b71ee64ec01c25cbb33f03138d4`  
		Last Modified: Thu, 21 Sep 2017 16:41:44 GMT  
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
$ docker pull influxdb@sha256:79509a9a13d1d68454b6b7b63fa37986cf21e3700a39a351ea2c2b2c3cf81fca
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
$ docker pull influxdb@sha256:846c9cc0ece2420b7f11e648cf3a0d78d1e2e2f8ad3c84818cecfe045a202a25
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73917785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b02f7fc2af04fb0d8558174bb2db08ccc4132d857a6792590f9f02fb8e28d23`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Sep 2017 06:59:24 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 27 Sep 2017 06:59:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Sep 2017 06:59:27 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 27 Sep 2017 06:59:27 GMT
EXPOSE 8086/tcp
# Wed, 27 Sep 2017 06:59:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 27 Sep 2017 06:59:28 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 27 Sep 2017 06:59:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 06:59:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddca679ef78eb682594324a591f926764f3da5e88bf91e364e95f75919ab26a`  
		Last Modified: Wed, 27 Sep 2017 06:59:56 GMT  
		Size: 18.0 MB (18030696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0668eeb292e27331596ee6ec50d518f9eaef8af07175139f9f361326f111008d`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6bb0bcec62149b559513f4f2cd2a9980397e8e6e1c42958b847c4d313de8f6`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21efb159978d4c359589e686b7d2cebe75c3c258648fd5f53a3939f61a369e8e`  
		Last Modified: Wed, 27 Sep 2017 06:59:51 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1e81b5bb98406b40bb6f1a2e857ca666056c54ab078e5394055b84acf4b3ecfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75392649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77df5845a902d342ac041c7262af8e6a2ffddb50267280173bff42566dd17103`
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
# Thu, 21 Sep 2017 16:40:42 GMT
ENV INFLUXDB_VERSION=1.3.5
# Thu, 21 Sep 2017 16:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:52 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:53 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:57 GMT
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
	-	`sha256:ce274ebaaebc73d0e750f91a638cda5327050e1354f9b51d358265824f7bc8be`  
		Last Modified: Thu, 21 Sep 2017 16:41:51 GMT  
		Size: 18.0 MB (18030614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c72f9fd3642ca6fc0e54ba9850ca4969f0f96989d576ec678a1e261707f2c90`  
		Last Modified: Thu, 21 Sep 2017 16:41:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb466fbbbc517290592a9a959315b5e41cc865f4c3a7259f6f29625a06bdd590`  
		Last Modified: Thu, 21 Sep 2017 16:41:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a94bd667a1c0ef5276ee87f79e4f34d0d97b71ee64ec01c25cbb33f03138d4`  
		Last Modified: Thu, 21 Sep 2017 16:41:44 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
