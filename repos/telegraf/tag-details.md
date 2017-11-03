<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.3`](#telegraf13)
-	[`telegraf:1.3.5`](#telegraf135)
-	[`telegraf:1.3.5-alpine`](#telegraf135-alpine)
-	[`telegraf:1.3-alpine`](#telegraf13-alpine)
-	[`telegraf:1.4`](#telegraf14)
-	[`telegraf:1.4.3`](#telegraf143)
-	[`telegraf:1.4.3-alpine`](#telegraf143-alpine)
-	[`telegraf:1.4-alpine`](#telegraf14-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.3`

```console
$ docker pull telegraf@sha256:2b010f278801200cc355e20d144a34c764ca15bc68749969f905251753093906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.3` - linux; amd64

```console
$ docker pull telegraf@sha256:529ee7f4488287391b41ac2b271a72bbeb34feea7fe1afd9cb99facb0a58990a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87354822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f944336787fd27df51989e089e58a9fbad7c21cd47a6836551ef06b53fcb2d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:19:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:19:54 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:19:54 GMT
ENV TELEGRAF_VERSION=1.3.5
# Tue, 10 Oct 2017 07:20:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 10 Oct 2017 07:20:16 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 10 Oct 2017 07:20:16 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 10 Oct 2017 07:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:20:17 GMT
CMD ["telegraf"]
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
	-	`sha256:e8e540aef22889c5f6b659824d1a7fdc10a656aaddd047c462df1bbea5eb7d2b`  
		Last Modified: Tue, 10 Oct 2017 07:20:50 GMT  
		Size: 15.1 MB (15097149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821ca8e19c636ac205f8352913a971f3b2bb996433851ef73f10daaa571a7e9`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea63608d4d4f74c5f0aef1dfe252ce35b6b46e4ff060c3b2bb9f2974ecef3992`  
		Last Modified: Tue, 10 Oct 2017 07:20:51 GMT  
		Size: 11.4 MB (11385555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10236888f29b0a80aa650154baaa79b0e452755984f8c14bba46396b3861ed37`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:34522e338d801e0e3c532e028929b2b898540a80b247e96b87ee5e78abf2be0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80512962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9c1496a7f9252f36d95ec5a1091ffa7b45fd6e63d9c580b9f81c2a6c8c0f18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:52:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 00:52:40 GMT
