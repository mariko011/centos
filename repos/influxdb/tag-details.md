<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.4`](#influxdb114)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.4-alpine`](#influxdb114-alpine)
-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.1`](#influxdb121)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.1-alpine`](#influxdb121-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:9b87eacfba6a2671337511e4791c18cfdfec948577e58576e32126a7f2496ce3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85468658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b4d8c5945d76e964660d0f0be60a76b21bba04650d15293d7f976057bef820`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 00:08:26 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 28 Feb 2017 00:08:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:08:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:08:36 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:08:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:08:37 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:08:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:08:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28007e9c9c08b73d9477196dfc9cb5513d56d8dcc833711a5ab85a22a4f1993a`  
		Last Modified: Tue, 28 Feb 2017 00:40:36 GMT  
		Size: 15.6 MB (15562131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f57adb7273850dafb40932042e9ba74d6385e8440cd22346875ed58a41c4f54`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c626cba6ecc11dca644e9ce2b9fb47732fa3bed9c6d687284458c45b63667`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4`

```console
$ docker pull influxdb@sha256:9b87eacfba6a2671337511e4791c18cfdfec948577e58576e32126a7f2496ce3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85468658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b4d8c5945d76e964660d0f0be60a76b21bba04650d15293d7f976057bef820`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 00:08:26 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 28 Feb 2017 00:08:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:08:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:08:36 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:08:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:08:37 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:08:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:08:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28007e9c9c08b73d9477196dfc9cb5513d56d8dcc833711a5ab85a22a4f1993a`  
		Last Modified: Tue, 28 Feb 2017 00:40:36 GMT  
		Size: 15.6 MB (15562131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f57adb7273850dafb40932042e9ba74d6385e8440cd22346875ed58a41c4f54`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731c626cba6ecc11dca644e9ce2b9fb47732fa3bed9c6d687284458c45b63667`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:63a7f42869ba6e1b0517cf929667f21fb7d9da8ed1bcaed2e8577f130da8ec19
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12911866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4accaa9f413dbd43796689d78254e3f828d96b8bd30ce00beda98c7a4e0134`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:59:47 GMT
ENV INFLUXDB_VERSION=1.1.4
# Fri, 03 Mar 2017 21:59:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 21:59:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Mar 2017 21:59:56 GMT
EXPOSE 8086/tcp
# Fri, 03 Mar 2017 21:59:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Mar 2017 21:59:57 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 03 Mar 2017 21:59:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 21:59:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784f920610fad3b35fb99aefda2334f5567b9a402bd3b87f07c2571cc683fdf`  
		Last Modified: Sat, 04 Mar 2017 05:06:53 GMT  
		Size: 11.0 MB (11006188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad40f35dfd2a8a2e597b4b41ab28e055683db5cd2b53789ebb2c0496822106c`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a607c1a27564677f1209b06dc5284dd95a2eddb9527e95046aad79a5f5372f`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4-alpine`

```console
$ docker pull influxdb@sha256:63a7f42869ba6e1b0517cf929667f21fb7d9da8ed1bcaed2e8577f130da8ec19
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12911866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4accaa9f413dbd43796689d78254e3f828d96b8bd30ce00beda98c7a4e0134`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:59:47 GMT
ENV INFLUXDB_VERSION=1.1.4
# Fri, 03 Mar 2017 21:59:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 03 Mar 2017 21:59:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 03 Mar 2017 21:59:56 GMT
EXPOSE 8086/tcp
# Fri, 03 Mar 2017 21:59:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 03 Mar 2017 21:59:57 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 03 Mar 2017 21:59:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 21:59:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c784f920610fad3b35fb99aefda2334f5567b9a402bd3b87f07c2571cc683fdf`  
		Last Modified: Sat, 04 Mar 2017 05:06:53 GMT  
		Size: 11.0 MB (11006188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad40f35dfd2a8a2e597b4b41ab28e055683db5cd2b53789ebb2c0496822106c`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a607c1a27564677f1209b06dc5284dd95a2eddb9527e95046aad79a5f5372f`  
		Last Modified: Sat, 04 Mar 2017 05:06:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:b2cd598b59483ab442a924a92bc018105f3ba5a2b9067dd5d2acd4f576afc772
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87197949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476431f6e6f17eefb1cf2ad4d5d5f07c9c3e28d3184937a2b29428acb31724c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 08 Mar 2017 22:36:54 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:02 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 Mar 2017 22:37:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:03 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:03 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:04 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c4889232c8f240a859f91772caa407b63d2761540280a465e82be726232ecf`  
		Last Modified: Wed, 08 Mar 2017 22:39:10 GMT  
		Size: 17.3 MB (17291424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885427d095af053718b03424a77f7c0d6ef03cdba33f9c73f271aa89f418613b`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4178d198a256ef0dd059a9492a93a8a9badf20f0b290fa71b404d2d1afddfb1`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.1`

```console
$ docker pull influxdb@sha256:b2cd598b59483ab442a924a92bc018105f3ba5a2b9067dd5d2acd4f576afc772
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87197949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476431f6e6f17eefb1cf2ad4d5d5f07c9c3e28d3184937a2b29428acb31724c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 08 Mar 2017 22:36:54 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:02 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 Mar 2017 22:37:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:03 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:03 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:04 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c4889232c8f240a859f91772caa407b63d2761540280a465e82be726232ecf`  
		Last Modified: Wed, 08 Mar 2017 22:39:10 GMT  
		Size: 17.3 MB (17291424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885427d095af053718b03424a77f7c0d6ef03cdba33f9c73f271aa89f418613b`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4178d198a256ef0dd059a9492a93a8a9badf20f0b290fa71b404d2d1afddfb1`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:b2cd598b59483ab442a924a92bc018105f3ba5a2b9067dd5d2acd4f576afc772
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87197949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476431f6e6f17eefb1cf2ad4d5d5f07c9c3e28d3184937a2b29428acb31724c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 08 Mar 2017 22:36:54 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:02 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 Mar 2017 22:37:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:03 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:03 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:04 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c4889232c8f240a859f91772caa407b63d2761540280a465e82be726232ecf`  
		Last Modified: Wed, 08 Mar 2017 22:39:10 GMT  
		Size: 17.3 MB (17291424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885427d095af053718b03424a77f7c0d6ef03cdba33f9c73f271aa89f418613b`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4178d198a256ef0dd059a9492a93a8a9badf20f0b290fa71b404d2d1afddfb1`  
		Last Modified: Wed, 08 Mar 2017 22:39:03 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:3e3c12aa740a3c0ba00843591360274b9750886a1b11721381b9f278562454d9
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33dbd610be0a85b52a36f9320819c9bb3bd81f96b0a773bef55a15e33006118d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 08 Mar 2017 22:37:05 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:27 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 08 Mar 2017 22:37:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:28 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:29 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a789ac57e045b87fed0c8c31603152d6cfcc4839332c902b493c51532a1860e6`  
		Last Modified: Wed, 08 Mar 2017 22:40:13 GMT  
		Size: 12.2 MB (12234082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0487cbb471ca509a4e6738d706f284a9bbbd5eefa646f4c9762a09c101fb8bc7`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ba2e7bb1542bccb2d81f1153a28e3e02aac2ce1a5e68bed551c8ead3c41aa`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.1-alpine`

```console
$ docker pull influxdb@sha256:3e3c12aa740a3c0ba00843591360274b9750886a1b11721381b9f278562454d9
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33dbd610be0a85b52a36f9320819c9bb3bd81f96b0a773bef55a15e33006118d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 08 Mar 2017 22:37:05 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:27 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 08 Mar 2017 22:37:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:28 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:29 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a789ac57e045b87fed0c8c31603152d6cfcc4839332c902b493c51532a1860e6`  
		Last Modified: Wed, 08 Mar 2017 22:40:13 GMT  
		Size: 12.2 MB (12234082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0487cbb471ca509a4e6738d706f284a9bbbd5eefa646f4c9762a09c101fb8bc7`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ba2e7bb1542bccb2d81f1153a28e3e02aac2ce1a5e68bed551c8ead3c41aa`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:3e3c12aa740a3c0ba00843591360274b9750886a1b11721381b9f278562454d9
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14139756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33dbd610be0a85b52a36f9320819c9bb3bd81f96b0a773bef55a15e33006118d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 08 Mar 2017 22:37:05 GMT
ENV INFLUXDB_VERSION=1.2.1
# Wed, 08 Mar 2017 22:37:27 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 08 Mar 2017 22:37:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 08 Mar 2017 22:37:28 GMT
EXPOSE 8086/tcp
# Wed, 08 Mar 2017 22:37:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 Mar 2017 22:37:29 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 08 Mar 2017 22:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Mar 2017 22:37:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a789ac57e045b87fed0c8c31603152d6cfcc4839332c902b493c51532a1860e6`  
		Last Modified: Wed, 08 Mar 2017 22:40:13 GMT  
		Size: 12.2 MB (12234082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0487cbb471ca509a4e6738d706f284a9bbbd5eefa646f4c9762a09c101fb8bc7`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473ba2e7bb1542bccb2d81f1153a28e3e02aac2ce1a5e68bed551c8ead3c41aa`  
		Last Modified: Wed, 08 Mar 2017 22:40:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
