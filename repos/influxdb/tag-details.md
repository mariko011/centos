<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.7`](#influxdb137)
-	[`influxdb:1.3.7-alpine`](#influxdb137-alpine)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.1`](#influxdb141)
-	[`influxdb:1.4.1-alpine`](#influxdb141-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:latest`](#influxdblatest)

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:2203aed053bc8268a0b2f3ef1a0c7e0b8d47f7098e168896b0241450aa0cf901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:8980689abff8f5d4a3374c0d6b69c73687dffdc08eb6907d40a7a573cb6b1761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79695490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d42120cefb4c2e51a5b0999bf35221b0581b075c1bcfe8873299ee1c92d7588`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:49:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 15:49:43 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 04 Nov 2017 15:49:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 04 Nov 2017 15:49:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 04 Nov 2017 15:49:46 GMT
EXPOSE 8086/tcp
# Sat, 04 Nov 2017 15:49:47 GMT
VOLUME [/var/lib/influxdb]
# Sat, 04 Nov 2017 15:49:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:29:26 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:29:26 GMT
CMD ["influxd"]
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
	-	`sha256:eacd3c6f5057c1ec8ad588ab159739748a337d7d24fead2ccaa7f0a3cd50152c`  
		Last Modified: Sat, 04 Nov 2017 15:49:58 GMT  
		Size: 2.9 KB (2892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6cdca86c2e5120c18ac664cc66cf1f8f4f65a3980e3818ab2c0831b06c0f04`  
		Last Modified: Sat, 04 Nov 2017 15:50:20 GMT  
		Size: 19.1 MB (19119677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011c4b3f66f9b89dbf46cac786d4fd209a836e1134a79cfc0ff8349574d986d0`  
		Last Modified: Sat, 04 Nov 2017 15:50:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21821cf2a9ec9bb2a239deb57c1a61200ff3143df69c0166eb27fb5bb7825f5a`  
		Last Modified: Sat, 04 Nov 2017 15:50:17 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae03e9d1c24e4b52b907a4fcd48e40bc22d98ce2b9a33da88d2b66822f5a9a6c`  
		Last Modified: Tue, 14 Nov 2017 19:30:46 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d21e7d9af269f79ac38733e90206d7f3e30fae965f0ce88b356ea2c79c7ce4ba
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b29514ec184b7cdaf1e1e88c03d789b7d92c2f7d871493bbc62b6de3ab4587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:31:29 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 03 Nov 2017 01:31:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:31:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 01:31:34 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 01:31:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 01:31:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 03 Nov 2017 01:31:35 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 01:31:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:31:36 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcd1b18816816d11b42cc7a8d32d8bbd41f33164533d91146cb8b89dad6f9d6`  
		Last Modified: Fri, 03 Nov 2017 01:29:58 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c57fe730e0f052951e62ab23141e23d60cbb17e9fc028ac84fb880b68ea5e52`  
		Last Modified: Fri, 03 Nov 2017 01:32:21 GMT  
		Size: 18.2 MB (18161448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370593a4d638c9d119dc859a455721137646a8373c50f51e1149e48524c921c1`  
		Last Modified: Fri, 03 Nov 2017 01:32:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb3ee2da80554524d250bd9105ae267e27942fa5ce91487bd8acd6a9ef01b4f`  
		Last Modified: Fri, 03 Nov 2017 01:32:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcbb7ac90c97dbbef06c5054dd2a7ee5f0ac0d6be04b6f37fa34de8d49e0af3`  
		Last Modified: Fri, 03 Nov 2017 01:32:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:82ddbb6e11b2af6fe49d47376700e2aab73f9ec80827923849ba65aa7dfe1cbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74916553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b406ff7e1c4d7306ab974bc6a7e8fffc88026f9e74f80715b8f34c80267c7f74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:20:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:21:38 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 03 Nov 2017 11:21:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:21:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 11:21:48 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 11:21:49 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 11:21:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 03 Nov 2017 11:21:51 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 11:21:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:21:54 GMT
CMD ["influxd"]
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
	-	`sha256:0c3ce0bef6f81ba410d6697cd117da6afb56a91b64428a9e234c8f8dc0724bf8`  
		Last Modified: Fri, 03 Nov 2017 11:22:16 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ebd796c0dfd77c15884d1c26ad03239b826f7052b191db5e2eb23712b912b`  
		Last Modified: Fri, 03 Nov 2017 11:23:03 GMT  
		Size: 17.8 MB (17846316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b97cbc230a00ef275226df9e90c03bd20b11526f2644206e5afbe2c6976e3b`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1943dec4df87f351fc62e8e8c0442b6088d83cc035951e7bb8e2e507abb2370c`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aee1ac8508c9a3e8899bfce865be68d3a896c28ecad759b7eadf8421abae81`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.7`

```console
$ docker pull influxdb@sha256:2203aed053bc8268a0b2f3ef1a0c7e0b8d47f7098e168896b0241450aa0cf901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.7` - linux; amd64

```console
$ docker pull influxdb@sha256:8980689abff8f5d4a3374c0d6b69c73687dffdc08eb6907d40a7a573cb6b1761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79695490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d42120cefb4c2e51a5b0999bf35221b0581b075c1bcfe8873299ee1c92d7588`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:49:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Nov 2017 15:49:43 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 04 Nov 2017 15:49:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 04 Nov 2017 15:49:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 04 Nov 2017 15:49:46 GMT
EXPOSE 8086/tcp
# Sat, 04 Nov 2017 15:49:47 GMT
VOLUME [/var/lib/influxdb]
# Sat, 04 Nov 2017 15:49:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:29:26 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:29:26 GMT
CMD ["influxd"]
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
	-	`sha256:eacd3c6f5057c1ec8ad588ab159739748a337d7d24fead2ccaa7f0a3cd50152c`  
		Last Modified: Sat, 04 Nov 2017 15:49:58 GMT  
		Size: 2.9 KB (2892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6cdca86c2e5120c18ac664cc66cf1f8f4f65a3980e3818ab2c0831b06c0f04`  
		Last Modified: Sat, 04 Nov 2017 15:50:20 GMT  
		Size: 19.1 MB (19119677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011c4b3f66f9b89dbf46cac786d4fd209a836e1134a79cfc0ff8349574d986d0`  
		Last Modified: Sat, 04 Nov 2017 15:50:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21821cf2a9ec9bb2a239deb57c1a61200ff3143df69c0166eb27fb5bb7825f5a`  
		Last Modified: Sat, 04 Nov 2017 15:50:17 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae03e9d1c24e4b52b907a4fcd48e40bc22d98ce2b9a33da88d2b66822f5a9a6c`  
		Last Modified: Tue, 14 Nov 2017 19:30:46 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d21e7d9af269f79ac38733e90206d7f3e30fae965f0ce88b356ea2c79c7ce4ba
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73743994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b29514ec184b7cdaf1e1e88c03d789b7d92c2f7d871493bbc62b6de3ab4587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:29:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 01:31:29 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 03 Nov 2017 01:31:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:31:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 01:31:34 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 01:31:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 01:31:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 03 Nov 2017 01:31:35 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 01:31:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:31:36 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcd1b18816816d11b42cc7a8d32d8bbd41f33164533d91146cb8b89dad6f9d6`  
		Last Modified: Fri, 03 Nov 2017 01:29:58 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c57fe730e0f052951e62ab23141e23d60cbb17e9fc028ac84fb880b68ea5e52`  
		Last Modified: Fri, 03 Nov 2017 01:32:21 GMT  
		Size: 18.2 MB (18161448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370593a4d638c9d119dc859a455721137646a8373c50f51e1149e48524c921c1`  
		Last Modified: Fri, 03 Nov 2017 01:32:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb3ee2da80554524d250bd9105ae267e27942fa5ce91487bd8acd6a9ef01b4f`  
		Last Modified: Fri, 03 Nov 2017 01:32:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcbb7ac90c97dbbef06c5054dd2a7ee5f0ac0d6be04b6f37fa34de8d49e0af3`  
		Last Modified: Fri, 03 Nov 2017 01:32:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:82ddbb6e11b2af6fe49d47376700e2aab73f9ec80827923849ba65aa7dfe1cbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74916553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b406ff7e1c4d7306ab974bc6a7e8fffc88026f9e74f80715b8f34c80267c7f74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:20:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 11:21:38 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 03 Nov 2017 11:21:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 11:21:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 11:21:48 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 11:21:49 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 11:21:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 03 Nov 2017 11:21:51 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 11:21:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 11:21:54 GMT
CMD ["influxd"]
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
	-	`sha256:0c3ce0bef6f81ba410d6697cd117da6afb56a91b64428a9e234c8f8dc0724bf8`  
		Last Modified: Fri, 03 Nov 2017 11:22:16 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ebd796c0dfd77c15884d1c26ad03239b826f7052b191db5e2eb23712b912b`  
		Last Modified: Fri, 03 Nov 2017 11:23:03 GMT  
		Size: 17.8 MB (17846316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b97cbc230a00ef275226df9e90c03bd20b11526f2644206e5afbe2c6976e3b`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1943dec4df87f351fc62e8e8c0442b6088d83cc035951e7bb8e2e507abb2370c`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3aee1ac8508c9a3e8899bfce865be68d3a896c28ecad759b7eadf8421abae81`  
		Last Modified: Fri, 03 Nov 2017 11:22:56 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.7-alpine`

```console
$ docker pull influxdb@sha256:1151dee4f0c9c98ee7c12d3c0431eaf14991502996e50ef93b728bd1fd375b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:aa04aa4a973081cc32d11ef573ebc9a61f2294fe1df094ded934cdd4befd43ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22513242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019552a7e8abb4db13eff895dca633ce0368e86a8fce4e0148936fb8665b14b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Tue, 14 Nov 2017 19:29:41 GMT
ENV INFLUXDB_VERSION=1.3.7
# Tue, 14 Nov 2017 19:29:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 19:29:53 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:29:53 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:29:53 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:29:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:29:54 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:29:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:29:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9b17605176c336d9a04184c354c4d5331371eaa8b527b585bedfde20fbbd40`  
		Last Modified: Tue, 14 Nov 2017 19:31:08 GMT  
		Size: 19.0 MB (19015720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbaff42a522f9c7d7d51e01e3cce9e7701fe63fe163fc672f46607c83f22694`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1808c9efdbdb8f86188f1f59c6eda4bb14bf8d5e4ab5a2094734057b0afab5b`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961e47fc7f85fee9f4ff8d24d95120c1f666ec62c55042221829904d7ff2220d`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:1151dee4f0c9c98ee7c12d3c0431eaf14991502996e50ef93b728bd1fd375b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:aa04aa4a973081cc32d11ef573ebc9a61f2294fe1df094ded934cdd4befd43ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22513242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019552a7e8abb4db13eff895dca633ce0368e86a8fce4e0148936fb8665b14b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Tue, 14 Nov 2017 19:29:41 GMT
ENV INFLUXDB_VERSION=1.3.7
# Tue, 14 Nov 2017 19:29:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 19:29:53 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:29:53 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:29:53 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:29:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:29:54 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:29:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:29:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9b17605176c336d9a04184c354c4d5331371eaa8b527b585bedfde20fbbd40`  
		Last Modified: Tue, 14 Nov 2017 19:31:08 GMT  
		Size: 19.0 MB (19015720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbaff42a522f9c7d7d51e01e3cce9e7701fe63fe163fc672f46607c83f22694`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1808c9efdbdb8f86188f1f59c6eda4bb14bf8d5e4ab5a2094734057b0afab5b`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961e47fc7f85fee9f4ff8d24d95120c1f666ec62c55042221829904d7ff2220d`  
		Last Modified: Tue, 14 Nov 2017 19:31:04 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:2235191e3484163087db54a8355bf8ae6957b546b9032b177e8e2e21a4fc6095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:9ec7a5b2f1095bded7ed7b44517f8b9ce20a5bebca1a27658aa4cdb35136d1f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81679545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13199b554250c6c7699a1c693e97041cecdc425bad11bf573333c176e99500d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:49:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 14 Nov 2017 19:30:05 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 14 Nov 2017 19:30:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:13 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:14 GMT
CMD ["influxd"]
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
	-	`sha256:eacd3c6f5057c1ec8ad588ab159739748a337d7d24fead2ccaa7f0a3cd50152c`  
		Last Modified: Sat, 04 Nov 2017 15:49:58 GMT  
		Size: 2.9 KB (2892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8e533ba0e734b8e177169a48bfd1ea4417a7905fa8dadb269ecaa2b9e285bb`  
		Last Modified: Tue, 14 Nov 2017 19:31:29 GMT  
		Size: 21.1 MB (21103729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104fdb7192f9844e78e316c8fd8d0fdbf991c6bd7cbd8561727aeda1485008fe`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d3d6b3a6f91524ec001e110111cc8e506aefaf783b4d70f20d1cf3dabeeefb`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebcaf00f9c52377cfbfbe3b601e4150a25b43f5a1fb9d9a0cafea8face3871`  
		Last Modified: Tue, 14 Nov 2017 19:31:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.1`

```console
$ docker pull influxdb@sha256:2235191e3484163087db54a8355bf8ae6957b546b9032b177e8e2e21a4fc6095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.1` - linux; amd64

```console
$ docker pull influxdb@sha256:9ec7a5b2f1095bded7ed7b44517f8b9ce20a5bebca1a27658aa4cdb35136d1f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81679545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13199b554250c6c7699a1c693e97041cecdc425bad11bf573333c176e99500d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:49:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 14 Nov 2017 19:30:05 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 14 Nov 2017 19:30:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:13 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:14 GMT
CMD ["influxd"]
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
	-	`sha256:eacd3c6f5057c1ec8ad588ab159739748a337d7d24fead2ccaa7f0a3cd50152c`  
		Last Modified: Sat, 04 Nov 2017 15:49:58 GMT  
		Size: 2.9 KB (2892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8e533ba0e734b8e177169a48bfd1ea4417a7905fa8dadb269ecaa2b9e285bb`  
		Last Modified: Tue, 14 Nov 2017 19:31:29 GMT  
		Size: 21.1 MB (21103729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104fdb7192f9844e78e316c8fd8d0fdbf991c6bd7cbd8561727aeda1485008fe`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d3d6b3a6f91524ec001e110111cc8e506aefaf783b4d70f20d1cf3dabeeefb`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebcaf00f9c52377cfbfbe3b601e4150a25b43f5a1fb9d9a0cafea8face3871`  
		Last Modified: Tue, 14 Nov 2017 19:31:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.1-alpine`

```console
$ docker pull influxdb@sha256:80d132e526caf7b5af0019428b2b603cc4906a0276eddd3f1a3b1d1d9f24598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4923169e8c90d1d5b048f8111bded973ed3bad971075f4885c48dfb7b59be7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24494280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3714608c5a7b8036e9a6942a88dabd8df7f797a508ab31005b072043639ab0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Tue, 14 Nov 2017 19:30:19 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:32 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:32 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4adcdc4301dfbcf740490c1a1d751fbb32652b86ccd1d4f318a9de03dc16236`  
		Last Modified: Tue, 14 Nov 2017 19:32:00 GMT  
		Size: 21.0 MB (20996759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1086ec71c324a498f993f11279fb5194dc71fd3c02c2dae81a780bc3474bf04`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1d9b1fb7274953c23fc7f4853b6abaa63ab26eb3d4705bbf789d23ada934d6`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429db8c58dcce3d8e17c60b398e22bed9c429a05aa8960ac605eb50957324cfc`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:80d132e526caf7b5af0019428b2b603cc4906a0276eddd3f1a3b1d1d9f24598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4923169e8c90d1d5b048f8111bded973ed3bad971075f4885c48dfb7b59be7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24494280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3714608c5a7b8036e9a6942a88dabd8df7f797a508ab31005b072043639ab0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Tue, 14 Nov 2017 19:30:19 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:32 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:32 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4adcdc4301dfbcf740490c1a1d751fbb32652b86ccd1d4f318a9de03dc16236`  
		Last Modified: Tue, 14 Nov 2017 19:32:00 GMT  
		Size: 21.0 MB (20996759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1086ec71c324a498f993f11279fb5194dc71fd3c02c2dae81a780bc3474bf04`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1d9b1fb7274953c23fc7f4853b6abaa63ab26eb3d4705bbf789d23ada934d6`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429db8c58dcce3d8e17c60b398e22bed9c429a05aa8960ac605eb50957324cfc`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:80d132e526caf7b5af0019428b2b603cc4906a0276eddd3f1a3b1d1d9f24598f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4923169e8c90d1d5b048f8111bded973ed3bad971075f4885c48dfb7b59be7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24494280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3714608c5a7b8036e9a6942a88dabd8df7f797a508ab31005b072043639ab0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Nov 2017 19:01:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 14 Nov 2017 19:29:41 GMT
RUN apk add --no-cache tzdata bash
# Tue, 14 Nov 2017 19:30:19 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:32 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:32 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:32 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cac9feb97207d563cb8d1bc7b3c916ee79f81618908db9454602925da50b7c`  
		Last Modified: Tue, 14 Nov 2017 19:02:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110b11a1ead2a533ba3c59a6bcc10c9621f9073e6d879919b24eb52d3437fa7`  
		Last Modified: Tue, 14 Nov 2017 19:31:05 GMT  
		Size: 1.5 MB (1504331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4adcdc4301dfbcf740490c1a1d751fbb32652b86ccd1d4f318a9de03dc16236`  
		Last Modified: Tue, 14 Nov 2017 19:32:00 GMT  
		Size: 21.0 MB (20996759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1086ec71c324a498f993f11279fb5194dc71fd3c02c2dae81a780bc3474bf04`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1d9b1fb7274953c23fc7f4853b6abaa63ab26eb3d4705bbf789d23ada934d6`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429db8c58dcce3d8e17c60b398e22bed9c429a05aa8960ac605eb50957324cfc`  
		Last Modified: Tue, 14 Nov 2017 19:31:55 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:2235191e3484163087db54a8355bf8ae6957b546b9032b177e8e2e21a4fc6095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:9ec7a5b2f1095bded7ed7b44517f8b9ce20a5bebca1a27658aa4cdb35136d1f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81679545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13199b554250c6c7699a1c693e97041cecdc425bad11bf573333c176e99500d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:49:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 14 Nov 2017 19:30:05 GMT
ENV INFLUXDB_VERSION=1.4.0
# Tue, 14 Nov 2017 19:30:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 14 Nov 2017 19:30:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 14 Nov 2017 19:30:13 GMT
EXPOSE 8086/tcp
# Tue, 14 Nov 2017 19:30:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 14 Nov 2017 19:30:13 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 14 Nov 2017 19:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 19:30:14 GMT
CMD ["influxd"]
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
	-	`sha256:eacd3c6f5057c1ec8ad588ab159739748a337d7d24fead2ccaa7f0a3cd50152c`  
		Last Modified: Sat, 04 Nov 2017 15:49:58 GMT  
		Size: 2.9 KB (2892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8e533ba0e734b8e177169a48bfd1ea4417a7905fa8dadb269ecaa2b9e285bb`  
		Last Modified: Tue, 14 Nov 2017 19:31:29 GMT  
		Size: 21.1 MB (21103729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104fdb7192f9844e78e316c8fd8d0fdbf991c6bd7cbd8561727aeda1485008fe`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d3d6b3a6f91524ec001e110111cc8e506aefaf783b4d70f20d1cf3dabeeefb`  
		Last Modified: Tue, 14 Nov 2017 19:31:26 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebcaf00f9c52377cfbfbe3b601e4150a25b43f5a1fb9d9a0cafea8face3871`  
		Last Modified: Tue, 14 Nov 2017 19:31:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
