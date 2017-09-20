<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.3`](#telegraf13)
-	[`telegraf:1.3.5`](#telegraf135)
-	[`telegraf:1.3.5-alpine`](#telegraf135-alpine)
-	[`telegraf:1.3-alpine`](#telegraf13-alpine)
-	[`telegraf:1.4`](#telegraf14)
-	[`telegraf:1.4.0`](#telegraf140)
-	[`telegraf:1.4.0-alpine`](#telegraf140-alpine)
-	[`telegraf:1.4-alpine`](#telegraf14-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.3`

```console
$ docker pull telegraf@sha256:3c3555c105d42d9a143ffb82be56a26a9d79d561825229d7a4d3c65301429f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.3` - linux; amd64

```console
$ docker pull telegraf@sha256:f7fafac9c5013ce05056131d5c654d7368f51907a28d2ea611ddb1c83df8e83a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87350095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7eacd8d8d2b656dfa53632f76e3246b67f107acd428d0ea67d2b72c667d4989`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:54:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:54:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:54:44 GMT
ENV TELEGRAF_VERSION=1.3.5
# Mon, 18 Sep 2017 21:54:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:54:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:54:47 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:54:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:54:47 GMT
CMD ["telegraf"]
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
	-	`sha256:45d52b9739e2af44489dcb01db09b8d0e1032b84f1b3cf5230f63cf2456acbdf`  
		Last Modified: Mon, 18 Sep 2017 21:55:14 GMT  
		Size: 15.1 MB (15094794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa7393da0dd81d7b470ac78608bbecdc8e728c508531ac9121b7bd2da7567a`  
		Last Modified: Mon, 18 Sep 2017 21:55:10 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20479ebe7d50b372dd81dab01ad6a1617a55d8e97a66c400b28f634bd97fdbda`  
		Last Modified: Mon, 18 Sep 2017 21:55:13 GMT  
		Size: 11.4 MB (11385348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422b1a9bdf9aadd3ef335955b139946fd6a518a21f3c9fca2b9a289f47db0cbc`  
		Last Modified: Mon, 18 Sep 2017 21:55:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:23307eebfdfaddd6dc4893418d752e84f142d988586f0430f2e2bec98bbf939c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb177fd900e0028eda36c17bfbb71bef02f86bd9061094f5b2d61e8293e54e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 09 Sep 2017 01:44:46 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Sat, 09 Sep 2017 01:44:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:27:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Sep 2017 16:59:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 17:00:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Sep 2017 17:00:06 GMT
ENV TELEGRAF_VERSION=1.3.5
# Wed, 20 Sep 2017 17:00:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Sep 2017 17:00:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Sep 2017 17:00:21 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Sep 2017 17:00:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Sep 2017 17:00:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e7ea15fa8fb2205bfb6f991da9cc2670db66dc41509ffc196004edeffff585da`  
		Last Modified: Sat, 09 Sep 2017 01:57:36 GMT  
		Size: 41.8 MB (41847032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5581241bb6310c31d2aedf57f8cf1f453d59480cd7013e74238cbe7c90add8f0`  
		Last Modified: Tue, 19 Sep 2017 02:46:37 GMT  
		Size: 9.8 MB (9820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae590312d4c4cdf32766e95e4d293525c1e2bedbfe63e4a5e4bae2d44fca62`  
		Last Modified: Tue, 19 Sep 2017 02:46:34 GMT  
		Size: 4.2 MB (4210708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde12ec0f93b1f8591fb558532844b0fe65d45ff11a5712e33a93d926f2009e`  
		Last Modified: Wed, 20 Sep 2017 17:01:24 GMT  
		Size: 14.0 MB (14019757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414e93845af9bab96a80ca1073c8c49c4f3cc78690f214b0c0d8f0ca7989a157`  
		Last Modified: Wed, 20 Sep 2017 17:01:14 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c836642d8fa4c85889b94224c91e86942520fcbbcd5877c8b309b09255268a`  
		Last Modified: Wed, 20 Sep 2017 17:01:25 GMT  
		Size: 10.9 MB (10909144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1ab92886df99f25736ee4f6662646ee646c5212e5e4eec4656b608fe9cc5e7`  
		Last Modified: Wed, 20 Sep 2017 17:01:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:46a0f04b1480b1dd7c7beef2097ceec1d5b46979956e3522a2804251c02dd4c2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82967489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b0b69aace44c63c580699c9acf5b2e2f72b95c77cd2caf4a984e73980dbe19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:55:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:55:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:55:12 GMT
ENV TELEGRAF_VERSION=1.3.5
# Mon, 18 Sep 2017 21:55:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:55:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:55:20 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:55:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:55:21 GMT
CMD ["telegraf"]
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
	-	`sha256:d88a7e131c833ed2c748bdd5c5714aa359bad849a09b50181ed7d336f55e2986`  
		Last Modified: Mon, 18 Sep 2017 21:56:02 GMT  
		Size: 14.7 MB (14697995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea7b9a51b567fc540f9e479c1ceff6a56e4ef9a8ebc79a6e4541fd6bc76385`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b9ca986745d28ab01383e14396ce207dfd5ad14a02bde1d9645479621db4ad`  
		Last Modified: Mon, 18 Sep 2017 21:56:00 GMT  
		Size: 10.9 MB (10908863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684915fa727e432400dc5befb2a43b9415d195458829c5b4c7dc13ec67822a0`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.5`

```console
$ docker pull telegraf@sha256:3c3555c105d42d9a143ffb82be56a26a9d79d561825229d7a4d3c65301429f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.3.5` - linux; amd64

```console
$ docker pull telegraf@sha256:f7fafac9c5013ce05056131d5c654d7368f51907a28d2ea611ddb1c83df8e83a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87350095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7eacd8d8d2b656dfa53632f76e3246b67f107acd428d0ea67d2b72c667d4989`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:54:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:54:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:54:44 GMT
ENV TELEGRAF_VERSION=1.3.5
# Mon, 18 Sep 2017 21:54:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:54:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:54:47 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:54:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:54:47 GMT
CMD ["telegraf"]
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
	-	`sha256:45d52b9739e2af44489dcb01db09b8d0e1032b84f1b3cf5230f63cf2456acbdf`  
		Last Modified: Mon, 18 Sep 2017 21:55:14 GMT  
		Size: 15.1 MB (15094794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa7393da0dd81d7b470ac78608bbecdc8e728c508531ac9121b7bd2da7567a`  
		Last Modified: Mon, 18 Sep 2017 21:55:10 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20479ebe7d50b372dd81dab01ad6a1617a55d8e97a66c400b28f634bd97fdbda`  
		Last Modified: Mon, 18 Sep 2017 21:55:13 GMT  
		Size: 11.4 MB (11385348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422b1a9bdf9aadd3ef335955b139946fd6a518a21f3c9fca2b9a289f47db0cbc`  
		Last Modified: Mon, 18 Sep 2017 21:55:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:23307eebfdfaddd6dc4893418d752e84f142d988586f0430f2e2bec98bbf939c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb177fd900e0028eda36c17bfbb71bef02f86bd9061094f5b2d61e8293e54e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 09 Sep 2017 01:44:46 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Sat, 09 Sep 2017 01:44:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:27:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Sep 2017 16:59:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 17:00:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Sep 2017 17:00:06 GMT
ENV TELEGRAF_VERSION=1.3.5
# Wed, 20 Sep 2017 17:00:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Sep 2017 17:00:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Sep 2017 17:00:21 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Sep 2017 17:00:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Sep 2017 17:00:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e7ea15fa8fb2205bfb6f991da9cc2670db66dc41509ffc196004edeffff585da`  
		Last Modified: Sat, 09 Sep 2017 01:57:36 GMT  
		Size: 41.8 MB (41847032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5581241bb6310c31d2aedf57f8cf1f453d59480cd7013e74238cbe7c90add8f0`  
		Last Modified: Tue, 19 Sep 2017 02:46:37 GMT  
		Size: 9.8 MB (9820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae590312d4c4cdf32766e95e4d293525c1e2bedbfe63e4a5e4bae2d44fca62`  
		Last Modified: Tue, 19 Sep 2017 02:46:34 GMT  
		Size: 4.2 MB (4210708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde12ec0f93b1f8591fb558532844b0fe65d45ff11a5712e33a93d926f2009e`  
		Last Modified: Wed, 20 Sep 2017 17:01:24 GMT  
		Size: 14.0 MB (14019757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414e93845af9bab96a80ca1073c8c49c4f3cc78690f214b0c0d8f0ca7989a157`  
		Last Modified: Wed, 20 Sep 2017 17:01:14 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c836642d8fa4c85889b94224c91e86942520fcbbcd5877c8b309b09255268a`  
		Last Modified: Wed, 20 Sep 2017 17:01:25 GMT  
		Size: 10.9 MB (10909144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1ab92886df99f25736ee4f6662646ee646c5212e5e4eec4656b608fe9cc5e7`  
		Last Modified: Wed, 20 Sep 2017 17:01:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.3.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:46a0f04b1480b1dd7c7beef2097ceec1d5b46979956e3522a2804251c02dd4c2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82967489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b0b69aace44c63c580699c9acf5b2e2f72b95c77cd2caf4a984e73980dbe19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:55:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:55:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:55:12 GMT
ENV TELEGRAF_VERSION=1.3.5
# Mon, 18 Sep 2017 21:55:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:55:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:55:20 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:55:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:55:21 GMT
CMD ["telegraf"]
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
	-	`sha256:d88a7e131c833ed2c748bdd5c5714aa359bad849a09b50181ed7d336f55e2986`  
		Last Modified: Mon, 18 Sep 2017 21:56:02 GMT  
		Size: 14.7 MB (14697995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea7b9a51b567fc540f9e479c1ceff6a56e4ef9a8ebc79a6e4541fd6bc76385`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b9ca986745d28ab01383e14396ce207dfd5ad14a02bde1d9645479621db4ad`  
		Last Modified: Mon, 18 Sep 2017 21:56:00 GMT  
		Size: 10.9 MB (10908863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684915fa727e432400dc5befb2a43b9415d195458829c5b4c7dc13ec67822a0`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3.5-alpine`

```console
$ docker pull telegraf@sha256:9a43aea8764a008e604eeaa4bd1007401ead2a98f018e53e51dcb26a81e23d43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.3.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9f7f408ba8b519f3590a82636f8f1d17b471dacf08771dbe1736f58caa1c65fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12254128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b803773d4a7a883b5196535d2eb915911e32ba36504b20dac0c3632cbdc414`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 14 Sep 2017 00:38:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 14 Sep 2017 00:38:16 GMT
ENV TELEGRAF_VERSION=1.3.5
# Thu, 14 Sep 2017 00:38:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Sep 2017 00:38:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Sep 2017 00:38:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Sep 2017 00:38:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 00:38:31 GMT
CMD ["telegraf"]
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
	-	`sha256:533d12625f92f18763be93f4384313958baa2423c942b99b5f0194914c66f724`  
		Last Modified: Thu, 14 Sep 2017 00:39:13 GMT  
		Size: 1.8 MB (1771344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d71642e072c2289495e624c3297027b566953c2d2298d881d19016534786892`  
		Last Modified: Thu, 14 Sep 2017 00:39:16 GMT  
		Size: 8.5 MB (8512175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4febd7cf526daf592a3bf35deb540cd3bb03576d517fb3bdf73251d9f31a1`  
		Last Modified: Thu, 14 Sep 2017 00:39:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.3-alpine`

```console
$ docker pull telegraf@sha256:9a43aea8764a008e604eeaa4bd1007401ead2a98f018e53e51dcb26a81e23d43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9f7f408ba8b519f3590a82636f8f1d17b471dacf08771dbe1736f58caa1c65fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12254128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b803773d4a7a883b5196535d2eb915911e32ba36504b20dac0c3632cbdc414`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 14 Sep 2017 00:38:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 14 Sep 2017 00:38:16 GMT
ENV TELEGRAF_VERSION=1.3.5
# Thu, 14 Sep 2017 00:38:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Sep 2017 00:38:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Sep 2017 00:38:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Sep 2017 00:38:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 00:38:31 GMT
CMD ["telegraf"]
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
	-	`sha256:533d12625f92f18763be93f4384313958baa2423c942b99b5f0194914c66f724`  
		Last Modified: Thu, 14 Sep 2017 00:39:13 GMT  
		Size: 1.8 MB (1771344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d71642e072c2289495e624c3297027b566953c2d2298d881d19016534786892`  
		Last Modified: Thu, 14 Sep 2017 00:39:16 GMT  
		Size: 8.5 MB (8512175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4febd7cf526daf592a3bf35deb540cd3bb03576d517fb3bdf73251d9f31a1`  
		Last Modified: Thu, 14 Sep 2017 00:39:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4`

```console
$ docker pull telegraf@sha256:9a83a722c8aa4f1ee5048c504cf2e956481c249a206fc718e3651e4b8be5be30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4` - linux; amd64

```console
$ docker pull telegraf@sha256:6e84197d6cc10900de9a7a2e7d3c5f4c66b5c239a4774b844cc73f87f01f8679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84928581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020be9010ff753f9676f86431ead21dd53742d665a2a361dfcdb7cd7ed39356c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:54:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:54:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:54:55 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:54:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:54:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:54:57 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:54:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:54:58 GMT
CMD ["telegraf"]
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
	-	`sha256:45d52b9739e2af44489dcb01db09b8d0e1032b84f1b3cf5230f63cf2456acbdf`  
		Last Modified: Mon, 18 Sep 2017 21:55:14 GMT  
		Size: 15.1 MB (15094794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa7393da0dd81d7b470ac78608bbecdc8e728c508531ac9121b7bd2da7567a`  
		Last Modified: Mon, 18 Sep 2017 21:55:10 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f19f87d6155c5b966b5085264d63d98735c94ee1573971b6337d293d97e05a`  
		Last Modified: Mon, 18 Sep 2017 21:55:33 GMT  
		Size: 9.0 MB (8963834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd980fa5314501834819dd0109f788ad40b5cfa62513825f427e9efdaef0f0b`  
		Last Modified: Mon, 18 Sep 2017 21:55:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:5697ca0e6c63154d5c8c251f6fe15ccaaf5a5cc2f277b7c8df3e966404690e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78448221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952ec7e2e1944365796566d0cf059a09819df3e6a1810b84eb63c1c7e6601245`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 09 Sep 2017 01:44:46 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Sat, 09 Sep 2017 01:44:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:27:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Sep 2017 16:59:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 17:00:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Sep 2017 17:00:41 GMT
ENV TELEGRAF_VERSION=1.4.0
# Wed, 20 Sep 2017 17:00:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Sep 2017 17:00:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Sep 2017 17:00:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Sep 2017 17:00:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Sep 2017 17:00:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e7ea15fa8fb2205bfb6f991da9cc2670db66dc41509ffc196004edeffff585da`  
		Last Modified: Sat, 09 Sep 2017 01:57:36 GMT  
		Size: 41.8 MB (41847032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5581241bb6310c31d2aedf57f8cf1f453d59480cd7013e74238cbe7c90add8f0`  
		Last Modified: Tue, 19 Sep 2017 02:46:37 GMT  
		Size: 9.8 MB (9820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae590312d4c4cdf32766e95e4d293525c1e2bedbfe63e4a5e4bae2d44fca62`  
		Last Modified: Tue, 19 Sep 2017 02:46:34 GMT  
		Size: 4.2 MB (4210708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde12ec0f93b1f8591fb558532844b0fe65d45ff11a5712e33a93d926f2009e`  
		Last Modified: Wed, 20 Sep 2017 17:01:24 GMT  
		Size: 14.0 MB (14019757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414e93845af9bab96a80ca1073c8c49c4f3cc78690f214b0c0d8f0ca7989a157`  
		Last Modified: Wed, 20 Sep 2017 17:01:14 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f36503aa0ca0c5dda8acd1b5b6b27bcee145e36bc73fb44f2c74f582bbbdb6`  
		Last Modified: Wed, 20 Sep 2017 17:01:53 GMT  
		Size: 8.5 MB (8543177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c90d5f813647afb62fbbb1be270b4a3e3a174322bdf1737774cc9f145328`  
		Last Modified: Wed, 20 Sep 2017 17:01:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:54124fc79fe6d765e6dd8e8b776a2c3ead83d7155d79c6c407b2e7ec97aa19b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80601521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32311932f8660c87cccf2f26959f34b06056410e5dd3e1cda0daf02e9fc6b47b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:55:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:55:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:55:34 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:55:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:55:40 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:55:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:55:42 GMT
CMD ["telegraf"]
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
	-	`sha256:d88a7e131c833ed2c748bdd5c5714aa359bad849a09b50181ed7d336f55e2986`  
		Last Modified: Mon, 18 Sep 2017 21:56:02 GMT  
		Size: 14.7 MB (14697995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea7b9a51b567fc540f9e479c1ceff6a56e4ef9a8ebc79a6e4541fd6bc76385`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09984f6d5cf12f960a3ff54d5a79a3390d43375a78bf53f2559e382910a626bb`  
		Last Modified: Mon, 18 Sep 2017 21:56:28 GMT  
		Size: 8.5 MB (8542894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb42ec3f151f27dffbcffc5b68465dcc060c12ad6cf5eb9d3e08d4577ec8271d`  
		Last Modified: Mon, 18 Sep 2017 21:56:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.0`

```console
$ docker pull telegraf@sha256:9a83a722c8aa4f1ee5048c504cf2e956481c249a206fc718e3651e4b8be5be30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4.0` - linux; amd64

```console
$ docker pull telegraf@sha256:6e84197d6cc10900de9a7a2e7d3c5f4c66b5c239a4774b844cc73f87f01f8679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84928581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020be9010ff753f9676f86431ead21dd53742d665a2a361dfcdb7cd7ed39356c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:54:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:54:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:54:55 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:54:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:54:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:54:57 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:54:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:54:58 GMT
CMD ["telegraf"]
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
	-	`sha256:45d52b9739e2af44489dcb01db09b8d0e1032b84f1b3cf5230f63cf2456acbdf`  
		Last Modified: Mon, 18 Sep 2017 21:55:14 GMT  
		Size: 15.1 MB (15094794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa7393da0dd81d7b470ac78608bbecdc8e728c508531ac9121b7bd2da7567a`  
		Last Modified: Mon, 18 Sep 2017 21:55:10 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f19f87d6155c5b966b5085264d63d98735c94ee1573971b6337d293d97e05a`  
		Last Modified: Mon, 18 Sep 2017 21:55:33 GMT  
		Size: 9.0 MB (8963834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd980fa5314501834819dd0109f788ad40b5cfa62513825f427e9efdaef0f0b`  
		Last Modified: Mon, 18 Sep 2017 21:55:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.0` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:5697ca0e6c63154d5c8c251f6fe15ccaaf5a5cc2f277b7c8df3e966404690e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78448221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952ec7e2e1944365796566d0cf059a09819df3e6a1810b84eb63c1c7e6601245`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 09 Sep 2017 01:44:46 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Sat, 09 Sep 2017 01:44:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:27:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Sep 2017 16:59:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 17:00:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Sep 2017 17:00:41 GMT
ENV TELEGRAF_VERSION=1.4.0
# Wed, 20 Sep 2017 17:00:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Sep 2017 17:00:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Sep 2017 17:00:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Sep 2017 17:00:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Sep 2017 17:00:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e7ea15fa8fb2205bfb6f991da9cc2670db66dc41509ffc196004edeffff585da`  
		Last Modified: Sat, 09 Sep 2017 01:57:36 GMT  
		Size: 41.8 MB (41847032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5581241bb6310c31d2aedf57f8cf1f453d59480cd7013e74238cbe7c90add8f0`  
		Last Modified: Tue, 19 Sep 2017 02:46:37 GMT  
		Size: 9.8 MB (9820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae590312d4c4cdf32766e95e4d293525c1e2bedbfe63e4a5e4bae2d44fca62`  
		Last Modified: Tue, 19 Sep 2017 02:46:34 GMT  
		Size: 4.2 MB (4210708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde12ec0f93b1f8591fb558532844b0fe65d45ff11a5712e33a93d926f2009e`  
		Last Modified: Wed, 20 Sep 2017 17:01:24 GMT  
		Size: 14.0 MB (14019757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414e93845af9bab96a80ca1073c8c49c4f3cc78690f214b0c0d8f0ca7989a157`  
		Last Modified: Wed, 20 Sep 2017 17:01:14 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f36503aa0ca0c5dda8acd1b5b6b27bcee145e36bc73fb44f2c74f582bbbdb6`  
		Last Modified: Wed, 20 Sep 2017 17:01:53 GMT  
		Size: 8.5 MB (8543177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c90d5f813647afb62fbbb1be270b4a3e3a174322bdf1737774cc9f145328`  
		Last Modified: Wed, 20 Sep 2017 17:01:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.0` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:54124fc79fe6d765e6dd8e8b776a2c3ead83d7155d79c6c407b2e7ec97aa19b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80601521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32311932f8660c87cccf2f26959f34b06056410e5dd3e1cda0daf02e9fc6b47b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:55:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:55:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:55:34 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:55:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:55:40 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:55:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:55:42 GMT
CMD ["telegraf"]
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
	-	`sha256:d88a7e131c833ed2c748bdd5c5714aa359bad849a09b50181ed7d336f55e2986`  
		Last Modified: Mon, 18 Sep 2017 21:56:02 GMT  
		Size: 14.7 MB (14697995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea7b9a51b567fc540f9e479c1ceff6a56e4ef9a8ebc79a6e4541fd6bc76385`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09984f6d5cf12f960a3ff54d5a79a3390d43375a78bf53f2559e382910a626bb`  
		Last Modified: Mon, 18 Sep 2017 21:56:28 GMT  
		Size: 8.5 MB (8542894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb42ec3f151f27dffbcffc5b68465dcc060c12ad6cf5eb9d3e08d4577ec8271d`  
		Last Modified: Mon, 18 Sep 2017 21:56:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.0-alpine`

```console
$ docker pull telegraf@sha256:c71c4179ec84f5aa21ac8ca76b272d67e84c9ca87f3dc2c6e3f5aacb9595534d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4.0-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3e7442997bc978076b6070a98c79b07e24867a238e8d7f362c4b4a249fd1c132
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12612584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dd1ecb06022d29fb8105be193810eac4ceddbae2727ec42e5332f1c2bc68dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 14 Sep 2017 00:38:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 14 Sep 2017 00:38:38 GMT
ENV TELEGRAF_VERSION=1.4.0
# Thu, 14 Sep 2017 00:38:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Sep 2017 00:38:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Sep 2017 00:38:48 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Sep 2017 00:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 00:38:48 GMT
CMD ["telegraf"]
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
	-	`sha256:533d12625f92f18763be93f4384313958baa2423c942b99b5f0194914c66f724`  
		Last Modified: Thu, 14 Sep 2017 00:39:13 GMT  
		Size: 1.8 MB (1771344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433f9e2525488f99cdae135fa28b934ed568893f17bf31aa2cf12f16d90e0be0`  
		Last Modified: Thu, 14 Sep 2017 00:39:48 GMT  
		Size: 8.9 MB (8870633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2836e75324d050888fbd9d716103c30db455708f4a0628aba03b5e832a8e95d`  
		Last Modified: Thu, 14 Sep 2017 00:39:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4-alpine`

```console
$ docker pull telegraf@sha256:c71c4179ec84f5aa21ac8ca76b272d67e84c9ca87f3dc2c6e3f5aacb9595534d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3e7442997bc978076b6070a98c79b07e24867a238e8d7f362c4b4a249fd1c132
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12612584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dd1ecb06022d29fb8105be193810eac4ceddbae2727ec42e5332f1c2bc68dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 14 Sep 2017 00:38:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 14 Sep 2017 00:38:38 GMT
ENV TELEGRAF_VERSION=1.4.0
# Thu, 14 Sep 2017 00:38:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Sep 2017 00:38:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Sep 2017 00:38:48 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Sep 2017 00:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 00:38:48 GMT
CMD ["telegraf"]
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
	-	`sha256:533d12625f92f18763be93f4384313958baa2423c942b99b5f0194914c66f724`  
		Last Modified: Thu, 14 Sep 2017 00:39:13 GMT  
		Size: 1.8 MB (1771344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433f9e2525488f99cdae135fa28b934ed568893f17bf31aa2cf12f16d90e0be0`  
		Last Modified: Thu, 14 Sep 2017 00:39:48 GMT  
		Size: 8.9 MB (8870633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2836e75324d050888fbd9d716103c30db455708f4a0628aba03b5e832a8e95d`  
		Last Modified: Thu, 14 Sep 2017 00:39:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:c71c4179ec84f5aa21ac8ca76b272d67e84c9ca87f3dc2c6e3f5aacb9595534d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3e7442997bc978076b6070a98c79b07e24867a238e8d7f362c4b4a249fd1c132
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12612584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dd1ecb06022d29fb8105be193810eac4ceddbae2727ec42e5332f1c2bc68dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:20 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Wed, 13 Sep 2017 14:32:20 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 15:12:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 14 Sep 2017 00:38:16 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools &&     update-ca-certificates
# Thu, 14 Sep 2017 00:38:38 GMT
ENV TELEGRAF_VERSION=1.4.0
# Thu, 14 Sep 2017 00:38:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Sep 2017 00:38:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Sep 2017 00:38:48 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Sep 2017 00:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Sep 2017 00:38:48 GMT
CMD ["telegraf"]
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
	-	`sha256:533d12625f92f18763be93f4384313958baa2423c942b99b5f0194914c66f724`  
		Last Modified: Thu, 14 Sep 2017 00:39:13 GMT  
		Size: 1.8 MB (1771344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433f9e2525488f99cdae135fa28b934ed568893f17bf31aa2cf12f16d90e0be0`  
		Last Modified: Thu, 14 Sep 2017 00:39:48 GMT  
		Size: 8.9 MB (8870633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2836e75324d050888fbd9d716103c30db455708f4a0628aba03b5e832a8e95d`  
		Last Modified: Thu, 14 Sep 2017 00:39:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:9a83a722c8aa4f1ee5048c504cf2e956481c249a206fc718e3651e4b8be5be30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:6e84197d6cc10900de9a7a2e7d3c5f4c66b5c239a4774b844cc73f87f01f8679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84928581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020be9010ff753f9676f86431ead21dd53742d665a2a361dfcdb7cd7ed39356c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:54:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:54:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:54:55 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:54:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:54:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:54:57 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:54:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:54:58 GMT
CMD ["telegraf"]
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
	-	`sha256:45d52b9739e2af44489dcb01db09b8d0e1032b84f1b3cf5230f63cf2456acbdf`  
		Last Modified: Mon, 18 Sep 2017 21:55:14 GMT  
		Size: 15.1 MB (15094794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffa7393da0dd81d7b470ac78608bbecdc8e728c508531ac9121b7bd2da7567a`  
		Last Modified: Mon, 18 Sep 2017 21:55:10 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f19f87d6155c5b966b5085264d63d98735c94ee1573971b6337d293d97e05a`  
		Last Modified: Mon, 18 Sep 2017 21:55:33 GMT  
		Size: 9.0 MB (8963834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd980fa5314501834819dd0109f788ad40b5cfa62513825f427e9efdaef0f0b`  
		Last Modified: Mon, 18 Sep 2017 21:55:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:5697ca0e6c63154d5c8c251f6fe15ccaaf5a5cc2f277b7c8df3e966404690e44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78448221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952ec7e2e1944365796566d0cf059a09819df3e6a1810b84eb63c1c7e6601245`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 09 Sep 2017 01:44:46 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Sat, 09 Sep 2017 01:44:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:27:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Sep 2017 16:59:58 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 17:00:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Sep 2017 17:00:41 GMT
ENV TELEGRAF_VERSION=1.4.0
# Wed, 20 Sep 2017 17:00:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Sep 2017 17:00:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Sep 2017 17:00:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Sep 2017 17:00:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Sep 2017 17:00:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e7ea15fa8fb2205bfb6f991da9cc2670db66dc41509ffc196004edeffff585da`  
		Last Modified: Sat, 09 Sep 2017 01:57:36 GMT  
		Size: 41.8 MB (41847032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5581241bb6310c31d2aedf57f8cf1f453d59480cd7013e74238cbe7c90add8f0`  
		Last Modified: Tue, 19 Sep 2017 02:46:37 GMT  
		Size: 9.8 MB (9820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae590312d4c4cdf32766e95e4d293525c1e2bedbfe63e4a5e4bae2d44fca62`  
		Last Modified: Tue, 19 Sep 2017 02:46:34 GMT  
		Size: 4.2 MB (4210708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde12ec0f93b1f8591fb558532844b0fe65d45ff11a5712e33a93d926f2009e`  
		Last Modified: Wed, 20 Sep 2017 17:01:24 GMT  
		Size: 14.0 MB (14019757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414e93845af9bab96a80ca1073c8c49c4f3cc78690f214b0c0d8f0ca7989a157`  
		Last Modified: Wed, 20 Sep 2017 17:01:14 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f36503aa0ca0c5dda8acd1b5b6b27bcee145e36bc73fb44f2c74f582bbbdb6`  
		Last Modified: Wed, 20 Sep 2017 17:01:53 GMT  
		Size: 8.5 MB (8543177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c90d5f813647afb62fbbb1be270b4a3e3a174322bdf1737774cc9f145328`  
		Last Modified: Wed, 20 Sep 2017 17:01:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:54124fc79fe6d765e6dd8e8b776a2c3ead83d7155d79c6c407b2e7ec97aa19b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80601521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32311932f8660c87cccf2f26959f34b06056410e5dd3e1cda0daf02e9fc6b47b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 21:55:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp &&     rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:55:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 18 Sep 2017 21:55:34 GMT
ENV TELEGRAF_VERSION=1.4.0
# Mon, 18 Sep 2017 21:55:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 18 Sep 2017 21:55:40 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 18 Sep 2017 21:55:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 18 Sep 2017 21:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 21:55:42 GMT
CMD ["telegraf"]
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
	-	`sha256:d88a7e131c833ed2c748bdd5c5714aa359bad849a09b50181ed7d336f55e2986`  
		Last Modified: Mon, 18 Sep 2017 21:56:02 GMT  
		Size: 14.7 MB (14697995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea7b9a51b567fc540f9e479c1ceff6a56e4ef9a8ebc79a6e4541fd6bc76385`  
		Last Modified: Mon, 18 Sep 2017 21:55:56 GMT  
		Size: 6.6 KB (6554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09984f6d5cf12f960a3ff54d5a79a3390d43375a78bf53f2559e382910a626bb`  
		Last Modified: Mon, 18 Sep 2017 21:56:28 GMT  
		Size: 8.5 MB (8542894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb42ec3f151f27dffbcffc5b68465dcc060c12ad6cf5eb9d3e08d4577ec8271d`  
		Last Modified: Mon, 18 Sep 2017 21:56:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
