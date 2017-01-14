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
-	[`influxdb:1.2.0-rc1`](#influxdb120-rc1)
-	[`influxdb:1.2.0-rc1-alpine`](#influxdb120-rc1-alpine)

## `influxdb:1.0`

```console
$ docker pull influxdb@sha256:3dbcf3037744005fbcbc743a1061ef0e9f38cf6f374cabad2887bfbe49becfaf
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87694617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e159aa38cccae3d2055f7abb2f76e9b52f2b75f9540ca2ba21e950ccb9b3f094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 13 Dec 2016 23:49:27 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 13 Dec 2016 23:49:34 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 13 Dec 2016 23:49:35 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 13 Dec 2016 23:49:35 GMT
EXPOSE 8086/tcp
# Tue, 13 Dec 2016 23:49:36 GMT
VOLUME [/var/lib/influxdb]
# Tue, 13 Dec 2016 23:49:36 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 13 Dec 2016 23:49:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 23:49:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8129ebc45878c3696a1b8ed14896de98271c7da52778872ef680d41b146008`  
		Last Modified: Mon, 19 Dec 2016 22:49:15 GMT  
		Size: 17.8 MB (17794337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daabf930422c4548fdb69e4f6a8b437507bdab41e04480b1e18222cf109eb6f`  
		Last Modified: Mon, 19 Dec 2016 22:49:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6cf9a73a47c94696efadf6d3e5ca5f0892fdc3d6d74ccc1cad5a276c6030cb`  
		Last Modified: Mon, 19 Dec 2016 22:49:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2`

```console
$ docker pull influxdb@sha256:3dbcf3037744005fbcbc743a1061ef0e9f38cf6f374cabad2887bfbe49becfaf
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87694617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e159aa38cccae3d2055f7abb2f76e9b52f2b75f9540ca2ba21e950ccb9b3f094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 13 Dec 2016 23:49:27 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 13 Dec 2016 23:49:34 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 13 Dec 2016 23:49:35 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 13 Dec 2016 23:49:35 GMT
EXPOSE 8086/tcp
# Tue, 13 Dec 2016 23:49:36 GMT
VOLUME [/var/lib/influxdb]
# Tue, 13 Dec 2016 23:49:36 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 13 Dec 2016 23:49:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 23:49:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8129ebc45878c3696a1b8ed14896de98271c7da52778872ef680d41b146008`  
		Last Modified: Mon, 19 Dec 2016 22:49:15 GMT  
		Size: 17.8 MB (17794337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daabf930422c4548fdb69e4f6a8b437507bdab41e04480b1e18222cf109eb6f`  
		Last Modified: Mon, 19 Dec 2016 22:49:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6cf9a73a47c94696efadf6d3e5ca5f0892fdc3d6d74ccc1cad5a276c6030cb`  
		Last Modified: Mon, 19 Dec 2016 22:49:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0-alpine`

```console
$ docker pull influxdb@sha256:a36768b67dbb95ae35ac7fe5e5fcf5254349e9e0158797fb818ed501ce0a8df5
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77076ecfc9b6f19b881b1748fc729c88b868e0fbab127ea341e6a41a93d00c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:16 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 27 Dec 2016 19:14:26 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:26 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:27 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:27 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:28 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0be099a43ddcf8ace20680dc7fd848dbabd6c399ff0eaec3d867a509ef2ade`  
		Last Modified: Tue, 27 Dec 2016 19:17:08 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16f95e4cbc7a178d5e470830eb7e35081fed0425ae431a1296ece5bb865e47a`  
		Last Modified: Tue, 27 Dec 2016 19:17:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d22e4286b72f29c592c76f2d76ac7abe8db01328922c29ef6c1cae0f3903c`  
		Last Modified: Tue, 27 Dec 2016 19:17:02 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2-alpine`

```console
$ docker pull influxdb@sha256:a36768b67dbb95ae35ac7fe5e5fcf5254349e9e0158797fb818ed501ce0a8df5
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77076ecfc9b6f19b881b1748fc729c88b868e0fbab127ea341e6a41a93d00c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:16 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 27 Dec 2016 19:14:26 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:26 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:27 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:27 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:28 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0be099a43ddcf8ace20680dc7fd848dbabd6c399ff0eaec3d867a509ef2ade`  
		Last Modified: Tue, 27 Dec 2016 19:17:08 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16f95e4cbc7a178d5e470830eb7e35081fed0425ae431a1296ece5bb865e47a`  
		Last Modified: Tue, 27 Dec 2016 19:17:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d22e4286b72f29c592c76f2d76ac7abe8db01328922c29ef6c1cae0f3903c`  
		Last Modified: Tue, 27 Dec 2016 19:17:02 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:c4836ca1ad83233eb655371b324747bd7c511a4f5780bc745570014d655a2ecc
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85431646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e953917a5971a1638dcc329aa5ba50d9b55c7bb5638fbe4c837c5d43945f24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 13 Dec 2016 23:49:38 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 13 Dec 2016 23:49:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 13 Dec 2016 23:49:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 13 Dec 2016 23:49:42 GMT
EXPOSE 8086/tcp
# Tue, 13 Dec 2016 23:49:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 13 Dec 2016 23:49:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 13 Dec 2016 23:49:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 23:49:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f4e1f079a415a02e831e66d19781475e0e8a43aa9c5b817b60e4e62a98442b`  
		Last Modified: Mon, 19 Dec 2016 22:50:11 GMT  
		Size: 15.5 MB (15531379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d8e5cced62c0f37aedb22e079fc83995bbe4458b20b8b3e575bd2b98711dc7`  
		Last Modified: Mon, 19 Dec 2016 22:50:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e669d99f7b2a1dbfd874353b78e909a6c5c9ebb2f10e816cf2fb48843bff8833`  
		Last Modified: Mon, 19 Dec 2016 22:50:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1`

```console
$ docker pull influxdb@sha256:c4836ca1ad83233eb655371b324747bd7c511a4f5780bc745570014d655a2ecc
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85431646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e953917a5971a1638dcc329aa5ba50d9b55c7bb5638fbe4c837c5d43945f24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 13 Dec 2016 23:49:38 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 13 Dec 2016 23:49:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 13 Dec 2016 23:49:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 13 Dec 2016 23:49:42 GMT
EXPOSE 8086/tcp
# Tue, 13 Dec 2016 23:49:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 13 Dec 2016 23:49:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 13 Dec 2016 23:49:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 23:49:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f4e1f079a415a02e831e66d19781475e0e8a43aa9c5b817b60e4e62a98442b`  
		Last Modified: Mon, 19 Dec 2016 22:50:11 GMT  
		Size: 15.5 MB (15531379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d8e5cced62c0f37aedb22e079fc83995bbe4458b20b8b3e575bd2b98711dc7`  
		Last Modified: Mon, 19 Dec 2016 22:50:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e669d99f7b2a1dbfd874353b78e909a6c5c9ebb2f10e816cf2fb48843bff8833`  
		Last Modified: Mon, 19 Dec 2016 22:50:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:c4836ca1ad83233eb655371b324747bd7c511a4f5780bc745570014d655a2ecc
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85431646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e953917a5971a1638dcc329aa5ba50d9b55c7bb5638fbe4c837c5d43945f24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 13 Dec 2016 23:49:38 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 13 Dec 2016 23:49:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 13 Dec 2016 23:49:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 13 Dec 2016 23:49:42 GMT
EXPOSE 8086/tcp
# Tue, 13 Dec 2016 23:49:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 13 Dec 2016 23:49:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 13 Dec 2016 23:49:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 23:49:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f4e1f079a415a02e831e66d19781475e0e8a43aa9c5b817b60e4e62a98442b`  
		Last Modified: Mon, 19 Dec 2016 22:50:11 GMT  
		Size: 15.5 MB (15531379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d8e5cced62c0f37aedb22e079fc83995bbe4458b20b8b3e575bd2b98711dc7`  
		Last Modified: Mon, 19 Dec 2016 22:50:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e669d99f7b2a1dbfd874353b78e909a6c5c9ebb2f10e816cf2fb48843bff8833`  
		Last Modified: Mon, 19 Dec 2016 22:50:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:e0184202151b2abb9ceee79e6523d9492fc3c632324eb6f7bf1a672dd130a3bb
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12895410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7c2ceab7b78eb9f08dc316fc787e4959ec1f89247a05f9cd6b84168a9e41fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:11:01 GMT
ENV INFLUXDB_VERSION=1.1.1
# Fri, 13 Jan 2017 20:11:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:11:21 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 13 Jan 2017 20:11:22 GMT
EXPOSE 8086/tcp
# Fri, 13 Jan 2017 20:11:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 13 Jan 2017 20:11:22 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:11:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0fd352f87d2f4fa99f6fc5a4d38959ad568d68571ee7d76f60ffa952df5837`  
		Last Modified: Fri, 13 Jan 2017 20:13:40 GMT  
		Size: 11.0 MB (10992941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873718bcf8aa839d3e7286c1a110ca1e6e01fd9f1edec4eb4b18bfcb6a3cd8a2`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbaf3e4140e3c251f969243194955c77b632602b77534cb9f90d1fdd82bd87f`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1-alpine`

```console
$ docker pull influxdb@sha256:e0184202151b2abb9ceee79e6523d9492fc3c632324eb6f7bf1a672dd130a3bb
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12895410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7c2ceab7b78eb9f08dc316fc787e4959ec1f89247a05f9cd6b84168a9e41fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:11:01 GMT
ENV INFLUXDB_VERSION=1.1.1
# Fri, 13 Jan 2017 20:11:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:11:21 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 13 Jan 2017 20:11:22 GMT
EXPOSE 8086/tcp
# Fri, 13 Jan 2017 20:11:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 13 Jan 2017 20:11:22 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:11:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0fd352f87d2f4fa99f6fc5a4d38959ad568d68571ee7d76f60ffa952df5837`  
		Last Modified: Fri, 13 Jan 2017 20:13:40 GMT  
		Size: 11.0 MB (10992941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873718bcf8aa839d3e7286c1a110ca1e6e01fd9f1edec4eb4b18bfcb6a3cd8a2`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbaf3e4140e3c251f969243194955c77b632602b77534cb9f90d1fdd82bd87f`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:e0184202151b2abb9ceee79e6523d9492fc3c632324eb6f7bf1a672dd130a3bb
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12895410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7c2ceab7b78eb9f08dc316fc787e4959ec1f89247a05f9cd6b84168a9e41fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:11:01 GMT
ENV INFLUXDB_VERSION=1.1.1
# Fri, 13 Jan 2017 20:11:21 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:11:21 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 13 Jan 2017 20:11:22 GMT
EXPOSE 8086/tcp
# Fri, 13 Jan 2017 20:11:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 13 Jan 2017 20:11:22 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:11:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0fd352f87d2f4fa99f6fc5a4d38959ad568d68571ee7d76f60ffa952df5837`  
		Last Modified: Fri, 13 Jan 2017 20:13:40 GMT  
		Size: 11.0 MB (10992941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873718bcf8aa839d3e7286c1a110ca1e6e01fd9f1edec4eb4b18bfcb6a3cd8a2`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbaf3e4140e3c251f969243194955c77b632602b77534cb9f90d1fdd82bd87f`  
		Last Modified: Fri, 13 Jan 2017 20:13:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0-rc1`

```console
$ docker pull influxdb@sha256:974331ed81775de68065c7028edca378d63860b3cfbc6142512f2234e060d6ab
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0-rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87166525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa99a316b5aed8c5f879a40bce4552e8f07f16027ff4cf457b6041eda0dc17d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:10 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Sat, 14 Jan 2017 00:40:39 GMT
ENV INFLUXDB_VERSION=1.2.0~rc1
# Sat, 14 Jan 2017 00:40:46 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Jan 2017 00:40:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Jan 2017 00:40:47 GMT
EXPOSE 8086/tcp
# Sat, 14 Jan 2017 00:40:47 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Jan 2017 00:40:48 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Sat, 14 Jan 2017 00:40:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Jan 2017 00:40:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb2976d4d206c5b9ac9fc57facba5fa461b15ccbce76a3cd314a77695608545`  
		Last Modified: Mon, 19 Dec 2016 18:17:22 GMT  
		Size: 6.8 KB (6754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdded56d6c1084ae11d96ba0e70d591f38324c778f8a540630fe9d1d79789b31`  
		Last Modified: Sat, 14 Jan 2017 00:43:41 GMT  
		Size: 17.3 MB (17266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2e56574df8c5b561cc56abd41b2fbac24b37ce5202f60901601e0958273824`  
		Last Modified: Sat, 14 Jan 2017 00:43:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c3727c6db2bf750fbba6a0f47183c28689241d76a4f8a5393dc19fb8a4afd5`  
		Last Modified: Sat, 14 Jan 2017 00:43:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0-rc1-alpine`

```console
$ docker pull influxdb@sha256:efa93c4c2e485026802bf9a4592017389451f3267ec30c2386eadd6a5dd2626e
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14112471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9e56d178e29539db39cc419442005076f608060c342a8269dffe8132861684`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Sat, 14 Jan 2017 00:40:49 GMT
ENV INFLUXDB_VERSION=1.2.0~rc1
# Sat, 14 Jan 2017 00:40:59 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Jan 2017 00:40:59 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Jan 2017 00:41:00 GMT
EXPOSE 8086/tcp
# Sat, 14 Jan 2017 00:41:00 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Jan 2017 00:41:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Sat, 14 Jan 2017 00:41:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Jan 2017 00:41:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e9ddf3b4c6578dc785a027754f71c81a939cc60177654dc99a136525322ee`  
		Last Modified: Sat, 14 Jan 2017 00:44:05 GMT  
		Size: 12.2 MB (12210002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721b8bf3d11bac8fa383374828306eaca8ae64c7ecb4af97c2b658f0f12aeb6e`  
		Last Modified: Sat, 14 Jan 2017 00:43:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf55231466212839c38fa09868fd8251566477a92e5b16ae2f962157604205`  
		Last Modified: Sat, 14 Jan 2017 00:44:00 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
