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
$ docker pull influxdb@sha256:647bc7fefddf893aab5fe678aa7906c44a3de8f5e343a3729568746fc91f13fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2` - linux; amd64

```console
$ docker pull influxdb@sha256:2ad7827307c5e0948350aabf9af5c6c2236bdd353ac8212c870b52629e035f11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78377742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662e9c501aa0a95bf5bd3b782044adf80a6031f294b7be1b6bb77d24560728a1`
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
# Tue, 10 Oct 2017 06:10:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 06:10:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:10:17 GMT
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
	-	`sha256:db1d0c8e6a3e465b24ba07cce5a99220f92b370fba88fa8c5e8eded4883478eb`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 1.1 KB (1144 bytes)  
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
$ docker pull influxdb@sha256:f5c28fd94e0481cd51f4878002acf8aa5d1e71c58add34fc3df91273b8232883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73390561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff793a1382fab456d9dc08ebb475052580ed547ee9e87a90b09912efdf703cd`
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
# Tue, 10 Oct 2017 07:59:17 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 07:59:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:59:19 GMT
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
	-	`sha256:f377084f33feca35d1cd478284bec06cddc11853ea7bb9628e2ceabf520b74e4`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:647bc7fefddf893aab5fe678aa7906c44a3de8f5e343a3729568746fc91f13fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.2.4` - linux; amd64

```console
$ docker pull influxdb@sha256:2ad7827307c5e0948350aabf9af5c6c2236bdd353ac8212c870b52629e035f11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78377742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662e9c501aa0a95bf5bd3b782044adf80a6031f294b7be1b6bb77d24560728a1`
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
# Tue, 10 Oct 2017 06:10:16 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 06:10:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:10:17 GMT
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
	-	`sha256:db1d0c8e6a3e465b24ba07cce5a99220f92b370fba88fa8c5e8eded4883478eb`  
		Last Modified: Tue, 10 Oct 2017 06:11:02 GMT  
		Size: 1.1 KB (1144 bytes)  
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
$ docker pull influxdb@sha256:f5c28fd94e0481cd51f4878002acf8aa5d1e71c58add34fc3df91273b8232883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73390561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff793a1382fab456d9dc08ebb475052580ed547ee9e87a90b09912efdf703cd`
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
# Tue, 10 Oct 2017 07:59:17 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 07:59:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:59:19 GMT
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
	-	`sha256:f377084f33feca35d1cd478284bec06cddc11853ea7bb9628e2ceabf520b74e4`  
		Last Modified: Tue, 10 Oct 2017 08:00:18 GMT  
		Size: 1.1 KB (1144 bytes)  
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
$ docker pull influxdb@sha256:3e940493d20d9326fbe9b03c5ed03a9f08c2b2bdd5102609ba7746f30a832139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:4dcf99b7713ba6d0fe8e278d79215ac493b2d9a9c4eb5a99ba2d512a601b6bb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79967644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2c67af79f4b8dcb906bc90477820e7bdb1e38d33114a53b9b581618912e473`
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
# Tue, 10 Oct 2017 06:10:29 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 06:10:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:10:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 06:10:40 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 06:10:40 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:10:42 GMT
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
	-	`sha256:5dc248399a9d71a5a129b562098b8ba2d057d5faeaea4536cabf7c8bd030abaf`  
		Last Modified: Tue, 10 Oct 2017 06:11:48 GMT  
		Size: 19.1 MB (19094138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ba535bc0c87d1a9edef8b26dd03ff5b5f0c21bf401b14349d627e43a952e79`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fbeaf6471925ff2685ea2bec75de93ddcc0ed223378ed61ed66f82b16d1b8`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d01bbcde72aa432140864849744e461c771e6c38313e863646488b7186fc73`  
		Last Modified: Tue, 10 Oct 2017 06:11:43 GMT  
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
$ docker pull influxdb@sha256:ef1f03d59440c9b13715d76ea4d3703f4ff6d250c447cef1a71b206489423213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0debf22f0309923b67038637f86c947feb4d923656835845789882f5de0f6fa`
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
# Tue, 10 Oct 2017 07:59:46 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 07:59:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:59:48 GMT
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
	-	`sha256:d78e78cb71357e171036832e58ca9d8d00dca94a3a25d77a89abd79587907bc8`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.6`

