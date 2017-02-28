<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.4`](#influxdb114)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.4-alpine`](#influxdb114-alpine)
-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.0`](#influxdb120)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.0-alpine`](#influxdb120-alpine)
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
$ docker pull influxdb@sha256:d5ae237157c6ae4df04342b4a167becc10afe6ca3084f5efafb8dd005b78326f
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12908644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc311be9ea11f6c6bdbcdf07dd5c3283dcff3a01ca3bee5d8cbe67b838476a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 00:08:41 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 28 Feb 2017 00:08:51 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 28 Feb 2017 00:08:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:08:52 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:08:52 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:08:53 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:08:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155f962b1b0a29a465aa5fb76f06e98e118637a1ee5c28c5755fbad4c35aea2b`  
		Last Modified: Tue, 28 Feb 2017 00:41:18 GMT  
		Size: 11.0 MB (11006176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37356669d3d80433ba2b09bd9867ffc0ecb5850c430424f25add5fad004318b9`  
		Last Modified: Tue, 28 Feb 2017 00:41:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb09411542459693bdee3d6d737dbbd659ec0fb85f97f5617c6764324c457b21`  
		Last Modified: Tue, 28 Feb 2017 00:41:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.4-alpine`

```console
$ docker pull influxdb@sha256:d5ae237157c6ae4df04342b4a167becc10afe6ca3084f5efafb8dd005b78326f
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12908644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc311be9ea11f6c6bdbcdf07dd5c3283dcff3a01ca3bee5d8cbe67b838476a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 00:08:41 GMT
ENV INFLUXDB_VERSION=1.1.4
# Tue, 28 Feb 2017 00:08:51 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 28 Feb 2017 00:08:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:08:52 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:08:52 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:08:53 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:08:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155f962b1b0a29a465aa5fb76f06e98e118637a1ee5c28c5755fbad4c35aea2b`  
		Last Modified: Tue, 28 Feb 2017 00:41:18 GMT  
		Size: 11.0 MB (11006176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37356669d3d80433ba2b09bd9867ffc0ecb5850c430424f25add5fad004318b9`  
		Last Modified: Tue, 28 Feb 2017 00:41:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb09411542459693bdee3d6d737dbbd659ec0fb85f97f5617c6764324c457b21`  
		Last Modified: Tue, 28 Feb 2017 00:41:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:ed7a548766b36476ec69276d12217919ed62812b29cd859232d90c19abbf0b98
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87181915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646d62fcef78f6fe222bf0be636682d6c397f31aa96e38fb9b32dd5f79347d9e`
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
# Tue, 28 Feb 2017 00:08:54 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 28 Feb 2017 00:09:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:09:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:09:02 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:09:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:09:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:09:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:09:04 GMT
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
	-	`sha256:df23245651af22374af5d0d0c3fe8a9bdd194c3157e1da8301ce3b9686cb4504`  
		Last Modified: Tue, 28 Feb 2017 00:42:01 GMT  
		Size: 17.3 MB (17275389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da787e78e31fba49812a61592aebae864bb6abfb6ba317ab871668417b1308`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1abfdd960faf6e99692e70b92005c79e32b52ddb1d8fcc56da4ccdb36e088f`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0`

```console
$ docker pull influxdb@sha256:ed7a548766b36476ec69276d12217919ed62812b29cd859232d90c19abbf0b98
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87181915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646d62fcef78f6fe222bf0be636682d6c397f31aa96e38fb9b32dd5f79347d9e`
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
# Tue, 28 Feb 2017 00:08:54 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 28 Feb 2017 00:09:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:09:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:09:02 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:09:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:09:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:09:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:09:04 GMT
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
	-	`sha256:df23245651af22374af5d0d0c3fe8a9bdd194c3157e1da8301ce3b9686cb4504`  
		Last Modified: Tue, 28 Feb 2017 00:42:01 GMT  
		Size: 17.3 MB (17275389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da787e78e31fba49812a61592aebae864bb6abfb6ba317ab871668417b1308`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1abfdd960faf6e99692e70b92005c79e32b52ddb1d8fcc56da4ccdb36e088f`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:ed7a548766b36476ec69276d12217919ed62812b29cd859232d90c19abbf0b98
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87181915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646d62fcef78f6fe222bf0be636682d6c397f31aa96e38fb9b32dd5f79347d9e`
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
# Tue, 28 Feb 2017 00:08:54 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 28 Feb 2017 00:09:01 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 00:09:02 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 28 Feb 2017 00:09:02 GMT
EXPOSE 8086/tcp
# Tue, 28 Feb 2017 00:09:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 28 Feb 2017 00:09:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 28 Feb 2017 00:09:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 00:09:04 GMT
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
	-	`sha256:df23245651af22374af5d0d0c3fe8a9bdd194c3157e1da8301ce3b9686cb4504`  
		Last Modified: Tue, 28 Feb 2017 00:42:01 GMT  
		Size: 17.3 MB (17275389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da787e78e31fba49812a61592aebae864bb6abfb6ba317ab871668417b1308`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1abfdd960faf6e99692e70b92005c79e32b52ddb1d8fcc56da4ccdb36e088f`  
		Last Modified: Tue, 28 Feb 2017 00:41:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.0-alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:bc540474acadea623eb81ea2b70f26dfc326b8a64f54f0f54979766c843cc53d
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14123685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a859cac1ae506434d8c82c1bdf98736f6b2e55e0e0547be65679a97d2659841`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 24 Jan 2017 17:36:52 GMT
ENV INFLUXDB_VERSION=1.2.0
# Tue, 24 Jan 2017 17:36:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 24 Jan 2017 17:36:58 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 24 Jan 2017 17:36:59 GMT
EXPOSE 8086/tcp
# Tue, 24 Jan 2017 17:36:59 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Jan 2017 17:37:00 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 24 Jan 2017 17:37:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 17:37:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82140f70046588622c146e8d487c400bdfbe598930ea710e57cec2ef3934ccc6`  
		Last Modified: Tue, 24 Jan 2017 17:39:12 GMT  
		Size: 12.2 MB (12221216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a7d1ef403888f0e60e626ece4cf2b2cfbfdb4328c9ed24fe21bf41db87f0`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5ce638a4a48566852a5d828f7a7bcfa69d91d4304cbe03a3baf3b97d66361`  
		Last Modified: Tue, 24 Jan 2017 17:39:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
