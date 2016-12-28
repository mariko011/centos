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
$ docker pull influxdb@sha256:99f01ea53364b2edc416d2e51ef164598c29aaa09dc2088c9e6eab7ab5c020e7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0962d49d0ccf7728bb8c0774a12faa64271782dd8e63195ab138177b1bbb625d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:30 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 27 Dec 2016 19:14:39 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:43 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90637ae427cccac338eb31957b692277644521f11697dfd44d3136b35e7d1240`  
		Last Modified: Tue, 27 Dec 2016 19:17:45 GMT  
		Size: 11.0 MB (10993435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200e29e17335767fb0379d3e7a5e2ecae200972eda689ed9bf8517035309c0a1`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34bc32048143c534a3b45dd4d57d03f8eb82f5e60b469e753b6a7fb7852ec9f`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1-alpine`

```console
$ docker pull influxdb@sha256:99f01ea53364b2edc416d2e51ef164598c29aaa09dc2088c9e6eab7ab5c020e7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0962d49d0ccf7728bb8c0774a12faa64271782dd8e63195ab138177b1bbb625d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:30 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 27 Dec 2016 19:14:39 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:43 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90637ae427cccac338eb31957b692277644521f11697dfd44d3136b35e7d1240`  
		Last Modified: Tue, 27 Dec 2016 19:17:45 GMT  
		Size: 11.0 MB (10993435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200e29e17335767fb0379d3e7a5e2ecae200972eda689ed9bf8517035309c0a1`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34bc32048143c534a3b45dd4d57d03f8eb82f5e60b469e753b6a7fb7852ec9f`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:99f01ea53364b2edc416d2e51ef164598c29aaa09dc2088c9e6eab7ab5c020e7
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0962d49d0ccf7728bb8c0774a12faa64271782dd8e63195ab138177b1bbb625d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:14:30 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 27 Dec 2016 19:14:39 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 19:14:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Dec 2016 19:14:43 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 27 Dec 2016 19:14:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Dec 2016 19:14:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Dec 2016 19:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 19:14:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90637ae427cccac338eb31957b692277644521f11697dfd44d3136b35e7d1240`  
		Last Modified: Tue, 27 Dec 2016 19:17:45 GMT  
		Size: 11.0 MB (10993435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200e29e17335767fb0379d3e7a5e2ecae200972eda689ed9bf8517035309c0a1`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34bc32048143c534a3b45dd4d57d03f8eb82f5e60b469e753b6a7fb7852ec9f`  
		Last Modified: Tue, 27 Dec 2016 19:17:40 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
