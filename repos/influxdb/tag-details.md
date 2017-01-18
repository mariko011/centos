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
$ docker pull influxdb@sha256:01bfbe1ae57a4e9e4000f0e3843c008abb9a89053f6a6a1b7fafb486db338322
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87697943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1eb18fb3d727f517ba13a29299e63161d01be5fd6fa83ddfcc7da800807b5c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:19 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 17 Jan 2017 00:46:26 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:27 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:27 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:27 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:28 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d43034147a78f3da72454e95b769e0b4d2b1e9f35f8b9f33b51304b6780db13`  
		Last Modified: Wed, 18 Jan 2017 04:02:36 GMT  
		Size: 17.8 MB (17794117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e8d47c5eb8ec7417dbc8770a385c353b2b3d75a1d59c023df8391dd62afc40`  
		Last Modified: Wed, 18 Jan 2017 04:02:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc419e46e5ebe65d7f615cc47c93275385a632fab3fe943ff129e2b78157d032`  
		Last Modified: Wed, 18 Jan 2017 04:02:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2`

```console
$ docker pull influxdb@sha256:01bfbe1ae57a4e9e4000f0e3843c008abb9a89053f6a6a1b7fafb486db338322
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87697943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1eb18fb3d727f517ba13a29299e63161d01be5fd6fa83ddfcc7da800807b5c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:19 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 17 Jan 2017 00:46:26 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:27 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:27 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:27 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:28 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d43034147a78f3da72454e95b769e0b4d2b1e9f35f8b9f33b51304b6780db13`  
		Last Modified: Wed, 18 Jan 2017 04:02:36 GMT  
		Size: 17.8 MB (17794117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e8d47c5eb8ec7417dbc8770a385c353b2b3d75a1d59c023df8391dd62afc40`  
		Last Modified: Wed, 18 Jan 2017 04:02:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc419e46e5ebe65d7f615cc47c93275385a632fab3fe943ff129e2b78157d032`  
		Last Modified: Wed, 18 Jan 2017 04:02:29 GMT  
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
$ docker pull influxdb@sha256:655d812f7940d355b012dfa232583b8d4ebac4440f96c4b6af7046a94f3f5557
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85434920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5a0d6c6fcb196c037b068bce4c93e70f3104e2ddb41abdd1c2d029e3b88f92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:29 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 17 Jan 2017 00:46:32 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:33 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:33 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:34 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f89350750a441917aee6382cfaf358e4afa3eecc44c42711c1f2bd3ab99307f`  
		Last Modified: Wed, 18 Jan 2017 04:03:19 GMT  
		Size: 15.5 MB (15531108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b8cf3516477b090989ebd3a277fd6e5324e409bedf3dbed5c43ba60068ea32`  
		Last Modified: Wed, 18 Jan 2017 04:03:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4a371a8a1dceb7b35906c9f2f02b0362a786ee71f93c7cf8271cd122049d92`  
		Last Modified: Wed, 18 Jan 2017 04:03:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.1`

```console
$ docker pull influxdb@sha256:655d812f7940d355b012dfa232583b8d4ebac4440f96c4b6af7046a94f3f5557
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85434920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5a0d6c6fcb196c037b068bce4c93e70f3104e2ddb41abdd1c2d029e3b88f92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:29 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 17 Jan 2017 00:46:32 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:33 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:33 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:34 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f89350750a441917aee6382cfaf358e4afa3eecc44c42711c1f2bd3ab99307f`  
		Last Modified: Wed, 18 Jan 2017 04:03:19 GMT  
		Size: 15.5 MB (15531108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b8cf3516477b090989ebd3a277fd6e5324e409bedf3dbed5c43ba60068ea32`  
		Last Modified: Wed, 18 Jan 2017 04:03:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4a371a8a1dceb7b35906c9f2f02b0362a786ee71f93c7cf8271cd122049d92`  
		Last Modified: Wed, 18 Jan 2017 04:03:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:655d812f7940d355b012dfa232583b8d4ebac4440f96c4b6af7046a94f3f5557
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85434920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5a0d6c6fcb196c037b068bce4c93e70f3104e2ddb41abdd1c2d029e3b88f92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:29 GMT
ENV INFLUXDB_VERSION=1.1.1
# Tue, 17 Jan 2017 00:46:32 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:33 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:33 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:34 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f89350750a441917aee6382cfaf358e4afa3eecc44c42711c1f2bd3ab99307f`  
		Last Modified: Wed, 18 Jan 2017 04:03:19 GMT  
		Size: 15.5 MB (15531108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b8cf3516477b090989ebd3a277fd6e5324e409bedf3dbed5c43ba60068ea32`  
		Last Modified: Wed, 18 Jan 2017 04:03:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4a371a8a1dceb7b35906c9f2f02b0362a786ee71f93c7cf8271cd122049d92`  
		Last Modified: Wed, 18 Jan 2017 04:03:13 GMT  
		Size: 185.0 B  
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
$ docker pull influxdb@sha256:d7e69289a9b70ce7dc3fa4c362d05e0c3f65ae33c8c1705e5037cc60f9f90783
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0-rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87169794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4a1002535d2bf6b083faaeaca1bcb2d3c9a6b04656be0957ee689cbc3d4d6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 00:46:35 GMT
ENV INFLUXDB_VERSION=1.2.0~rc1
# Tue, 17 Jan 2017 00:46:40 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 00:46:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 17 Jan 2017 00:46:41 GMT
EXPOSE 8086/tcp
# Tue, 17 Jan 2017 00:46:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 17 Jan 2017 00:46:42 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:46:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:46:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33702240d7c7003838d90263c79c23346f84505d5cd421f461ff590893c4d85a`  
		Last Modified: Wed, 18 Jan 2017 04:04:14 GMT  
		Size: 17.3 MB (17265986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a75e22951fc438b1e7fb3d5bfd673f53f20a8bb066ee1be3b24ac7a595aaeb8`  
		Last Modified: Wed, 18 Jan 2017 04:04:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323e8674aed602ea530508f93541ca08f55b481d050fe48d59528c228a96bed9`  
		Last Modified: Wed, 18 Jan 2017 04:04:09 GMT  
		Size: 183.0 B  
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