ENV TELEGRAF_VERSION=1.3.5
# Fri, 03 Nov 2017 00:52:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 03 Nov 2017 00:52:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Nov 2017 00:52:51 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 03 Nov 2017 00:52:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 00:52:51 GMT
CMD ["telegraf"]
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
	-	`sha256:0580a32a35756663a66e0df01ba6758698d68c2644e6c54b18d0414461d5b39b`  
		Last Modified: Fri, 03 Nov 2017 00:53:28 GMT  
		Size: 14.0 MB (14022965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50009bfdbc13464fd8ed03ff8021917c17d7a7994666108fd7bdbce2d8e097`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5db484beaad79bc6a20241a6bbc1dfa4bfea3e33349b086ce5c909fea2404d`  
		Last Modified: Fri, 03 Nov 2017 00:53:27 GMT  
		Size: 10.9 MB (10908853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252ad3d3c023c443c0deeec3547b497ba244e38fa5eed776056c7be89792ef6e`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0df08ec1ff981402caa2560b768fa8ec8abdcdc5a7e644b35b08cc35e7a82784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82977583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655e98350a76e670003d293d91d688c88d36f28ee174a1a5666044e7320f0f4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 11:48:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 11:48:14 GMT
ENV TELEGRAF_VERSION=1.3.5
# Tue, 10 Oct 2017 11:48:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 10 Oct 2017 11:48:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 10 Oct 2017 11:48:26 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 10 Oct 2017 11:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:48:28 GMT
CMD ["telegraf"]
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
	-	`sha256:5a8ed6339db47f1e6f0b40db789e4848d7e9e4ecfc7bd435d387e564d891f30d`  
		Last Modified: Tue, 10 Oct 2017 11:49:37 GMT  
		Size: 14.7 MB (14702199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6f02d1f93bab01a48a26f51668ce7462068b20f197d870e657a89bfefbf6f`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49c73ffbccd83ef1df7860277272245a00a05cebc45b3b9b167528daa48b896`  
		Last Modified: Tue, 10 Oct 2017 11:49:36 GMT  
		Size: 10.9 MB (10908950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b9f69a7c675447e8355acd8974fc0f7b73ee9841474cb5831091eeefef6262`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.5`

```console
$ docker pull telegraf@sha256:2b010f278801200cc355e20d144a34c764ca15bc68749969f905251753093906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.3.5` - linux; amd64

```console
$ docker pull telegraf@sha256:529ee7f4488287391b41ac2b271a72bbeb34feea7fe1afd9cb99facb0a58990a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87354822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f944336787fd27df51989e089e58a9fbad7c21cd47a6836551ef06b53fcb2d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:19:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:19:54 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 07:19:54 GMT
ENV TELEGRAF_VERSION=1.3.5
# Tue, 10 Oct 2017 07:20:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 10 Oct 2017 07:20:16 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 10 Oct 2017 07:20:16 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 10 Oct 2017 07:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 07:20:17 GMT
CMD ["telegraf"]
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
	-	`sha256:e8e540aef22889c5f6b659824d1a7fdc10a656aaddd047c462df1bbea5eb7d2b`  
		Last Modified: Tue, 10 Oct 2017 07:20:50 GMT  
		Size: 15.1 MB (15097149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821ca8e19c636ac205f8352913a971f3b2bb996433851ef73f10daaa571a7e9`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea63608d4d4f74c5f0aef1dfe252ce35b6b46e4ff060c3b2bb9f2974ecef3992`  
		Last Modified: Tue, 10 Oct 2017 07:20:51 GMT  
		Size: 11.4 MB (11385555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10236888f29b0a80aa650154baaa79b0e452755984f8c14bba46396b3861ed37`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:34522e338d801e0e3c532e028929b2b898540a80b247e96b87ee5e78abf2be0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80512962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9c1496a7f9252f36d95ec5a1091ffa7b45fd6e63d9c580b9f81c2a6c8c0f18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:52:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 00:52:40 GMT
ENV TELEGRAF_VERSION=1.3.5
# Fri, 03 Nov 2017 00:52:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 03 Nov 2017 00:52:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Nov 2017 00:52:51 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 03 Nov 2017 00:52:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 00:52:51 GMT
CMD ["telegraf"]
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
	-	`sha256:0580a32a35756663a66e0df01ba6758698d68c2644e6c54b18d0414461d5b39b`  
		Last Modified: Fri, 03 Nov 2017 00:53:28 GMT  
		Size: 14.0 MB (14022965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50009bfdbc13464fd8ed03ff8021917c17d7a7994666108fd7bdbce2d8e097`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5db484beaad79bc6a20241a6bbc1dfa4bfea3e33349b086ce5c909fea2404d`  
		Last Modified: Fri, 03 Nov 2017 00:53:27 GMT  
		Size: 10.9 MB (10908853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252ad3d3c023c443c0deeec3547b497ba244e38fa5eed776056c7be89792ef6e`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0df08ec1ff981402caa2560b768fa8ec8abdcdc5a7e644b35b08cc35e7a82784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82977583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655e98350a76e670003d293d91d688c88d36f28ee174a1a5666044e7320f0f4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 11:48:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 10 Oct 2017 11:48:14 GMT
ENV TELEGRAF_VERSION=1.3.5
# Tue, 10 Oct 2017 11:48:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 10 Oct 2017 11:48:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 10 Oct 2017 11:48:26 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 10 Oct 2017 11:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Oct 2017 11:48:28 GMT
CMD ["telegraf"]
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
	-	`sha256:5a8ed6339db47f1e6f0b40db789e4848d7e9e4ecfc7bd435d387e564d891f30d`  
		Last Modified: Tue, 10 Oct 2017 11:49:37 GMT  
		Size: 14.7 MB (14702199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6f02d1f93bab01a48a26f51668ce7462068b20f197d870e657a89bfefbf6f`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49c73ffbccd83ef1df7860277272245a00a05cebc45b3b9b167528daa48b896`  
		Last Modified: Tue, 10 Oct 2017 11:49:36 GMT  
		Size: 10.9 MB (10908950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b9f69a7c675447e8355acd8974fc0f7b73ee9841474cb5831091eeefef6262`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.5-alpine`

```console
$ docker pull telegraf@sha256:e7801965ea5cfd7e9a35d205366a57891832c3246098c23e7597e51c9b78798d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.3.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7c4332e5e567c7a637a3760dd679dd72683c097916c41d93d3a1eec04df55622
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12254004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40ce6d11db28cc22b739e9f7b893fa6b45e43a4a81ca40744f58599fb1a4a1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:14:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 26 Oct 2017 03:14:14 GMT
ENV TELEGRAF_VERSION=1.3.5
# Thu, 26 Oct 2017 03:14:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 03:14:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 03:14:32 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 26 Oct 2017 03:14:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:14:32 GMT
CMD ["telegraf"]
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
	-	`sha256:9b3b90c26e76ba02f2ebb80e14b7b6b307d4b79816552888efdc1a08e2374988`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 1.8 MB (1771309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73b17083685cfab72d94fd3bea51058622f32e3cbd08925806c2254d3c065e5`  
		Last Modified: Thu, 26 Oct 2017 03:15:27 GMT  
		Size: 8.5 MB (8512123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46f39b1ccc8b076020494a63fa6eff860d626f9aed82d19a6512114dd4a6ff8`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3-alpine`

```console
$ docker pull telegraf@sha256:e7801965ea5cfd7e9a35d205366a57891832c3246098c23e7597e51c9b78798d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7c4332e5e567c7a637a3760dd679dd72683c097916c41d93d3a1eec04df55622
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12254004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40ce6d11db28cc22b739e9f7b893fa6b45e43a4a81ca40744f58599fb1a4a1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:14:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 26 Oct 2017 03:14:14 GMT
ENV TELEGRAF_VERSION=1.3.5
# Thu, 26 Oct 2017 03:14:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 03:14:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 03:14:32 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 26 Oct 2017 03:14:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:14:32 GMT
CMD ["telegraf"]
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
	-	`sha256:9b3b90c26e76ba02f2ebb80e14b7b6b307d4b79816552888efdc1a08e2374988`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 1.8 MB (1771309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73b17083685cfab72d94fd3bea51058622f32e3cbd08925806c2254d3c065e5`  
		Last Modified: Thu, 26 Oct 2017 03:15:27 GMT  
		Size: 8.5 MB (8512123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46f39b1ccc8b076020494a63fa6eff860d626f9aed82d19a6512114dd4a6ff8`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4`

```console
$ docker pull telegraf@sha256:44956924b102270757d2efb7b52b9a6c8fe369867119bd150fcccd88ae9e6d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4` - linux; amd64

```console
$ docker pull telegraf@sha256:970ab853b89bfbc9e56a508ec5171210120a5c426c10722eb1263b3845eea8d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84937052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1325ecd2dbf7ab6b79004f7862bcc299859aec3994809209908e899a5800e0e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:19:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:19:54 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 15:58:59 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 15:59:03 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:04 GMT
CMD ["telegraf"]
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
	-	`sha256:e8e540aef22889c5f6b659824d1a7fdc10a656aaddd047c462df1bbea5eb7d2b`  
		Last Modified: Tue, 10 Oct 2017 07:20:50 GMT  
		Size: 15.1 MB (15097149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821ca8e19c636ac205f8352913a971f3b2bb996433851ef73f10daaa571a7e9`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980977b40885694420de7ee647ec086b03a1c0c2254d011956f4591189de8d5b`  
		Last Modified: Thu, 26 Oct 2017 15:59:46 GMT  
		Size: 9.0 MB (8967784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad47f0415915f79f17ee807eb8e6001093328181f3625ec4ed47a9d412767ad`  
		Last Modified: Thu, 26 Oct 2017 15:59:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:95e4152c2881397f54fcd6abb85f53133010ce4d94c435cd1289ba4c3aec9008
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78149141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4f9a305828e2047822dc25fe617e8cbeef90f77b87d7dc6db876e195c42774`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:52:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 00:53:04 GMT
ENV TELEGRAF_VERSION=1.4.3
# Fri, 03 Nov 2017 00:53:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 03 Nov 2017 00:53:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Nov 2017 00:53:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 03 Nov 2017 00:53:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 00:53:10 GMT
CMD ["telegraf"]
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
	-	`sha256:0580a32a35756663a66e0df01ba6758698d68c2644e6c54b18d0414461d5b39b`  
		Last Modified: Fri, 03 Nov 2017 00:53:28 GMT  
		Size: 14.0 MB (14022965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50009bfdbc13464fd8ed03ff8021917c17d7a7994666108fd7bdbce2d8e097`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336269bbbe3f4e55d0edadcf2cdbced40ac480d34ca1b0407b0275263a06b6d`  
		Last Modified: Fri, 03 Nov 2017 00:53:53 GMT  
		Size: 8.5 MB (8545033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1d778a03d4017468f3a388bd533017b716baac1571e45ac14a2f93af58164`  
		Last Modified: Fri, 03 Nov 2017 00:53:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:01ee3603fc9e17095e8f9ba69ab7261eb728c3c7102c3e737925352e38ccafce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80463937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd237c8421714dbad002cc319c122139595fdc859ae257723fffe82287ab09f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 11:48:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 18:45:53 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 18:46:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 18:46:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 18:46:05 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 18:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 18:46:06 GMT
CMD ["telegraf"]
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
	-	`sha256:5a8ed6339db47f1e6f0b40db789e4848d7e9e4ecfc7bd435d387e564d891f30d`  
		Last Modified: Tue, 10 Oct 2017 11:49:37 GMT  
		Size: 14.7 MB (14702199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6f02d1f93bab01a48a26f51668ce7462068b20f197d870e657a89bfefbf6f`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb6e8a5cc8744c167d855829d0139e653ea98675b6e007b485e48ca866ddfa9`  
		Last Modified: Thu, 26 Oct 2017 18:46:31 GMT  
		Size: 8.4 MB (8395302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e458dca89c0254547379665b275a46b1ee5172735156661c3f4d4a40e86d8b3`  
		Last Modified: Thu, 26 Oct 2017 18:46:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.3`

```console
$ docker pull telegraf@sha256:44956924b102270757d2efb7b52b9a6c8fe369867119bd150fcccd88ae9e6d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4.3` - linux; amd64

```console
$ docker pull telegraf@sha256:970ab853b89bfbc9e56a508ec5171210120a5c426c10722eb1263b3845eea8d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84937052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1325ecd2dbf7ab6b79004f7862bcc299859aec3994809209908e899a5800e0e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:19:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:19:54 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 15:58:59 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 15:59:03 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:04 GMT
CMD ["telegraf"]
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
	-	`sha256:e8e540aef22889c5f6b659824d1a7fdc10a656aaddd047c462df1bbea5eb7d2b`  
		Last Modified: Tue, 10 Oct 2017 07:20:50 GMT  
		Size: 15.1 MB (15097149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821ca8e19c636ac205f8352913a971f3b2bb996433851ef73f10daaa571a7e9`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980977b40885694420de7ee647ec086b03a1c0c2254d011956f4591189de8d5b`  
		Last Modified: Thu, 26 Oct 2017 15:59:46 GMT  
		Size: 9.0 MB (8967784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad47f0415915f79f17ee807eb8e6001093328181f3625ec4ed47a9d412767ad`  
		Last Modified: Thu, 26 Oct 2017 15:59:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:95e4152c2881397f54fcd6abb85f53133010ce4d94c435cd1289ba4c3aec9008
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78149141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4f9a305828e2047822dc25fe617e8cbeef90f77b87d7dc6db876e195c42774`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:52:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 00:53:04 GMT
ENV TELEGRAF_VERSION=1.4.3
# Fri, 03 Nov 2017 00:53:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 03 Nov 2017 00:53:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Nov 2017 00:53:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 03 Nov 2017 00:53:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 00:53:10 GMT
CMD ["telegraf"]
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
	-	`sha256:0580a32a35756663a66e0df01ba6758698d68c2644e6c54b18d0414461d5b39b`  
		Last Modified: Fri, 03 Nov 2017 00:53:28 GMT  
		Size: 14.0 MB (14022965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50009bfdbc13464fd8ed03ff8021917c17d7a7994666108fd7bdbce2d8e097`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336269bbbe3f4e55d0edadcf2cdbced40ac480d34ca1b0407b0275263a06b6d`  
		Last Modified: Fri, 03 Nov 2017 00:53:53 GMT  
		Size: 8.5 MB (8545033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1d778a03d4017468f3a388bd533017b716baac1571e45ac14a2f93af58164`  
		Last Modified: Fri, 03 Nov 2017 00:53:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:01ee3603fc9e17095e8f9ba69ab7261eb728c3c7102c3e737925352e38ccafce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80463937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd237c8421714dbad002cc319c122139595fdc859ae257723fffe82287ab09f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 11:48:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 18:45:53 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 18:46:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 18:46:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 18:46:05 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 18:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 18:46:06 GMT
CMD ["telegraf"]
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
	-	`sha256:5a8ed6339db47f1e6f0b40db789e4848d7e9e4ecfc7bd435d387e564d891f30d`  
		Last Modified: Tue, 10 Oct 2017 11:49:37 GMT  
		Size: 14.7 MB (14702199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6f02d1f93bab01a48a26f51668ce7462068b20f197d870e657a89bfefbf6f`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb6e8a5cc8744c167d855829d0139e653ea98675b6e007b485e48ca866ddfa9`  
		Last Modified: Thu, 26 Oct 2017 18:46:31 GMT  
		Size: 8.4 MB (8395302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e458dca89c0254547379665b275a46b1ee5172735156661c3f4d4a40e86d8b3`  
		Last Modified: Thu, 26 Oct 2017 18:46:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.3-alpine`

```console
$ docker pull telegraf@sha256:864f773a68f2d0bc710f692d73a496c3fe7a2a8ddb72ff82c9208b3216f4cfc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6361719dde123d8a3bc0a3530fd4f805740ce906ae7eaffd1a57677a1488796a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12617341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ae28051506977916d4c7635fe334d48f858c66d6400f6f96f8b2d351f7acc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:14:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 26 Oct 2017 15:59:13 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 15:59:26 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:26 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:27 GMT
CMD ["telegraf"]
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
	-	`sha256:9b3b90c26e76ba02f2ebb80e14b7b6b307d4b79816552888efdc1a08e2374988`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 1.8 MB (1771309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ec0c5af86f3817c78ec6673232b7f5266b37bf8d84964f7e6d67b70a8168fb`  
		Last Modified: Thu, 26 Oct 2017 16:00:18 GMT  
		Size: 8.9 MB (8875459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3afcccb85cc8266d8bd1eaede96dd8aabf99654af320922d3e9a50d826235d5`  
		Last Modified: Thu, 26 Oct 2017 16:00:16 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4-alpine`

```console
$ docker pull telegraf@sha256:864f773a68f2d0bc710f692d73a496c3fe7a2a8ddb72ff82c9208b3216f4cfc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6361719dde123d8a3bc0a3530fd4f805740ce906ae7eaffd1a57677a1488796a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12617341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ae28051506977916d4c7635fe334d48f858c66d6400f6f96f8b2d351f7acc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:14:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 26 Oct 2017 15:59:13 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 15:59:26 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:26 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:27 GMT
CMD ["telegraf"]
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
	-	`sha256:9b3b90c26e76ba02f2ebb80e14b7b6b307d4b79816552888efdc1a08e2374988`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 1.8 MB (1771309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ec0c5af86f3817c78ec6673232b7f5266b37bf8d84964f7e6d67b70a8168fb`  
		Last Modified: Thu, 26 Oct 2017 16:00:18 GMT  
		Size: 8.9 MB (8875459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3afcccb85cc8266d8bd1eaede96dd8aabf99654af320922d3e9a50d826235d5`  
		Last Modified: Thu, 26 Oct 2017 16:00:16 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:864f773a68f2d0bc710f692d73a496c3fe7a2a8ddb72ff82c9208b3216f4cfc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6361719dde123d8a3bc0a3530fd4f805740ce906ae7eaffd1a57677a1488796a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12617341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ae28051506977916d4c7635fe334d48f858c66d6400f6f96f8b2d351f7acc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 25 Oct 2017 23:21:13 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Wed, 25 Oct 2017 23:21:13 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:14:11 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 26 Oct 2017 15:59:13 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 26 Oct 2017 15:59:26 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:26 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:27 GMT
CMD ["telegraf"]
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
	-	`sha256:9b3b90c26e76ba02f2ebb80e14b7b6b307d4b79816552888efdc1a08e2374988`  
		Last Modified: Thu, 26 Oct 2017 03:15:26 GMT  
		Size: 1.8 MB (1771309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ec0c5af86f3817c78ec6673232b7f5266b37bf8d84964f7e6d67b70a8168fb`  
		Last Modified: Thu, 26 Oct 2017 16:00:18 GMT  
		Size: 8.9 MB (8875459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3afcccb85cc8266d8bd1eaede96dd8aabf99654af320922d3e9a50d826235d5`  
		Last Modified: Thu, 26 Oct 2017 16:00:16 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:44956924b102270757d2efb7b52b9a6c8fe369867119bd150fcccd88ae9e6d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:970ab853b89bfbc9e56a508ec5171210120a5c426c10722eb1263b3845eea8d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84937052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1325ecd2dbf7ab6b79004f7862bcc299859aec3994809209908e899a5800e0e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 07:19:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:19:54 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 15:58:59 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 15:59:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 15:59:03 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 15:59:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 15:59:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 15:59:04 GMT
CMD ["telegraf"]
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
	-	`sha256:e8e540aef22889c5f6b659824d1a7fdc10a656aaddd047c462df1bbea5eb7d2b`  
		Last Modified: Tue, 10 Oct 2017 07:20:50 GMT  
		Size: 15.1 MB (15097149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7821ca8e19c636ac205f8352913a971f3b2bb996433851ef73f10daaa571a7e9`  
		Last Modified: Tue, 10 Oct 2017 07:20:46 GMT  
		Size: 2.9 KB (2893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980977b40885694420de7ee647ec086b03a1c0c2254d011956f4591189de8d5b`  
		Last Modified: Thu, 26 Oct 2017 15:59:46 GMT  
		Size: 9.0 MB (8967784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad47f0415915f79f17ee807eb8e6001093328181f3625ec4ed47a9d412767ad`  
		Last Modified: Thu, 26 Oct 2017 15:59:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:95e4152c2881397f54fcd6abb85f53133010ce4d94c435cd1289ba4c3aec9008
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78149141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4f9a305828e2047822dc25fe617e8cbeef90f77b87d7dc6db876e195c42774`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:52:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 03 Nov 2017 00:53:04 GMT
ENV TELEGRAF_VERSION=1.4.3
# Fri, 03 Nov 2017 00:53:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 03 Nov 2017 00:53:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 03 Nov 2017 00:53:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 03 Nov 2017 00:53:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 00:53:10 GMT
CMD ["telegraf"]
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
	-	`sha256:0580a32a35756663a66e0df01ba6758698d68c2644e6c54b18d0414461d5b39b`  
		Last Modified: Fri, 03 Nov 2017 00:53:28 GMT  
		Size: 14.0 MB (14022965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50009bfdbc13464fd8ed03ff8021917c17d7a7994666108fd7bdbce2d8e097`  
		Last Modified: Fri, 03 Nov 2017 00:53:23 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336269bbbe3f4e55d0edadcf2cdbced40ac480d34ca1b0407b0275263a06b6d`  
		Last Modified: Fri, 03 Nov 2017 00:53:53 GMT  
		Size: 8.5 MB (8545033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1d778a03d4017468f3a388bd533017b716baac1571e45ac14a2f93af58164`  
		Last Modified: Fri, 03 Nov 2017 00:53:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:01ee3603fc9e17095e8f9ba69ab7261eb728c3c7102c3e737925352e38ccafce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80463937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd237c8421714dbad002cc319c122139595fdc859ae257723fffe82287ab09f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 11:48:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 11:48:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 26 Oct 2017 18:45:53 GMT
ENV TELEGRAF_VERSION=1.4.3
# Thu, 26 Oct 2017 18:46:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 26 Oct 2017 18:46:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 26 Oct 2017 18:46:05 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 26 Oct 2017 18:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 18:46:06 GMT
CMD ["telegraf"]
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
	-	`sha256:5a8ed6339db47f1e6f0b40db789e4848d7e9e4ecfc7bd435d387e564d891f30d`  
		Last Modified: Tue, 10 Oct 2017 11:49:37 GMT  
		Size: 14.7 MB (14702199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6f02d1f93bab01a48a26f51668ce7462068b20f197d870e657a89bfefbf6f`  
		Last Modified: Tue, 10 Oct 2017 11:49:27 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb6e8a5cc8744c167d855829d0139e653ea98675b6e007b485e48ca866ddfa9`  
		Last Modified: Thu, 26 Oct 2017 18:46:31 GMT  
		Size: 8.4 MB (8395302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e458dca89c0254547379665b275a46b1ee5172735156661c3f4d4a40e86d8b3`  
		Last Modified: Thu, 26 Oct 2017 18:46:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
