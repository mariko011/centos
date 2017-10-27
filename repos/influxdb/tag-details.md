<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.4`](#influxdb124)
-	[`influxdb:1.2.4-alpine`](#influxdb124-alpine)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.7`](#influxdb137)
-	[`influxdb:1.3.7-alpine`](#influxdb137-alpine)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:latest`](#influxdblatest)

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:b76d5bab033d973ec0e107987606a61268d0860135db44f3049f51aaf901146e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2` - linux; amd64

```console
$ docker pull influxdb@sha256:5170425cbead9d9b39237cd0fc350183a20e45a148d353780a3150f74f772006
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78377754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfebf3d1205534efcc612f21bd437102ebfc91d14cd2e437ec5f801e8d29a7f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:10:07 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 06:10:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:10:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 06:10:15 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 06:10:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 06:10:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 11 Oct 2017 17:33:55 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Wed, 11 Oct 2017 17:33:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Oct 2017 17:33:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64d6d01bd409911c0f837eb8547cca25180ffa2208787e09826ae609ce8999f`  
		Last Modified: Tue, 10 Oct 2017 06:11:08 GMT  
		Size: 17.5 MB (17504234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302e51e91375a175964afba63350f7dc6a756a402aa0153958bc1f1726cba369`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b505d042ea254ad7b895273e62e1d372a04dfeaa86d9b5c36bf9045f4bbffec`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee287757dfe5d2acd672ece0bc079159821cc418304949cd19f6c33dd196e7`  
		Last Modified: Wed, 11 Oct 2017 17:34:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:46cc85a342e0e635111b7b190b7b71220b1870465d02e88dddb52c24da7fd749
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71903117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4927f95c9cb5cf8ca09b3c9e70bed2dd7b2fccd0a4f47db7a1da8e00cf85be0d`
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
# Thu, 12 Oct 2017 09:12:30 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 09:12:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 09:12:30 GMT
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
	-	`sha256:9443f64355b92b705f045735623b1f8f3b50a9a9c0291a6674129a66c07ebc0c`  
		Last Modified: Thu, 12 Oct 2017 09:12:49 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e81a8f5f3e8815fc5d9cd2db1d8854197051ee7f604d52c18c5e58f9983aaff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73390574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0d0348cb89eaa0261f63bf0894725d553fd7ad9e705babac5304da8fe92ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:59:04 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 07:59:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 07:59:14 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 07:59:14 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 07:59:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 07:59:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 12 Oct 2017 15:43:43 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 15:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 15:43:45 GMT
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
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e0a0470c17e8bd7fc3af0a4bbd1bbe9a6891723583b506c133b839f61ba51c`  
		Last Modified: Tue, 10 Oct 2017 08:00:25 GMT  
		Size: 16.0 MB (16022733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d755e0d561c6647e0125aaadbf0c6922b1bed6ab694080e9331355c05b1a23`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f849413d4f2432ecf600006219b75ab5c334b95bfbe33f4317ee4adfc8ab1ef`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe37e1ca77b9e85e7b39d12bb97b6fe2df0157398265e93bc1c47e00c774ff`  
		Last Modified: Thu, 12 Oct 2017 15:44:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:b76d5bab033d973ec0e107987606a61268d0860135db44f3049f51aaf901146e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2.4` - linux; amd64

```console
$ docker pull influxdb@sha256:5170425cbead9d9b39237cd0fc350183a20e45a148d353780a3150f74f772006
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78377754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfebf3d1205534efcc612f21bd437102ebfc91d14cd2e437ec5f801e8d29a7f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 06:10:07 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 06:10:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:10:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 06:10:15 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 06:10:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 06:10:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 11 Oct 2017 17:33:55 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Wed, 11 Oct 2017 17:33:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Oct 2017 17:33:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64d6d01bd409911c0f837eb8547cca25180ffa2208787e09826ae609ce8999f`  
		Last Modified: Tue, 10 Oct 2017 06:11:08 GMT  
		Size: 17.5 MB (17504234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302e51e91375a175964afba63350f7dc6a756a402aa0153958bc1f1726cba369`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b505d042ea254ad7b895273e62e1d372a04dfeaa86d9b5c36bf9045f4bbffec`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee287757dfe5d2acd672ece0bc079159821cc418304949cd19f6c33dd196e7`  
		Last Modified: Wed, 11 Oct 2017 17:34:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:46cc85a342e0e635111b7b190b7b71220b1870465d02e88dddb52c24da7fd749
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71903117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4927f95c9cb5cf8ca09b3c9e70bed2dd7b2fccd0a4f47db7a1da8e00cf85be0d`
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
# Thu, 12 Oct 2017 09:12:30 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 09:12:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 09:12:30 GMT
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
	-	`sha256:9443f64355b92b705f045735623b1f8f3b50a9a9c0291a6674129a66c07ebc0c`  
		Last Modified: Thu, 12 Oct 2017 09:12:49 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.2.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e81a8f5f3e8815fc5d9cd2db1d8854197051ee7f604d52c18c5e58f9983aaff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73390574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0d0348cb89eaa0261f63bf0894725d553fd7ad9e705babac5304da8fe92ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:59:04 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 10 Oct 2017 07:59:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 07:59:14 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 07:59:14 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 07:59:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 07:59:16 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Thu, 12 Oct 2017 15:43:43 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 15:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 15:43:45 GMT
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
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e0a0470c17e8bd7fc3af0a4bbd1bbe9a6891723583b506c133b839f61ba51c`  
		Last Modified: Tue, 10 Oct 2017 08:00:25 GMT  
		Size: 16.0 MB (16022733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d755e0d561c6647e0125aaadbf0c6922b1bed6ab694080e9331355c05b1a23`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f849413d4f2432ecf600006219b75ab5c334b95bfbe33f4317ee4adfc8ab1ef`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fe37e1ca77b9e85e7b39d12bb97b6fe2df0157398265e93bc1c47e00c774ff`  
		Last Modified: Thu, 12 Oct 2017 15:44:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:fbd0821374007a819278486041a0626ce6ea7ca2cff65370222752e32000a393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:8e5681a627b166cd9b0c7c84fdd4cdc64636b9270332eaeee55ea3b6a7a826c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15571562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56ac2dc9dd61fa59cd76838371b44c1f1e01bd1d9965d36c3b6a9c9888812ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:16 GMT
RUN apk add --no-cache bash
# Thu, 26 Oct 2017 03:30:16 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 26 Oct 2017 03:30:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 03:30:31 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 26 Oct 2017 03:30:31 GMT
EXPOSE 8086/tcp
# Thu, 26 Oct 2017 03:30:31 GMT
VOLUME [/var/lib/influxdb]
# Thu, 26 Oct 2017 03:30:32 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 26 Oct 2017 03:30:32 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 26 Oct 2017 03:30:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:30:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc4248b20b5b9a6ffebf4aa157faca7e1f4a20df36e612b4722b4d85adea84d`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 1.1 MB (1108683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17fb51074755f16e2b8d79bf43b7f404aa35246fe148a8bd63be79d21145a`  
		Last Modified: Thu, 26 Oct 2017 03:31:15 GMT  
		Size: 12.5 MB (12490899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa54a7c0d1e490ab18fa2027cde7be2409084860fc4b056bf1dfdc4a42a4aaa1`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b8d68b05a706c18a6f7a9d75872268e63d42ebd7b40cb895871fb09851371e`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b6cee5cbf1e1b24438b56da50561334e3bdb460805e6682d2ba4d1b00de51`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:fbd0821374007a819278486041a0626ce6ea7ca2cff65370222752e32000a393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:8e5681a627b166cd9b0c7c84fdd4cdc64636b9270332eaeee55ea3b6a7a826c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15571562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56ac2dc9dd61fa59cd76838371b44c1f1e01bd1d9965d36c3b6a9c9888812ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:16 GMT
RUN apk add --no-cache bash
# Thu, 26 Oct 2017 03:30:16 GMT
ENV INFLUXDB_VERSION=1.2.4
# Thu, 26 Oct 2017 03:30:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 03:30:31 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 26 Oct 2017 03:30:31 GMT
EXPOSE 8086/tcp
# Thu, 26 Oct 2017 03:30:31 GMT
VOLUME [/var/lib/influxdb]
# Thu, 26 Oct 2017 03:30:32 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 26 Oct 2017 03:30:32 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 26 Oct 2017 03:30:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:30:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc4248b20b5b9a6ffebf4aa157faca7e1f4a20df36e612b4722b4d85adea84d`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 1.1 MB (1108683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f17fb51074755f16e2b8d79bf43b7f404aa35246fe148a8bd63be79d21145a`  
		Last Modified: Thu, 26 Oct 2017 03:31:15 GMT  
		Size: 12.5 MB (12490899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa54a7c0d1e490ab18fa2027cde7be2409084860fc4b056bf1dfdc4a42a4aaa1`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b8d68b05a706c18a6f7a9d75872268e63d42ebd7b40cb895871fb09851371e`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b6cee5cbf1e1b24438b56da50561334e3bdb460805e6682d2ba4d1b00de51`  
		Last Modified: Thu, 26 Oct 2017 03:31:13 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:0960e3db2e55782e3738da86902fe78132f8410744c6233652d11f77843678bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:dcb785775e0f002b6b13eff88e599298f96ede12cc7d5638aa9a5a906e0a47f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b06996058aeedf0827c1b7e51e49c260a920a2b130003cce29dfc68845fda38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 27 Oct 2017 16:30:39 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:30:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 27 Oct 2017 16:30:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:30:47 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:30:47 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:30:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1692bc0544f2d39fb1623ee04c97c677394d1373e61200ab35afa593c53268`  
		Last Modified: Fri, 27 Oct 2017 16:31:47 GMT  
		Size: 19.1 MB (19120431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862fd1e4fe4883ee3cd99d01a5fcc1b7275bc2e4ae151a17ecdd0f3ab8a9f6b`  
		Last Modified: Fri, 27 Oct 2017 16:31:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dad54584d29f815244366642194d6b07896a866c5f9757dd63b3fc85f1c15c`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47701c5fb8ab5522c5656ac6d9785d7d7e3384bc953e7faf61c6ffa1d5ef1982`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:51aa126c540a648155d48db602229fb3dcbf7404eb3e15c7766cad9be937f6d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0920d59d8eeacc72cb65f466d6100b07e71569e53be3ac4fcda3900ea331aac`
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
# Thu, 12 Oct 2017 09:12:38 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 09:12:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 09:12:38 GMT
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
	-	`sha256:993dfc2ff9bc96b9623962ab08b212cd32fd8032b36b1118505a7039f62d231c`  
		Last Modified: Thu, 12 Oct 2017 09:13:02 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5413cc008989f0334d699491ad4515e9d370dc32acaba4e28e6fb37ed44c1041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a01ec2d9935740b1c58bf6509241ff038193882d38fc4fd8a75768e8273ab3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:59:32 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 07:59:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 07:59:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 07:59:42 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 07:59:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 07:59:45 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 12 Oct 2017 15:43:58 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 15:43:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 15:43:59 GMT
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
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360eb5eab6a03848521235a7a9ed8db2d11db2c595b235d44fa09a7eb9c743f9`  
		Last Modified: Tue, 10 Oct 2017 08:01:06 GMT  
		Size: 17.8 MB (17825870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1990004877c2f9eb62b14b518d2299ae9d058c98a5f878229229f9dda14a1b`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4834846772997115565b57c3412b4678f0e34541becade9971b1bddd5c6eb`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761721cbbd209dc19c954149b128919fc9ec68ea46916ab955cc5f47ea49b109`  
		Last Modified: Thu, 12 Oct 2017 15:44:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.7`

```console
$ docker pull influxdb@sha256:0960e3db2e55782e3738da86902fe78132f8410744c6233652d11f77843678bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.7` - linux; amd64

```console
$ docker pull influxdb@sha256:dcb785775e0f002b6b13eff88e599298f96ede12cc7d5638aa9a5a906e0a47f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b06996058aeedf0827c1b7e51e49c260a920a2b130003cce29dfc68845fda38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 27 Oct 2017 16:30:39 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:30:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 27 Oct 2017 16:30:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:30:47 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:30:47 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:30:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1692bc0544f2d39fb1623ee04c97c677394d1373e61200ab35afa593c53268`  
		Last Modified: Fri, 27 Oct 2017 16:31:47 GMT  
		Size: 19.1 MB (19120431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862fd1e4fe4883ee3cd99d01a5fcc1b7275bc2e4ae151a17ecdd0f3ab8a9f6b`  
		Last Modified: Fri, 27 Oct 2017 16:31:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dad54584d29f815244366642194d6b07896a866c5f9757dd63b3fc85f1c15c`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47701c5fb8ab5522c5656ac6d9785d7d7e3384bc953e7faf61c6ffa1d5ef1982`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:51aa126c540a648155d48db602229fb3dcbf7404eb3e15c7766cad9be937f6d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0920d59d8eeacc72cb65f466d6100b07e71569e53be3ac4fcda3900ea331aac`
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
# Thu, 12 Oct 2017 09:12:38 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 09:12:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 09:12:38 GMT
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
	-	`sha256:993dfc2ff9bc96b9623962ab08b212cd32fd8032b36b1118505a7039f62d231c`  
		Last Modified: Thu, 12 Oct 2017 09:13:02 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5413cc008989f0334d699491ad4515e9d370dc32acaba4e28e6fb37ed44c1041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a01ec2d9935740b1c58bf6509241ff038193882d38fc4fd8a75768e8273ab3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:59:32 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 07:59:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 07:59:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 07:59:42 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 07:59:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 07:59:45 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 12 Oct 2017 15:43:58 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 15:43:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 15:43:59 GMT
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
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360eb5eab6a03848521235a7a9ed8db2d11db2c595b235d44fa09a7eb9c743f9`  
		Last Modified: Tue, 10 Oct 2017 08:01:06 GMT  
		Size: 17.8 MB (17825870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1990004877c2f9eb62b14b518d2299ae9d058c98a5f878229229f9dda14a1b`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4834846772997115565b57c3412b4678f0e34541becade9971b1bddd5c6eb`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761721cbbd209dc19c954149b128919fc9ec68ea46916ab955cc5f47ea49b109`  
		Last Modified: Thu, 12 Oct 2017 15:44:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.7-alpine`

```console
$ docker pull influxdb@sha256:54eaefbd7b2d059ba69444cc3ae98f45aae2167641e7f6388879876993aee0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:81a682e11c573c37843ae89c0106f0e2a413918768c097e7ec20d3e7000c320d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22488318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d89775c576429c10c74d38d5e93a16807d507b23e51a613bf26b5f5873098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:46 GMT
RUN apk add --no-cache tzdata bash
# Fri, 27 Oct 2017 16:30:58 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:31:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:31:19 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:31:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:31:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdda56977ed32dcf1b6cec82d304ad673e796a34eb1459cecbb6afee882ae50a`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 1.5 MB (1501417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792df40254a95a66ce98274f96a074fe05ce5b59f8f736203c971e262b14d80`  
		Last Modified: Fri, 27 Oct 2017 16:32:23 GMT  
		Size: 19.0 MB (19014922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad696fc23cf3f1ff85ff5a324df1d219f9087a853daa3bb3c43854897496546`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e409046b5f5d733c988dbc4138bed3804e37b163d16320959164ef2421e600d`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2ed2e8da32e5edf4f242b030f7a16015892b516601e182c56d3accca8b44f4`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:54eaefbd7b2d059ba69444cc3ae98f45aae2167641e7f6388879876993aee0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:81a682e11c573c37843ae89c0106f0e2a413918768c097e7ec20d3e7000c320d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22488318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d89775c576429c10c74d38d5e93a16807d507b23e51a613bf26b5f5873098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:46 GMT
RUN apk add --no-cache tzdata bash
# Fri, 27 Oct 2017 16:30:58 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:31:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:31:19 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:31:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:31:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdda56977ed32dcf1b6cec82d304ad673e796a34eb1459cecbb6afee882ae50a`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 1.5 MB (1501417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792df40254a95a66ce98274f96a074fe05ce5b59f8f736203c971e262b14d80`  
		Last Modified: Fri, 27 Oct 2017 16:32:23 GMT  
		Size: 19.0 MB (19014922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad696fc23cf3f1ff85ff5a324df1d219f9087a853daa3bb3c43854897496546`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e409046b5f5d733c988dbc4138bed3804e37b163d16320959164ef2421e600d`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2ed2e8da32e5edf4f242b030f7a16015892b516601e182c56d3accca8b44f4`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:54eaefbd7b2d059ba69444cc3ae98f45aae2167641e7f6388879876993aee0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:81a682e11c573c37843ae89c0106f0e2a413918768c097e7ec20d3e7000c320d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22488318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d89775c576429c10c74d38d5e93a16807d507b23e51a613bf26b5f5873098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:30:46 GMT
RUN apk add --no-cache tzdata bash
# Fri, 27 Oct 2017 16:30:58 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:31:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:31:19 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:31:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:31:19 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:31:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:31:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e469830edfc59d1d69f99081cb0cc293c83560e39765c671b94d744fe398b1`  
		Last Modified: Wed, 25 Oct 2017 23:47:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdda56977ed32dcf1b6cec82d304ad673e796a34eb1459cecbb6afee882ae50a`  
		Last Modified: Thu, 26 Oct 2017 03:31:40 GMT  
		Size: 1.5 MB (1501417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792df40254a95a66ce98274f96a074fe05ce5b59f8f736203c971e262b14d80`  
		Last Modified: Fri, 27 Oct 2017 16:32:23 GMT  
		Size: 19.0 MB (19014922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad696fc23cf3f1ff85ff5a324df1d219f9087a853daa3bb3c43854897496546`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e409046b5f5d733c988dbc4138bed3804e37b163d16320959164ef2421e600d`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2ed2e8da32e5edf4f242b030f7a16015892b516601e182c56d3accca8b44f4`  
		Last Modified: Fri, 27 Oct 2017 16:32:19 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:0960e3db2e55782e3738da86902fe78132f8410744c6233652d11f77843678bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:dcb785775e0f002b6b13eff88e599298f96ede12cc7d5638aa9a5a906e0a47f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b06996058aeedf0827c1b7e51e49c260a920a2b130003cce29dfc68845fda38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:10:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 27 Oct 2017 16:30:39 GMT
ENV INFLUXDB_VERSION=1.3.7
# Fri, 27 Oct 2017 16:30:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 27 Oct 2017 16:30:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 27 Oct 2017 16:30:47 GMT
EXPOSE 8086/tcp
# Fri, 27 Oct 2017 16:30:47 GMT
VOLUME [/var/lib/influxdb]
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 27 Oct 2017 16:30:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 16:30:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f09297ad0c69aec7dd1e33bb32eccc545ffbb4154267d31483fd3f4f3adce`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1692bc0544f2d39fb1623ee04c97c677394d1373e61200ab35afa593c53268`  
		Last Modified: Fri, 27 Oct 2017 16:31:47 GMT  
		Size: 19.1 MB (19120431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862fd1e4fe4883ee3cd99d01a5fcc1b7275bc2e4ae151a17ecdd0f3ab8a9f6b`  
		Last Modified: Fri, 27 Oct 2017 16:31:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dad54584d29f815244366642194d6b07896a866c5f9757dd63b3fc85f1c15c`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47701c5fb8ab5522c5656ac6d9785d7d7e3384bc953e7faf61c6ffa1d5ef1982`  
		Last Modified: Fri, 27 Oct 2017 16:31:43 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:51aa126c540a648155d48db602229fb3dcbf7404eb3e15c7766cad9be937f6d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74023406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0920d59d8eeacc72cb65f466d6100b07e71569e53be3ac4fcda3900ea331aac`
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
# Thu, 12 Oct 2017 09:12:38 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 09:12:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 09:12:38 GMT
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
	-	`sha256:993dfc2ff9bc96b9623962ab08b212cd32fd8032b36b1118505a7039f62d231c`  
		Last Modified: Thu, 12 Oct 2017 09:13:02 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5413cc008989f0334d699491ad4515e9d370dc32acaba4e28e6fb37ed44c1041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a01ec2d9935740b1c58bf6509241ff038193882d38fc4fd8a75768e8273ab3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:59:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:59:32 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 07:59:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 07:59:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 07:59:42 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 07:59:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 07:59:45 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 12 Oct 2017 15:43:58 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Thu, 12 Oct 2017 15:43:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Oct 2017 15:43:59 GMT
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
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3db56cfc57d9ee6847490b7b1ca14eb648a72bdaeb61e6f56f4a31cbfd164a`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360eb5eab6a03848521235a7a9ed8db2d11db2c595b235d44fa09a7eb9c743f9`  
		Last Modified: Tue, 10 Oct 2017 08:01:06 GMT  
		Size: 17.8 MB (17825870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1990004877c2f9eb62b14b518d2299ae9d058c98a5f878229229f9dda14a1b`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4834846772997115565b57c3412b4678f0e34541becade9971b1bddd5c6eb`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761721cbbd209dc19c954149b128919fc9ec68ea46916ab955cc5f47ea49b109`  
		Last Modified: Thu, 12 Oct 2017 15:44:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
