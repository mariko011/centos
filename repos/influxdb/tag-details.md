<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.0`](#influxdb10)
-	[`influxdb:1.0.2`](#influxdb102)
-	[`influxdb:1.0-alpine`](#influxdb10-alpine)
-	[`influxdb:1.0.2-alpine`](#influxdb102-alpine)
-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.1`](#influxdb111)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.1-alpine`](#influxdb111-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.0`

```console
$ docker pull influxdb@sha256:196b9536bf9ff5984ee3236ce76d8834061f31db697d2772b1a9812a6205a056
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87686928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c313b7723704e64729c1031ad062da051a53a423ab9338186c916b9e740e01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:58:26 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 08 Nov 2016 19:58:28 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:58:29 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:58:30 GMT
EXPOSE 8086/tcp
# Tue, 08 Nov 2016 19:58:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:58:31 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:58:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd91d3f65dbd2844419b9d22aa203e7ac32664515393d24ba64da68284b23e2`  
		Last Modified: Tue, 08 Nov 2016 19:58:58 GMT  
		Size: 17.8 MB (17794295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c2681c38680bddf2795509137515eb69f302b43854e30865419af615cb86`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2563a8b3202fc63472df4325a068b20814535075e15b5f72c1af66858fbd5d6`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2`

```console
$ docker pull influxdb@sha256:196b9536bf9ff5984ee3236ce76d8834061f31db697d2772b1a9812a6205a056
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87686928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c313b7723704e64729c1031ad062da051a53a423ab9338186c916b9e740e01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:58:26 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 08 Nov 2016 19:58:28 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:58:29 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:58:30 GMT
EXPOSE 8086/tcp
# Tue, 08 Nov 2016 19:58:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:58:31 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:58:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd91d3f65dbd2844419b9d22aa203e7ac32664515393d24ba64da68284b23e2`  
		Last Modified: Tue, 08 Nov 2016 19:58:58 GMT  
		Size: 17.8 MB (17794295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c2681c38680bddf2795509137515eb69f302b43854e30865419af615cb86`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2563a8b3202fc63472df4325a068b20814535075e15b5f72c1af66858fbd5d6`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0-alpine`

```console
$ docker pull influxdb@sha256:04e0d1b135dd006ef95ff8e86b67da392f3557297e886d87b90dccb706004ee0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c431b15d63f71eab223e4a8df3a5e685be3828d91b963db4c1fa678ca1e340e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:29:37 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 18 Oct 2016 23:29:44 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:45 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0d400d86dd946a067b0c023d475caa22aeb410bb0a5f3cb1e9651e1eba76ac`  
		Last Modified: Tue, 18 Oct 2016 23:30:03 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a706c5ca65efbc919fec310a19d824b7f776e53e2c014f35f6b16acd512ec3`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb4d36f3b21ebe72fe32d206494d1e612527675d5e946100ffc424c6a7617e1`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2-alpine`

```console
$ docker pull influxdb@sha256:04e0d1b135dd006ef95ff8e86b67da392f3557297e886d87b90dccb706004ee0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c431b15d63f71eab223e4a8df3a5e685be3828d91b963db4c1fa678ca1e340e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:29:37 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 18 Oct 2016 23:29:44 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:45 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0d400d86dd946a067b0c023d475caa22aeb410bb0a5f3cb1e9651e1eba76ac`  
		Last Modified: Tue, 18 Oct 2016 23:30:03 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a706c5ca65efbc919fec310a19d824b7f776e53e2c014f35f6b16acd512ec3`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb4d36f3b21ebe72fe32d206494d1e612527675d5e946100ffc424c6a7617e1`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:f47a250b117384e8944a5e8b5bb359a3bc051b60d521de962b44e22b41045418
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11072db974c852ed2390c729c39cb6da872e9b28b6bdb6a2cffe47a0cbd71e51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Dec 2016 21:14:49 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:14:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Dec 2016 21:15:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:01 GMT
EXPOSE 8086/tcp
# Wed, 07 Dec 2016 21:15:01 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:02 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95878ca6cdfd8005dfe0c5d29f03567fbae6ae4f346107e430854da2b1ffbf30`  
		Last Modified: Wed, 07 Dec 2016 21:16:52 GMT  
		Size: 15.5 MB (15531321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b6d02e00df9277466b18d07763bf080bf6ea11116bd8da8176f1c7247c483`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0eef09d9f394a3ff5f4f1e8dc061ecc1052e27409976101d235ab1f4c3911a`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1`

```console
$ docker pull influxdb@sha256:f47a250b117384e8944a5e8b5bb359a3bc051b60d521de962b44e22b41045418
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11072db974c852ed2390c729c39cb6da872e9b28b6bdb6a2cffe47a0cbd71e51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Dec 2016 21:14:49 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:14:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Dec 2016 21:15:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:01 GMT
EXPOSE 8086/tcp
# Wed, 07 Dec 2016 21:15:01 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:02 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95878ca6cdfd8005dfe0c5d29f03567fbae6ae4f346107e430854da2b1ffbf30`  
		Last Modified: Wed, 07 Dec 2016 21:16:52 GMT  
		Size: 15.5 MB (15531321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b6d02e00df9277466b18d07763bf080bf6ea11116bd8da8176f1c7247c483`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0eef09d9f394a3ff5f4f1e8dc061ecc1052e27409976101d235ab1f4c3911a`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:f47a250b117384e8944a5e8b5bb359a3bc051b60d521de962b44e22b41045418
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11072db974c852ed2390c729c39cb6da872e9b28b6bdb6a2cffe47a0cbd71e51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Dec 2016 21:14:49 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:14:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Dec 2016 21:15:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:01 GMT
EXPOSE 8086/tcp
# Wed, 07 Dec 2016 21:15:01 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:02 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95878ca6cdfd8005dfe0c5d29f03567fbae6ae4f346107e430854da2b1ffbf30`  
		Last Modified: Wed, 07 Dec 2016 21:16:52 GMT  
		Size: 15.5 MB (15531321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b6d02e00df9277466b18d07763bf080bf6ea11116bd8da8176f1c7247c483`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0eef09d9f394a3ff5f4f1e8dc061ecc1052e27409976101d235ab1f4c3911a`  
		Last Modified: Wed, 07 Dec 2016 21:16:45 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:e7951c1944a005276df63221f9303be4cdf237f8b25bbafa0534a4bba08ae3d5
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f962728e866aed6cd178c80bdcb03f3b05c8a175803f2db7c72f99fc21996`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 07 Dec 2016 21:15:03 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:15:12 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Dec 2016 21:15:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:16 GMT
EXPOSE 8083/tcp 8086/tcp
# Wed, 07 Dec 2016 21:15:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:17 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619ae418fd56101ec887ac040d18e310bd79725976a85f77fc5674e1eafbb8e8`  
		Last Modified: Wed, 07 Dec 2016 21:17:49 GMT  
		Size: 11.0 MB (10993433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a6f4ae8669f88b2543f89aee065d651bb090cab41b9a605a9d463c8f65d876`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97579773a23d2cf1fef0f12d4a4ef464f7865f140996a00aed3f7af894a60d11`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1-alpine`

```console
$ docker pull influxdb@sha256:e7951c1944a005276df63221f9303be4cdf237f8b25bbafa0534a4bba08ae3d5
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f962728e866aed6cd178c80bdcb03f3b05c8a175803f2db7c72f99fc21996`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 07 Dec 2016 21:15:03 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:15:12 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Dec 2016 21:15:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:16 GMT
EXPOSE 8083/tcp 8086/tcp
# Wed, 07 Dec 2016 21:15:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:17 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619ae418fd56101ec887ac040d18e310bd79725976a85f77fc5674e1eafbb8e8`  
		Last Modified: Wed, 07 Dec 2016 21:17:49 GMT  
		Size: 11.0 MB (10993433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a6f4ae8669f88b2543f89aee065d651bb090cab41b9a605a9d463c8f65d876`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97579773a23d2cf1fef0f12d4a4ef464f7865f140996a00aed3f7af894a60d11`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:e7951c1944a005276df63221f9303be4cdf237f8b25bbafa0534a4bba08ae3d5
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989f962728e866aed6cd178c80bdcb03f3b05c8a175803f2db7c72f99fc21996`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 07 Dec 2016 21:15:03 GMT
ENV INFLUXDB_VERSION=1.1.1
# Wed, 07 Dec 2016 21:15:12 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Dec 2016 21:15:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Dec 2016 21:15:16 GMT
EXPOSE 8083/tcp 8086/tcp
# Wed, 07 Dec 2016 21:15:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Dec 2016 21:15:17 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 07 Dec 2016 21:15:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Dec 2016 21:15:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619ae418fd56101ec887ac040d18e310bd79725976a85f77fc5674e1eafbb8e8`  
		Last Modified: Wed, 07 Dec 2016 21:17:49 GMT  
		Size: 11.0 MB (10993433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a6f4ae8669f88b2543f89aee065d651bb090cab41b9a605a9d463c8f65d876`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97579773a23d2cf1fef0f12d4a4ef464f7865f140996a00aed3f7af894a60d11`  
		Last Modified: Wed, 07 Dec 2016 21:17:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
