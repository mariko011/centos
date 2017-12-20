## `telegraf:latest`

```console
$ docker pull telegraf@sha256:9593f052abea960e4c50b03309a2e06f77189042d579e51f61e0c31260e07089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:5563fbb1a0f1f1d26d78c1421686766544fdfa902cdb9760881311e332e3a49e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85638595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ecd2c42885e96b49a077e38511fc84e54b2543179848a09a78bd5f24d57fcf3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 11:08:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:14 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 19 Dec 2017 19:03:11 GMT
ENV TELEGRAF_VERSION=1.5.0
# Tue, 19 Dec 2017 19:03:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 19 Dec 2017 19:03:22 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 19 Dec 2017 19:03:22 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 19 Dec 2017 19:03:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 19:03:23 GMT
CMD ["telegraf"]
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
	-	`sha256:eab41d7ab2967ab19743e799044570c73404e251fe93196eefffe7f7762dd14b`  
		Last Modified: Tue, 12 Dec 2017 11:19:04 GMT  
		Size: 15.6 MB (15583617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69582f041b9bd1a5067ecf5ca707d32cf24e73b71fcdbe9d3ad297f8523a6e`  
		Last Modified: Tue, 12 Dec 2017 11:19:01 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1753bc2f0d906eb8932800da11ba78b7ee62ee15a64d2bef0e20aec7dbe9a9`  
		Last Modified: Tue, 19 Dec 2017 19:16:45 GMT  
		Size: 9.5 MB (9487503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f5ec26535e335fa5717bd19a9c80e4c3abbbeaa8fbe389daec48dde4f12a44`  
		Last Modified: Tue, 19 Dec 2017 19:16:39 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:7da91efbb3e228a31d3859daa0609c91f8c76970dd966a20d9e65e5193cff40a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78987918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73fa1a84927a2189546063201a9c405224ab58da6e5ac7a41e9674ed6bab0e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 17:26:14 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:26:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 14:55:38 GMT
ENV TELEGRAF_VERSION=1.5.0
# Wed, 20 Dec 2017 14:55:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Dec 2017 14:55:42 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Dec 2017 14:55:42 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Dec 2017 14:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 14:55:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9731eb2ae89b3ce99fd46e07bc4210c898d54a541f5daf64886e64544226a0`  
		Last Modified: Tue, 12 Dec 2017 17:27:06 GMT  
		Size: 14.5 MB (14470463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9d55d40974245624a2e11ab576add999bd6dcf507dd47f2059445f391f6b9c`  
		Last Modified: Tue, 12 Dec 2017 17:27:01 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9734cdb4151a51ef3c87cbd1ebd49eac0d3b7af12f7685629f8420d53e10a2`  
		Last Modified: Wed, 20 Dec 2017 14:55:56 GMT  
		Size: 8.9 MB (8927634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70dab7542c215931d400d592987849f93d2746539ef31d77499dd84b996b3fbf`  
		Last Modified: Wed, 20 Dec 2017 14:55:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b494f46bd4f2f8a215b08b27319232ae723ef91290d23f69fcac689d98d03753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80940024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f44fba06eabed25ad04ff168fc7b8dcb9f50266c73a458dee18909614afb16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 16 Dec 2017 00:06:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 00:06:23 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 15:05:43 GMT
ENV TELEGRAF_VERSION=1.5.0
# Wed, 20 Dec 2017 15:05:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 20 Dec 2017 15:05:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 20 Dec 2017 15:05:51 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 20 Dec 2017 15:05:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 15:05:52 GMT
CMD ["telegraf"]
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
	-	`sha256:0a61fef6af532c2ad10e6fc847d84a487bd48691c1d9c2f64eaa59437defcc8c`  
		Last Modified: Sat, 16 Dec 2017 00:07:05 GMT  
		Size: 15.2 MB (15162272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab98bc7e7d84e35c692269791c926607d73e0fb14ae967a76eb68e8d2b809b1`  
		Last Modified: Sat, 16 Dec 2017 00:06:59 GMT  
		Size: 2.9 KB (2894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8b51e03e075f84a56da1958d8b135be886055e5cc3deecc3a04d11d1b8f6c8`  
		Last Modified: Wed, 20 Dec 2017 15:06:11 GMT  
		Size: 8.7 MB (8707786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19923a37d49b17cb5cd9f94ff7fa85892985a2f94ec18ffca6845c3d3270156`  
		Last Modified: Wed, 20 Dec 2017 15:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