```console
$ docker pull influxdb@sha256:3e940493d20d9326fbe9b03c5ed03a9f08c2b2bdd5102609ba7746f30a832139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.6` - linux; amd64

```console
$ docker pull influxdb@sha256:4dcf99b7713ba6d0fe8e278d79215ac493b2d9a9c4eb5a99ba2d512a601b6bb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79967644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2c67af79f4b8dcb906bc90477820e7bdb1e38d33114a53b9b581618912e473`
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
# Tue, 10 Oct 2017 06:10:29 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 06:10:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:10:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 06:10:40 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 06:10:40 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:10:42 GMT
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
	-	`sha256:5dc248399a9d71a5a129b562098b8ba2d057d5faeaea4536cabf7c8bd030abaf`  
		Last Modified: Tue, 10 Oct 2017 06:11:48 GMT  
		Size: 19.1 MB (19094138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ba535bc0c87d1a9edef8b26dd03ff5b5f0c21bf401b14349d627e43a952e79`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fbeaf6471925ff2685ea2bec75de93ddcc0ed223378ed61ed66f82b16d1b8`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d01bbcde72aa432140864849744e461c771e6c38313e863646488b7186fc73`  
		Last Modified: Tue, 10 Oct 2017 06:11:43 GMT  
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
$ docker pull influxdb@sha256:ef1f03d59440c9b13715d76ea4d3703f4ff6d250c447cef1a71b206489423213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0debf22f0309923b67038637f86c947feb4d923656835845789882f5de0f6fa`
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
# Tue, 10 Oct 2017 07:59:46 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 07:59:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:59:48 GMT
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
	-	`sha256:d78e78cb71357e171036832e58ca9d8d00dca94a3a25d77a89abd79587907bc8`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
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
$ docker pull influxdb@sha256:3e940493d20d9326fbe9b03c5ed03a9f08c2b2bdd5102609ba7746f30a832139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:4dcf99b7713ba6d0fe8e278d79215ac493b2d9a9c4eb5a99ba2d512a601b6bb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79967644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2c67af79f4b8dcb906bc90477820e7bdb1e38d33114a53b9b581618912e473`
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
# Tue, 10 Oct 2017 06:10:29 GMT
ENV INFLUXDB_VERSION=1.3.6
# Tue, 10 Oct 2017 06:10:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 10 Oct 2017 06:10:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 10 Oct 2017 06:10:40 GMT
EXPOSE 8086/tcp
# Tue, 10 Oct 2017 06:10:40 GMT
VOLUME [/var/lib/influxdb]
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 06:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 06:10:42 GMT
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
	-	`sha256:5dc248399a9d71a5a129b562098b8ba2d057d5faeaea4536cabf7c8bd030abaf`  
		Last Modified: Tue, 10 Oct 2017 06:11:48 GMT  
		Size: 19.1 MB (19094138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ba535bc0c87d1a9edef8b26dd03ff5b5f0c21bf401b14349d627e43a952e79`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0fbeaf6471925ff2685ea2bec75de93ddcc0ed223378ed61ed66f82b16d1b8`  
		Last Modified: Tue, 10 Oct 2017 06:11:42 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d01bbcde72aa432140864849744e461c771e6c38313e863646488b7186fc73`  
		Last Modified: Tue, 10 Oct 2017 06:11:43 GMT  
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
$ docker pull influxdb@sha256:ef1f03d59440c9b13715d76ea4d3703f4ff6d250c447cef1a71b206489423213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75193699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0debf22f0309923b67038637f86c947feb4d923656835845789882f5de0f6fa`
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
# Tue, 10 Oct 2017 07:59:46 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 10 Oct 2017 07:59:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:59:48 GMT
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
	-	`sha256:d78e78cb71357e171036832e58ca9d8d00dca94a3a25d77a89abd79587907bc8`  
		Last Modified: Tue, 10 Oct 2017 08:00:58 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
