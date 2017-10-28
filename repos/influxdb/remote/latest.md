## `influxdb:latest`

```console
$ docker pull influxdb@sha256:4916fbb4da71e7a7682f98c1536c32b1a8f8dad26e6aa4f01e9d1096f8007d87
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
$ docker pull influxdb@sha256:8e148204681a8c62b09f76c18a9b2f7b578e66760b3ff1b8be13a6f26ba9288a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74042373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9d538b4ce5028df7f43ff638aea21d635c6f678c151272ea92e1077a3164aa`
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
# Sat, 28 Oct 2017 09:12:33 GMT
ENV INFLUXDB_VERSION=1.3.7
# Sat, 28 Oct 2017 09:12:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Oct 2017 09:12:37 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Oct 2017 09:12:37 GMT
EXPOSE 8086/tcp
# Sat, 28 Oct 2017 09:12:37 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Oct 2017 09:12:37 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Oct 2017 09:12:38 GMT
COPY file:3f0f6cd629869723e77a0767bc8c0ac9bca34791e9b1d3ca207ce3af73306205 in /init-influxdb.sh 
# Sat, 28 Oct 2017 09:12:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Oct 2017 09:12:38 GMT
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
	-	`sha256:40ef5a5269876ffc535ce57822c12fc7cbaefa42ef73c3d69c027f74161308ab`  
		Last Modified: Sat, 28 Oct 2017 09:12:55 GMT  
		Size: 18.2 MB (18162255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b16c4ca5fc43da2437765e0187500aa3d71e6ea3ddc0a832dbe539da8bf040`  
		Last Modified: Sat, 28 Oct 2017 09:12:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f44738ed197f9abb669ab604333f5a40532813e32b680edb482c373714d9f65`  
		Last Modified: Sat, 28 Oct 2017 09:12:50 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a16e5bb6b4bea0c1897797147d84c187e7dd9923d143708a943157ffab9b0`  
		Last Modified: Sat, 28 Oct 2017 09:12:50 GMT  
		Size: 1.2 KB (1154 bytes)  
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
