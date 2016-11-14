<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.0`](#influxdb10)
-	[`influxdb:1.0.2`](#influxdb102)
-	[`influxdb:1.0-alpine`](#influxdb10-alpine)
-	[`influxdb:1.0.2-alpine`](#influxdb102-alpine)
-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.0`](#influxdb110)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.0-alpine`](#influxdb110-alpine)
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
$ docker pull influxdb@sha256:f051dd5ce86520a199bcefeaf1b75f4e65d3234e46655035d3b1c87e78e6561e
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13afd4e125b886f4504ca22220b8b75c778b84bf4945c1459d90168855219926`
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
# Mon, 14 Nov 2016 18:45:41 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:43 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 14 Nov 2016 18:45:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:44 GMT
EXPOSE 8086/tcp
# Mon, 14 Nov 2016 18:45:45 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:46 GMT
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
	-	`sha256:4138703b8c61576c2779fe371a67514678a1786e09954aa84171fbf4e44baf75`  
		Last Modified: Mon, 14 Nov 2016 18:47:09 GMT  
		Size: 15.5 MB (15531080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4e3ed27f16c3823396bd1c89ab2a135d296430b2c4c62b11fa0c7d5e8c882`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18ef12fcba1009111f4aace38a19f075d4a5a622522b01db2d1303c2c755b6`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.0`

```console
$ docker pull influxdb@sha256:f051dd5ce86520a199bcefeaf1b75f4e65d3234e46655035d3b1c87e78e6561e
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13afd4e125b886f4504ca22220b8b75c778b84bf4945c1459d90168855219926`
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
# Mon, 14 Nov 2016 18:45:41 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:43 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 14 Nov 2016 18:45:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:44 GMT
EXPOSE 8086/tcp
# Mon, 14 Nov 2016 18:45:45 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:46 GMT
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
	-	`sha256:4138703b8c61576c2779fe371a67514678a1786e09954aa84171fbf4e44baf75`  
		Last Modified: Mon, 14 Nov 2016 18:47:09 GMT  
		Size: 15.5 MB (15531080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4e3ed27f16c3823396bd1c89ab2a135d296430b2c4c62b11fa0c7d5e8c882`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18ef12fcba1009111f4aace38a19f075d4a5a622522b01db2d1303c2c755b6`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:f051dd5ce86520a199bcefeaf1b75f4e65d3234e46655035d3b1c87e78e6561e
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13afd4e125b886f4504ca22220b8b75c778b84bf4945c1459d90168855219926`
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
# Mon, 14 Nov 2016 18:45:41 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:43 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 14 Nov 2016 18:45:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:44 GMT
EXPOSE 8086/tcp
# Mon, 14 Nov 2016 18:45:45 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:46 GMT
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
	-	`sha256:4138703b8c61576c2779fe371a67514678a1786e09954aa84171fbf4e44baf75`  
		Last Modified: Mon, 14 Nov 2016 18:47:09 GMT  
		Size: 15.5 MB (15531080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4e3ed27f16c3823396bd1c89ab2a135d296430b2c4c62b11fa0c7d5e8c882`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18ef12fcba1009111f4aace38a19f075d4a5a622522b01db2d1303c2c755b6`  
		Last Modified: Mon, 14 Nov 2016 18:47:03 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:f38fb364975e81f0d8715ba413a2612a735d072db93a6a77c4e8056b7581bc84
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfa7e2e1587019c5ccec99936f7c4620017e9f19e2898f1ce412e5436dd0238`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 14 Nov 2016 18:45:47 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 14 Nov 2016 18:45:54 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:54 GMT
EXPOSE 8083/tcp 8086/tcp
# Mon, 14 Nov 2016 18:45:55 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a523a12510be74c426636b9a89c6aac3a534d28bf0c6c9463c30b30aa439ae07`  
		Last Modified: Mon, 14 Nov 2016 18:48:03 GMT  
		Size: 11.0 MB (10992920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b63298d5535b2a2a388de1f3d1c7474849234730e86c7a1cffceec85eb22ee`  
		Last Modified: Mon, 14 Nov 2016 18:47:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce97905e22c60c7e483cf21556834b2f158cc4fa8f9549ab4b63410b90219b8`  
		Last Modified: Mon, 14 Nov 2016 18:47:56 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.0-alpine`

```console
$ docker pull influxdb@sha256:f38fb364975e81f0d8715ba413a2612a735d072db93a6a77c4e8056b7581bc84
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfa7e2e1587019c5ccec99936f7c4620017e9f19e2898f1ce412e5436dd0238`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 14 Nov 2016 18:45:47 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 14 Nov 2016 18:45:54 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:54 GMT
EXPOSE 8083/tcp 8086/tcp
# Mon, 14 Nov 2016 18:45:55 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a523a12510be74c426636b9a89c6aac3a534d28bf0c6c9463c30b30aa439ae07`  
		Last Modified: Mon, 14 Nov 2016 18:48:03 GMT  
		Size: 11.0 MB (10992920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b63298d5535b2a2a388de1f3d1c7474849234730e86c7a1cffceec85eb22ee`  
		Last Modified: Mon, 14 Nov 2016 18:47:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce97905e22c60c7e483cf21556834b2f158cc4fa8f9549ab4b63410b90219b8`  
		Last Modified: Mon, 14 Nov 2016 18:47:56 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:f38fb364975e81f0d8715ba413a2612a735d072db93a6a77c4e8056b7581bc84
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfa7e2e1587019c5ccec99936f7c4620017e9f19e2898f1ce412e5436dd0238`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 14 Nov 2016 18:45:47 GMT
ENV INFLUXDB_VERSION=1.1.0
# Mon, 14 Nov 2016 18:45:53 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 14 Nov 2016 18:45:54 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 14 Nov 2016 18:45:54 GMT
EXPOSE 8083/tcp 8086/tcp
# Mon, 14 Nov 2016 18:45:55 GMT
VOLUME [/var/lib/influxdb]
# Mon, 14 Nov 2016 18:45:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Mon, 14 Nov 2016 18:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 18:45:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a523a12510be74c426636b9a89c6aac3a534d28bf0c6c9463c30b30aa439ae07`  
		Last Modified: Mon, 14 Nov 2016 18:48:03 GMT  
		Size: 11.0 MB (10992920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b63298d5535b2a2a388de1f3d1c7474849234730e86c7a1cffceec85eb22ee`  
		Last Modified: Mon, 14 Nov 2016 18:47:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce97905e22c60c7e483cf21556834b2f158cc4fa8f9549ab4b63410b90219b8`  
		Last Modified: Mon, 14 Nov 2016 18:47:56 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
