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
$ docker pull influxdb@sha256:bdeaa555a5fe34aa8b33db0a04f46559b644aadce6c6553eafff3a9d8c5d00fd
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
$ docker pull influxdb@sha256:12cf46018b3b6dff6cc67fa823a88bff9cb6b25d72aca56d87d6e446ba5ad8a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71604779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5893d4d36a3970d59d8f62c0e03e930114b5aaf1b8c310d978e39a009571f1b2`
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
# Fri, 03 Nov 2017 01:31:13 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 03 Nov 2017 01:31:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:31:17 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 01:31:17 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 01:31:17 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 01:31:18 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Fri, 03 Nov 2017 01:31:18 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 01:31:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:31:19 GMT
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
	-	`sha256:c62893e0fbc26286579deba9401ab9992526530696a9a1c6e6a3946c27450841`  
		Last Modified: Fri, 03 Nov 2017 01:31:55 GMT  
		Size: 16.0 MB (16022231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377ab22fd0223bad02ee439f31087fb393a87487c90bbb694ef1c397a726d07d`  
		Last Modified: Fri, 03 Nov 2017 01:31:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a45014a72ee6a8a6366beac1d1556b97ad51179638029a4da4b2608d7589d9e`  
		Last Modified: Fri, 03 Nov 2017 01:31:48 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a1a658052cd8f93d37429510fdd358210bd6d8f2a23edf4ee4934f7aa1303`  
		Last Modified: Fri, 03 Nov 2017 01:31:48 GMT  
		Size: 1.2 KB (1156 bytes)  
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
$ docker pull influxdb@sha256:bdeaa555a5fe34aa8b33db0a04f46559b644aadce6c6553eafff3a9d8c5d00fd
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
$ docker pull influxdb@sha256:12cf46018b3b6dff6cc67fa823a88bff9cb6b25d72aca56d87d6e446ba5ad8a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71604779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5893d4d36a3970d59d8f62c0e03e930114b5aaf1b8c310d978e39a009571f1b2`
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
# Fri, 03 Nov 2017 01:31:13 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 03 Nov 2017 01:31:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 03 Nov 2017 01:31:17 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Nov 2017 01:31:17 GMT
EXPOSE 8086/tcp
# Fri, 03 Nov 2017 01:31:17 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Nov 2017 01:31:18 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Fri, 03 Nov 2017 01:31:18 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Fri, 03 Nov 2017 01:31:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 01:31:19 GMT
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
	-	`sha256:c62893e0fbc26286579deba9401ab9992526530696a9a1c6e6a3946c27450841`  
		Last Modified: Fri, 03 Nov 2017 01:31:55 GMT  
		Size: 16.0 MB (16022231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377ab22fd0223bad02ee439f31087fb393a87487c90bbb694ef1c397a726d07d`  
		Last Modified: Fri, 03 Nov 2017 01:31:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a45014a72ee6a8a6366beac1d1556b97ad51179638029a4da4b2608d7589d9e`  
		Last Modified: Fri, 03 Nov 2017 01:31:48 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a1a658052cd8f93d37429510fdd358210bd6d8f2a23edf4ee4934f7aa1303`  
		Last Modified: Fri, 03 Nov 2017 01:31:48 GMT  
		Size: 1.2 KB (1156 bytes)  
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
$ docker pull influxdb@sha256:6c2211d4f644ad7d9e76389f4930d4f5041549c93830f66ae8a99d943c14144e
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
$ docker pull influxdb@sha256:2c80134dcfac78c0d1b05f5fe8fe736e2106d1961bfd1274a02e741c26531fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75214865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5656e90f2c0539f8b43fdaf07bc128639138d4e98a231ff449b82c7561d412e`
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
# Sat, 28 Oct 2017 15:43:54 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 28 Oct 2017 15:44:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Oct 2017 15:44:05 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Oct 2017 15:44:05 GMT
EXPOSE 8086/tcp
# Sat, 28 Oct 2017 15:44:06 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Sat, 28 Oct 2017 15:44:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Oct 2017 15:44:08 GMT
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
	-	`sha256:ed6894ee6ee9f92c194edcbd9967ef47c3b608ae12b1c8c0266d294c0028df86`  
		Last Modified: Sat, 28 Oct 2017 15:44:45 GMT  
		Size: 17.8 MB (17847022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfc97f65c36dc69500aa5535b3197447203bb560e5f43958c2b76f5e943fdd9`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eee164fd5f21a2c760909047c89cc9d9c06896cf65b6f6ef3b7605282e729`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636814426da7749c7cef6db1f728b34f355c4549d92b0537351ceaf205804359`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.7`

```console
$ docker pull influxdb@sha256:6c2211d4f644ad7d9e76389f4930d4f5041549c93830f66ae8a99d943c14144e
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
$ docker pull influxdb@sha256:2c80134dcfac78c0d1b05f5fe8fe736e2106d1961bfd1274a02e741c26531fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75214865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5656e90f2c0539f8b43fdaf07bc128639138d4e98a231ff449b82c7561d412e`
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
# Sat, 28 Oct 2017 15:43:54 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 28 Oct 2017 15:44:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Oct 2017 15:44:05 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Oct 2017 15:44:05 GMT
EXPOSE 8086/tcp
# Sat, 28 Oct 2017 15:44:06 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Sat, 28 Oct 2017 15:44:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Oct 2017 15:44:08 GMT
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
	-	`sha256:ed6894ee6ee9f92c194edcbd9967ef47c3b608ae12b1c8c0266d294c0028df86`  
		Last Modified: Sat, 28 Oct 2017 15:44:45 GMT  
		Size: 17.8 MB (17847022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfc97f65c36dc69500aa5535b3197447203bb560e5f43958c2b76f5e943fdd9`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eee164fd5f21a2c760909047c89cc9d9c06896cf65b6f6ef3b7605282e729`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636814426da7749c7cef6db1f728b34f355c4549d92b0537351ceaf205804359`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 1.2 KB (1158 bytes)  
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
$ docker pull influxdb@sha256:6c2211d4f644ad7d9e76389f4930d4f5041549c93830f66ae8a99d943c14144e
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

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:2c80134dcfac78c0d1b05f5fe8fe736e2106d1961bfd1274a02e741c26531fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75214865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5656e90f2c0539f8b43fdaf07bc128639138d4e98a231ff449b82c7561d412e`
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
# Sat, 28 Oct 2017 15:43:54 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 28 Oct 2017 15:44:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Oct 2017 15:44:05 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Oct 2017 15:44:05 GMT
EXPOSE 8086/tcp
# Sat, 28 Oct 2017 15:44:06 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Oct 2017 15:44:07 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Sat, 28 Oct 2017 15:44:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Oct 2017 15:44:08 GMT
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
	-	`sha256:ed6894ee6ee9f92c194edcbd9967ef47c3b608ae12b1c8c0266d294c0028df86`  
		Last Modified: Sat, 28 Oct 2017 15:44:45 GMT  
		Size: 17.8 MB (17847022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfc97f65c36dc69500aa5535b3197447203bb560e5f43958c2b76f5e943fdd9`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eee164fd5f21a2c760909047c89cc9d9c06896cf65b6f6ef3b7605282e729`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636814426da7749c7cef6db1f728b34f355c4549d92b0537351ceaf205804359`  
		Last Modified: Sat, 28 Oct 2017 15:44:38 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
