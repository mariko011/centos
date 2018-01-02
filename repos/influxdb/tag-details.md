<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.8`](#influxdb138)
-	[`influxdb:1.3.8-alpine`](#influxdb138-alpine)
-	[`influxdb:1.3.8-data`](#influxdb138-data)
-	[`influxdb:1.3.8-meta`](#influxdb138-meta)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:1.3-data`](#influxdb13-data)
-	[`influxdb:1.3-meta`](#influxdb13-meta)
-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.2`](#influxdb142)
-	[`influxdb:1.4.2-alpine`](#influxdb142-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:8c3157245ee6863203cf2f410d026b8e3683b502f9bd967728337ece4c730cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:f6d904821a28793e7c4dd0a39bcc19886e0629f86345bec02be3a52270760ec1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79704960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568dbecbd1d400ecfc6acf78ee71a12bf20cd15d21e5b513cb3d43f7791573dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 12:46:36 GMT
ENV INFLUXDB_VERSION=1.3.8
# Tue, 12 Dec 2017 12:46:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 12:46:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 12:46:50 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 12:46:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 12:46:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 12:46:51 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 12:46:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 12:46:51 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e472107aab2352358c4caf1dfcd11a100a6aa43c872c6be8d381360f5ded7b8`  
		Last Modified: Tue, 12 Dec 2017 12:47:30 GMT  
		Size: 19.1 MB (19136062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1acb5b9a40e9751291ee637dc80bbd1bc48dedd05145797919dfa1203cceb2`  
		Last Modified: Tue, 12 Dec 2017 12:47:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe304969555bda931898345163e6f86f10d654b389a29fcd6a62f4e2d82e16`  
		Last Modified: Tue, 12 Dec 2017 12:47:26 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fbf53976826c5482ff9ec63ac5fce85a0382e671385ff7f1bd1a3353153a0`  
		Last Modified: Tue, 12 Dec 2017 12:47:26 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:7b2a44915250618e442bbd08d0f9ff90b3411b2dc41fa990db701a4d7a5753b2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73772235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda1041d40b1119727370e3184fa5b59295f56a3fd79c4426543ef1abe57fbc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:37:54 GMT
ENV INFLUXDB_VERSION=1.3.8
# Tue, 12 Dec 2017 17:38:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:01 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:03 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:04 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:05 GMT
CMD ["influxd"]
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
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11ea0e9ba2b05347759d49dba296bda5bb647ffefe5b149f36f80f45dc3b5d4`  
		Last Modified: Tue, 12 Dec 2017 17:39:17 GMT  
		Size: 18.2 MB (18181002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc9e4c5b7e5fab3a809c576a35f1626714fb2c2b434e2e7422c234349a1ec`  
		Last Modified: Tue, 12 Dec 2017 17:39:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14b1a2e5f8e296d18e72cb4ba2d8c45194c9fdf537baf059351cbd2c85efd66`  
		Last Modified: Tue, 12 Dec 2017 17:39:09 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1331b1560cf3cfb11a54a23fe9fd41d8d292d698a474d28f0b45e32554fd098`  
		Last Modified: Tue, 12 Dec 2017 17:39:09 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad55581ff95f070c57fa52a2bc2b918f68b3f4974bb4813c3c5d5c36c4715961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74933821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f45cc9fe461b15d2169ab97da7f3e5a17502931db52cad93c39d35c53feb86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:32 GMT
ENV INFLUXDB_VERSION=1.3.8
# Fri, 15 Dec 2017 21:27:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:27:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:27:41 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:27:42 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:27:43 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:27:44 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:27:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:27:46 GMT
CMD ["influxd"]
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
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed167bce25e92d0dda834a173cb48f2dff69142936cca8983ec4b14260c9ad7`  
		Last Modified: Fri, 15 Dec 2017 21:28:26 GMT  
		Size: 17.9 MB (17862445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad344bad2e86108f171dca20074afdb88f02664cff09e350f37a64a1fb240cc`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16264231d8a78aae27790ec27910b0a01047b45f5fa8325aa348b9095fa406`  
		Last Modified: Fri, 15 Dec 2017 21:28:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288bbdc4bbbdd626e617252d998c2ef0905228e33c29baa1043551af4b51255`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.8`

```console
$ docker pull influxdb@sha256:8c3157245ee6863203cf2f410d026b8e3683b502f9bd967728337ece4c730cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.8` - linux; amd64

```console
$ docker pull influxdb@sha256:f6d904821a28793e7c4dd0a39bcc19886e0629f86345bec02be3a52270760ec1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79704960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568dbecbd1d400ecfc6acf78ee71a12bf20cd15d21e5b513cb3d43f7791573dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 12:46:36 GMT
ENV INFLUXDB_VERSION=1.3.8
# Tue, 12 Dec 2017 12:46:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 12:46:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 12:46:50 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 12:46:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 12:46:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 12:46:51 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 12:46:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 12:46:51 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e472107aab2352358c4caf1dfcd11a100a6aa43c872c6be8d381360f5ded7b8`  
		Last Modified: Tue, 12 Dec 2017 12:47:30 GMT  
		Size: 19.1 MB (19136062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1acb5b9a40e9751291ee637dc80bbd1bc48dedd05145797919dfa1203cceb2`  
		Last Modified: Tue, 12 Dec 2017 12:47:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe304969555bda931898345163e6f86f10d654b389a29fcd6a62f4e2d82e16`  
		Last Modified: Tue, 12 Dec 2017 12:47:26 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fbf53976826c5482ff9ec63ac5fce85a0382e671385ff7f1bd1a3353153a0`  
		Last Modified: Tue, 12 Dec 2017 12:47:26 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.8` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:7b2a44915250618e442bbd08d0f9ff90b3411b2dc41fa990db701a4d7a5753b2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73772235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda1041d40b1119727370e3184fa5b59295f56a3fd79c4426543ef1abe57fbc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:37:54 GMT
ENV INFLUXDB_VERSION=1.3.8
# Tue, 12 Dec 2017 17:38:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:01 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:03 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:04 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:05 GMT
CMD ["influxd"]
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
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11ea0e9ba2b05347759d49dba296bda5bb647ffefe5b149f36f80f45dc3b5d4`  
		Last Modified: Tue, 12 Dec 2017 17:39:17 GMT  
		Size: 18.2 MB (18181002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc9e4c5b7e5fab3a809c576a35f1626714fb2c2b434e2e7422c234349a1ec`  
		Last Modified: Tue, 12 Dec 2017 17:39:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14b1a2e5f8e296d18e72cb4ba2d8c45194c9fdf537baf059351cbd2c85efd66`  
		Last Modified: Tue, 12 Dec 2017 17:39:09 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1331b1560cf3cfb11a54a23fe9fd41d8d292d698a474d28f0b45e32554fd098`  
		Last Modified: Tue, 12 Dec 2017 17:39:09 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad55581ff95f070c57fa52a2bc2b918f68b3f4974bb4813c3c5d5c36c4715961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74933821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f45cc9fe461b15d2169ab97da7f3e5a17502931db52cad93c39d35c53feb86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:32 GMT
ENV INFLUXDB_VERSION=1.3.8
# Fri, 15 Dec 2017 21:27:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:27:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:27:41 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:27:42 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:27:43 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:27:44 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:27:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:27:46 GMT
CMD ["influxd"]
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
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed167bce25e92d0dda834a173cb48f2dff69142936cca8983ec4b14260c9ad7`  
		Last Modified: Fri, 15 Dec 2017 21:28:26 GMT  
		Size: 17.9 MB (17862445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad344bad2e86108f171dca20074afdb88f02664cff09e350f37a64a1fb240cc`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16264231d8a78aae27790ec27910b0a01047b45f5fa8325aa348b9095fa406`  
		Last Modified: Fri, 15 Dec 2017 21:28:19 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288bbdc4bbbdd626e617252d998c2ef0905228e33c29baa1043551af4b51255`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.8-alpine`

```console
$ docker pull influxdb@sha256:27f02a49d9e1c06ab6eb3d9093a5cc2a2fc537f1bd058e899a4c0e297eb4b2e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.8-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b1d7546bf8cd5c48ef4fc74b6f0111c3ef1c7705b63da6bf80e0e0a33a19a706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22535296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd12965222a3e536db50e433e10d86fa621f40fbd24db3cfbb86f7f64ba7ec4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Mon, 04 Dec 2017 21:44:32 GMT
ENV INFLUXDB_VERSION=1.3.8
# Mon, 04 Dec 2017 21:44:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 04 Dec 2017 21:44:44 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 04 Dec 2017 21:44:44 GMT
EXPOSE 8086/tcp
# Mon, 04 Dec 2017 21:44:45 GMT
VOLUME [/var/lib/influxdb]
# Mon, 04 Dec 2017 21:44:45 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Mon, 04 Dec 2017 21:44:45 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Mon, 04 Dec 2017 21:44:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 04 Dec 2017 21:44:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06b01ba5ba4dd096ec7707eecf0ce0668b69c5cd74c3acb8a051b15a9137a5e`  
		Last Modified: Mon, 04 Dec 2017 21:45:41 GMT  
		Size: 19.0 MB (19037648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda300c71c93dc6a8f5bf7ccd0804e20ae53a1eb7b5e12f24ad145c8636acc6`  
		Last Modified: Mon, 04 Dec 2017 21:45:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581bbb3bf4397efb69ed251324445f23552544325dafebc11c7b06c713f3776d`  
		Last Modified: Mon, 04 Dec 2017 21:45:37 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84163ac29fa23d630da1cb8ac7ca361f506140566a791c9019697b1c8a88ce4`  
		Last Modified: Mon, 04 Dec 2017 21:45:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.8-data`

```console
$ docker pull influxdb@sha256:8bc5d392ca6db3a22e8d46f8a2c58142fc355a423b4984e597772a05d411a3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.8-data` - linux; amd64

```console
$ docker pull influxdb@sha256:c3850ce70a93708b349abe7bf4bc1c8ceb5feac9521118a97f68295c6880bf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80552881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b648e6bc01a03f7e2d7fa400865db6215c3eb42fa8c889670b2069b5603c962`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 00:57:49 GMT
ENV INFLUXDB_VERSION=1.3.8-c1.3.8
# Wed, 20 Dec 2017 00:57:53 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 20 Dec 2017 00:57:53 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 20 Dec 2017 00:57:54 GMT
EXPOSE 8086/tcp
# Wed, 20 Dec 2017 00:57:54 GMT
VOLUME [/var/lib/influxdb]
# Wed, 20 Dec 2017 00:57:54 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 20 Dec 2017 00:57:55 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Wed, 20 Dec 2017 00:57:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 00:57:55 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f398606ebb4f72a1f519a150d307821d07f4250e3e5c6c5cb86f669a297f51`  
		Last Modified: Wed, 20 Dec 2017 00:58:44 GMT  
		Size: 20.0 MB (19983925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66558d11dc0aa737f91da11867441ab5c228cdfe687002a0a4a8ee61c2691b2b`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3ddea88ca83061b3698b7a37aad93f7fc8edaf95a44e0e2b683c00398a7296`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbef56ecdefdd7c176a853ab21849f6b187d853cba3dff54eea596c44434921`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.8-meta`

```console
$ docker pull influxdb@sha256:0eb4635896d66f55dcd4025345406c276cbef6e3478086bfcbcc0d8954c7da5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.8-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a54943b13dc636ddae94fa6996686870bd21305e4999d1da9e7e5d9faf8a6cf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c80baefec595e8257988dccb6fe5851dc1af9e440f6008fd50136ebcff869b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 00:57:49 GMT
ENV INFLUXDB_VERSION=1.3.8-c1.3.8
# Wed, 20 Dec 2017 00:58:06 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 20 Dec 2017 00:58:07 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 20 Dec 2017 00:58:07 GMT
EXPOSE 8091/tcp
# Wed, 20 Dec 2017 00:58:07 GMT
VOLUME [/var/lib/influxdb]
# Wed, 20 Dec 2017 00:58:07 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 20 Dec 2017 00:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 00:58:08 GMT
CMD ["influxd-meta"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f4c37df506d247b35a15010edfe59990a934c1a08e694bfc02ab6b92e6c776`  
		Last Modified: Wed, 20 Dec 2017 00:59:16 GMT  
		Size: 9.3 MB (9275968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7eb8043f4e75387cac848cb01acbd8c5a2f4c0a847a04d3e23abf2e126cddb`  
		Last Modified: Wed, 20 Dec 2017 00:59:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d334b117ab120d35ef9a77307f696d420eaf32633396fd97ef2da950d32f7a7e`  
		Last Modified: Wed, 20 Dec 2017 00:59:14 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:27f02a49d9e1c06ab6eb3d9093a5cc2a2fc537f1bd058e899a4c0e297eb4b2e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b1d7546bf8cd5c48ef4fc74b6f0111c3ef1c7705b63da6bf80e0e0a33a19a706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22535296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd12965222a3e536db50e433e10d86fa621f40fbd24db3cfbb86f7f64ba7ec4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Mon, 04 Dec 2017 21:44:32 GMT
ENV INFLUXDB_VERSION=1.3.8
# Mon, 04 Dec 2017 21:44:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 04 Dec 2017 21:44:44 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 04 Dec 2017 21:44:44 GMT
EXPOSE 8086/tcp
# Mon, 04 Dec 2017 21:44:45 GMT
VOLUME [/var/lib/influxdb]
# Mon, 04 Dec 2017 21:44:45 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Mon, 04 Dec 2017 21:44:45 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Mon, 04 Dec 2017 21:44:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 04 Dec 2017 21:44:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06b01ba5ba4dd096ec7707eecf0ce0668b69c5cd74c3acb8a051b15a9137a5e`  
		Last Modified: Mon, 04 Dec 2017 21:45:41 GMT  
		Size: 19.0 MB (19037648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda300c71c93dc6a8f5bf7ccd0804e20ae53a1eb7b5e12f24ad145c8636acc6`  
		Last Modified: Mon, 04 Dec 2017 21:45:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581bbb3bf4397efb69ed251324445f23552544325dafebc11c7b06c713f3776d`  
		Last Modified: Mon, 04 Dec 2017 21:45:37 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84163ac29fa23d630da1cb8ac7ca361f506140566a791c9019697b1c8a88ce4`  
		Last Modified: Mon, 04 Dec 2017 21:45:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-data`

```console
$ docker pull influxdb@sha256:8bc5d392ca6db3a22e8d46f8a2c58142fc355a423b4984e597772a05d411a3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-data` - linux; amd64

```console
$ docker pull influxdb@sha256:c3850ce70a93708b349abe7bf4bc1c8ceb5feac9521118a97f68295c6880bf73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80552881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b648e6bc01a03f7e2d7fa400865db6215c3eb42fa8c889670b2069b5603c962`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 00:57:49 GMT
ENV INFLUXDB_VERSION=1.3.8-c1.3.8
# Wed, 20 Dec 2017 00:57:53 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 20 Dec 2017 00:57:53 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 20 Dec 2017 00:57:54 GMT
EXPOSE 8086/tcp
# Wed, 20 Dec 2017 00:57:54 GMT
VOLUME [/var/lib/influxdb]
# Wed, 20 Dec 2017 00:57:54 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 20 Dec 2017 00:57:55 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Wed, 20 Dec 2017 00:57:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 00:57:55 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f398606ebb4f72a1f519a150d307821d07f4250e3e5c6c5cb86f669a297f51`  
		Last Modified: Wed, 20 Dec 2017 00:58:44 GMT  
		Size: 20.0 MB (19983925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66558d11dc0aa737f91da11867441ab5c228cdfe687002a0a4a8ee61c2691b2b`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3ddea88ca83061b3698b7a37aad93f7fc8edaf95a44e0e2b683c00398a7296`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbef56ecdefdd7c176a853ab21849f6b187d853cba3dff54eea596c44434921`  
		Last Modified: Wed, 20 Dec 2017 00:58:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-meta`

```console
$ docker pull influxdb@sha256:0eb4635896d66f55dcd4025345406c276cbef6e3478086bfcbcc0d8954c7da5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a54943b13dc636ddae94fa6996686870bd21305e4999d1da9e7e5d9faf8a6cf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c80baefec595e8257988dccb6fe5851dc1af9e440f6008fd50136ebcff869b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 20 Dec 2017 00:57:49 GMT
ENV INFLUXDB_VERSION=1.3.8-c1.3.8
# Wed, 20 Dec 2017 00:58:06 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 20 Dec 2017 00:58:07 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 20 Dec 2017 00:58:07 GMT
EXPOSE 8091/tcp
# Wed, 20 Dec 2017 00:58:07 GMT
VOLUME [/var/lib/influxdb]
# Wed, 20 Dec 2017 00:58:07 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 20 Dec 2017 00:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 00:58:08 GMT
CMD ["influxd-meta"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f4c37df506d247b35a15010edfe59990a934c1a08e694bfc02ab6b92e6c776`  
		Last Modified: Wed, 20 Dec 2017 00:59:16 GMT  
		Size: 9.3 MB (9275968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7eb8043f4e75387cac848cb01acbd8c5a2f4c0a847a04d3e23abf2e126cddb`  
		Last Modified: Wed, 20 Dec 2017 00:59:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d334b117ab120d35ef9a77307f696d420eaf32633396fd97ef2da950d32f7a7e`  
		Last Modified: Wed, 20 Dec 2017 00:59:14 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:4b08e5315b198dbd1f1f070fbccb12f258b3219f4f1d85370156fb0bb2b95677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:aa6f07e0d299b41e135ef3d814e49c7678c6e57326cb81bf2e3774a7fac7f31e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81671020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6c470bec0e48b45848b429a9f218735f3613c83accd009acd885f0cfdda213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 12:47:05 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 12:47:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 12:47:08 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 12:47:08 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 12:47:09 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 12:47:10 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d61de962a23b4c272787f048b7bb31298d0ff9936910d1dbc0cbc49d50cd1`  
		Last Modified: Tue, 12 Dec 2017 12:48:00 GMT  
		Size: 21.1 MB (21102124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29e8ea78c94738cb7fb104f3264a2dbf48b581fe5ef9dbc0029ff840620420`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153842580748308fec08f5182bce1fa365f1632683ee38af6e07fa6443ebb49`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bbf0e6af28aaf706d6fa8e7af6e5882101ba5001ff9c4cc6c60a2ab4a86e3a`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
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
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
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
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.2`

```console
$ docker pull influxdb@sha256:4b08e5315b198dbd1f1f070fbccb12f258b3219f4f1d85370156fb0bb2b95677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4.2` - linux; amd64

```console
$ docker pull influxdb@sha256:aa6f07e0d299b41e135ef3d814e49c7678c6e57326cb81bf2e3774a7fac7f31e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81671020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6c470bec0e48b45848b429a9f218735f3613c83accd009acd885f0cfdda213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 12:47:05 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 12:47:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 12:47:08 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 12:47:08 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 12:47:09 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 12:47:10 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d61de962a23b4c272787f048b7bb31298d0ff9936910d1dbc0cbc49d50cd1`  
		Last Modified: Tue, 12 Dec 2017 12:48:00 GMT  
		Size: 21.1 MB (21102124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29e8ea78c94738cb7fb104f3264a2dbf48b581fe5ef9dbc0029ff840620420`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153842580748308fec08f5182bce1fa365f1632683ee38af6e07fa6443ebb49`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bbf0e6af28aaf706d6fa8e7af6e5882101ba5001ff9c4cc6c60a2ab4a86e3a`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.2` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
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
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
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
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.2-alpine`

```console
$ docker pull influxdb@sha256:f8d64d437086aafd62cd261bcc68b2dc12ae95eb9b7423b7787bf8114de676de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9d7a63436cea1591fb0ea6edaec8c3dfc9bd764318b83f513c0736a4d570d7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d1c5e7643c385f2a72c4969331f0f85d0f14f866615b97c35c5cfc5441a64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Fri, 01 Dec 2017 20:53:27 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 01 Dec 2017 20:53:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 20:53:37 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 01 Dec 2017 20:53:37 GMT
EXPOSE 8086/tcp
# Fri, 01 Dec 2017 20:53:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 20:53:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4273b9f15ee26deff94f4ad6cf1f8eb3b703fdf55009cdba9f2cae3d4778b455`  
		Last Modified: Fri, 01 Dec 2017 20:54:41 GMT  
		Size: 21.0 MB (20995576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163952abda86747718463695b18ab09c724993cd99b99f0d6b4ba8564000b73`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1299e8ba1eb64f07588a3736112a2fbdd93d0f0ef53b8791c5ba743ea68305`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0699da35bd5433b826e4ed4f0688a0684cb912e6325cb5d16251421bdf90e9`  
		Last Modified: Fri, 01 Dec 2017 20:54:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:f8d64d437086aafd62cd261bcc68b2dc12ae95eb9b7423b7787bf8114de676de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9d7a63436cea1591fb0ea6edaec8c3dfc9bd764318b83f513c0736a4d570d7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d1c5e7643c385f2a72c4969331f0f85d0f14f866615b97c35c5cfc5441a64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Fri, 01 Dec 2017 20:53:27 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 01 Dec 2017 20:53:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 20:53:37 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 01 Dec 2017 20:53:37 GMT
EXPOSE 8086/tcp
# Fri, 01 Dec 2017 20:53:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 20:53:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4273b9f15ee26deff94f4ad6cf1f8eb3b703fdf55009cdba9f2cae3d4778b455`  
		Last Modified: Fri, 01 Dec 2017 20:54:41 GMT  
		Size: 21.0 MB (20995576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163952abda86747718463695b18ab09c724993cd99b99f0d6b4ba8564000b73`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1299e8ba1eb64f07588a3736112a2fbdd93d0f0ef53b8791c5ba743ea68305`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0699da35bd5433b826e4ed4f0688a0684cb912e6325cb5d16251421bdf90e9`  
		Last Modified: Fri, 01 Dec 2017 20:54:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:f8d64d437086aafd62cd261bcc68b2dc12ae95eb9b7423b7787bf8114de676de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9d7a63436cea1591fb0ea6edaec8c3dfc9bd764318b83f513c0736a4d570d7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d1c5e7643c385f2a72c4969331f0f85d0f14f866615b97c35c5cfc5441a64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Fri, 01 Dec 2017 20:53:27 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 01 Dec 2017 20:53:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 20:53:37 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 01 Dec 2017 20:53:37 GMT
EXPOSE 8086/tcp
# Fri, 01 Dec 2017 20:53:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 20:53:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4273b9f15ee26deff94f4ad6cf1f8eb3b703fdf55009cdba9f2cae3d4778b455`  
		Last Modified: Fri, 01 Dec 2017 20:54:41 GMT  
		Size: 21.0 MB (20995576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163952abda86747718463695b18ab09c724993cd99b99f0d6b4ba8564000b73`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1299e8ba1eb64f07588a3736112a2fbdd93d0f0ef53b8791c5ba743ea68305`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0699da35bd5433b826e4ed4f0688a0684cb912e6325cb5d16251421bdf90e9`  
		Last Modified: Fri, 01 Dec 2017 20:54:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

**does not exist** (yet?)

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:4b08e5315b198dbd1f1f070fbccb12f258b3219f4f1d85370156fb0bb2b95677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:aa6f07e0d299b41e135ef3d814e49c7678c6e57326cb81bf2e3774a7fac7f31e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81671020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6c470bec0e48b45848b429a9f218735f3613c83accd009acd885f0cfdda213`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 12:47:05 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 12:47:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 12:47:08 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 12:47:08 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 12:47:09 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 12:47:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 12:47:10 GMT
CMD ["influxd"]
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
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6d61de962a23b4c272787f048b7bb31298d0ff9936910d1dbc0cbc49d50cd1`  
		Last Modified: Tue, 12 Dec 2017 12:48:00 GMT  
		Size: 21.1 MB (21102124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29e8ea78c94738cb7fb104f3264a2dbf48b581fe5ef9dbc0029ff840620420`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153842580748308fec08f5182bce1fa365f1632683ee38af6e07fa6443ebb49`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bbf0e6af28aaf706d6fa8e7af6e5882101ba5001ff9c4cc6c60a2ab4a86e3a`  
		Last Modified: Tue, 12 Dec 2017 12:47:56 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
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
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
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
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

**does not exist** (yet?)
