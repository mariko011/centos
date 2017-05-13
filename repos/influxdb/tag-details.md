<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.1`](#influxdb11)
-	[`influxdb:1.1.5`](#influxdb115)
-	[`influxdb:1.1-alpine`](#influxdb11-alpine)
-	[`influxdb:1.1.5-alpine`](#influxdb115-alpine)
-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.4`](#influxdb124)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.4-alpine`](#influxdb124-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.1`

```console
$ docker pull influxdb@sha256:9b3d02d9afd8011c5082e5440acf93d27130889635036fa8188d9273c1748670
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87847985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fc468775af6854ef043562d61b3d5882639e015c4d2872cfd25ab22c6b07d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:17:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 17:16:23 GMT
ENV INFLUXDB_VERSION=1.1.5
# Tue, 09 May 2017 17:16:29 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 09 May 2017 17:16:30 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 17:16:31 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 17:16:32 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 17:16:33 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 09 May 2017 17:16:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 17:16:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006066d0079f93a23bbec594b6d3c4360352cb33827f3e577b4ae1b66c2250fa`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba7ef7515396645b275dcee800673b859670e1487eafcec2516e76a5ac7416`  
		Last Modified: Tue, 09 May 2017 22:56:00 GMT  
		Size: 16.0 MB (15989334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dc9e0f7fc7b2f5747f37a995e3880b7f3cebb4161b45eccb4539645ee0a126`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba3493088632fb6303217d4e30cb769e9589c140355a52051390951fa6d876`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.5`

```console
$ docker pull influxdb@sha256:9b3d02d9afd8011c5082e5440acf93d27130889635036fa8188d9273c1748670
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87847985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fc468775af6854ef043562d61b3d5882639e015c4d2872cfd25ab22c6b07d6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:17:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 17:16:23 GMT
ENV INFLUXDB_VERSION=1.1.5
# Tue, 09 May 2017 17:16:29 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 09 May 2017 17:16:30 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 17:16:31 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 17:16:32 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 17:16:33 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 09 May 2017 17:16:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 17:16:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006066d0079f93a23bbec594b6d3c4360352cb33827f3e577b4ae1b66c2250fa`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba7ef7515396645b275dcee800673b859670e1487eafcec2516e76a5ac7416`  
		Last Modified: Tue, 09 May 2017 22:56:00 GMT  
		Size: 16.0 MB (15989334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dc9e0f7fc7b2f5747f37a995e3880b7f3cebb4161b45eccb4539645ee0a126`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba3493088632fb6303217d4e30cb769e9589c140355a52051390951fa6d876`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:0edab4994addd87cba210399adb68fdf0bdd54c9e4ade2e6b88e65699d6d02c7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13322235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152fe503b560f1767e8d163090fd7c654d5f0ae831dc82cb785691d0ce1c1dca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:43:33 GMT
ENV INFLUXDB_VERSION=1.1.5
# Wed, 10 May 2017 21:43:40 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 10 May 2017 21:43:42 GMT
EXPOSE 8086/tcp
# Wed, 10 May 2017 21:43:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 10 May 2017 21:43:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 10 May 2017 21:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:43:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d199c255e281933f40d8edbc271c2547a23c71d33ea7a05ecbeeefd49a63c`  
		Last Modified: Sat, 13 May 2017 06:36:28 GMT  
		Size: 11.4 MB (11353766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0967e79c1acf62622ddc62970d89dc480746fd0b4f33807bdd955ef8d7dc5f02`  
		Last Modified: Sat, 13 May 2017 06:36:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd597569a2cb98cc9f5e5eede57df8941c6c3e15c075f92911a365250c12a669`  
		Last Modified: Sat, 13 May 2017 06:36:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.5-alpine`

```console
$ docker pull influxdb@sha256:0edab4994addd87cba210399adb68fdf0bdd54c9e4ade2e6b88e65699d6d02c7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13322235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152fe503b560f1767e8d163090fd7c654d5f0ae831dc82cb785691d0ce1c1dca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:43:33 GMT
ENV INFLUXDB_VERSION=1.1.5
# Wed, 10 May 2017 21:43:40 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 10 May 2017 21:43:42 GMT
EXPOSE 8086/tcp
# Wed, 10 May 2017 21:43:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 10 May 2017 21:43:44 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 10 May 2017 21:43:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:43:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93d199c255e281933f40d8edbc271c2547a23c71d33ea7a05ecbeeefd49a63c`  
		Last Modified: Sat, 13 May 2017 06:36:28 GMT  
		Size: 11.4 MB (11353766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0967e79c1acf62622ddc62970d89dc480746fd0b4f33807bdd955ef8d7dc5f02`  
		Last Modified: Sat, 13 May 2017 06:36:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd597569a2cb98cc9f5e5eede57df8941c6c3e15c075f92911a365250c12a669`  
		Last Modified: Sat, 13 May 2017 06:36:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:1ae55eb503d01a1883cc60f3b82930bc128f193c72b856162c525b80e7844432
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97153f4e3b1fccb1cab687277688a2c76a68e4f37bb138ad04bf412c7f5d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 21:17:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 22:53:51 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:53:59 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 09 May 2017 22:54:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:54:12 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:54:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:54:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 09 May 2017 22:54:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:54:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f494ab74b6972a882297ba95baa90b048faa99e7e533a54485efedaf8377c7`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72c99d035828fb5351e6ff10347e699b702e508546b5069029a1c015c69ffa5`  
		Last Modified: Tue, 09 May 2017 22:57:39 GMT  
		Size: 17.5 MB (17513067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b16c2e370562a00cd722a43f64767436b14291b0a249f2f4cf05b1c84443f4`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43033fefcb177d6b563d4c896f0bb0a03d7acf2565fd351fd73d21eb6f7b1ff`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:1ae55eb503d01a1883cc60f3b82930bc128f193c72b856162c525b80e7844432
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97153f4e3b1fccb1cab687277688a2c76a68e4f37bb138ad04bf412c7f5d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 21:17:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 22:53:51 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:53:59 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 09 May 2017 22:54:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:54:12 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:54:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:54:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 09 May 2017 22:54:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:54:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f494ab74b6972a882297ba95baa90b048faa99e7e533a54485efedaf8377c7`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72c99d035828fb5351e6ff10347e699b702e508546b5069029a1c015c69ffa5`  
		Last Modified: Tue, 09 May 2017 22:57:39 GMT  
		Size: 17.5 MB (17513067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b16c2e370562a00cd722a43f64767436b14291b0a249f2f4cf05b1c84443f4`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43033fefcb177d6b563d4c896f0bb0a03d7acf2565fd351fd73d21eb6f7b1ff`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:1ae55eb503d01a1883cc60f3b82930bc128f193c72b856162c525b80e7844432
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97153f4e3b1fccb1cab687277688a2c76a68e4f37bb138ad04bf412c7f5d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 21:17:06 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 22:53:51 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:53:59 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 09 May 2017 22:54:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:54:12 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:54:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:54:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 09 May 2017 22:54:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:54:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f494ab74b6972a882297ba95baa90b048faa99e7e533a54485efedaf8377c7`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72c99d035828fb5351e6ff10347e699b702e508546b5069029a1c015c69ffa5`  
		Last Modified: Tue, 09 May 2017 22:57:39 GMT  
		Size: 17.5 MB (17513067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b16c2e370562a00cd722a43f64767436b14291b0a249f2f4cf05b1c84443f4`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43033fefcb177d6b563d4c896f0bb0a03d7acf2565fd351fd73d21eb6f7b1ff`  
		Last Modified: Tue, 09 May 2017 22:57:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:c45267cfaaab266675405b77a784241fc863b745a6f76e448179f0f34533a7ed
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca471526300ad043d0477d17125337177649930bb5fc216b4ae15813d28bf8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:44:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 10 May 2017 21:44:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:44:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 10 May 2017 21:44:13 GMT
EXPOSE 8086/tcp
# Wed, 10 May 2017 21:44:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 10 May 2017 21:44:15 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 10 May 2017 21:44:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:44:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572727250f45503135a5a95fbfb6be02260657e65f96d021a59b19fcbaa07bc`  
		Last Modified: Sat, 13 May 2017 06:38:25 GMT  
		Size: 12.4 MB (12430392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f81226b6cec46ce959523401b66526d1d1694b5b5380c244b6c785a8ccf074`  
		Last Modified: Sat, 13 May 2017 06:38:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4286d613dc9ab05ad31f65bce1df532a6c0288ad3be6f5166f877dbece1d51b`  
		Last Modified: Sat, 13 May 2017 06:38:23 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:c45267cfaaab266675405b77a784241fc863b745a6f76e448179f0f34533a7ed
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca471526300ad043d0477d17125337177649930bb5fc216b4ae15813d28bf8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:44:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 10 May 2017 21:44:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:44:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 10 May 2017 21:44:13 GMT
EXPOSE 8086/tcp
# Wed, 10 May 2017 21:44:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 10 May 2017 21:44:15 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 10 May 2017 21:44:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:44:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572727250f45503135a5a95fbfb6be02260657e65f96d021a59b19fcbaa07bc`  
		Last Modified: Sat, 13 May 2017 06:38:25 GMT  
		Size: 12.4 MB (12430392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f81226b6cec46ce959523401b66526d1d1694b5b5380c244b6c785a8ccf074`  
		Last Modified: Sat, 13 May 2017 06:38:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4286d613dc9ab05ad31f65bce1df532a6c0288ad3be6f5166f877dbece1d51b`  
		Last Modified: Sat, 13 May 2017 06:38:23 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:c45267cfaaab266675405b77a784241fc863b745a6f76e448179f0f34533a7ed
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca471526300ad043d0477d17125337177649930bb5fc216b4ae15813d28bf8c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:44:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 10 May 2017 21:44:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:44:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 10 May 2017 21:44:13 GMT
EXPOSE 8086/tcp
# Wed, 10 May 2017 21:44:14 GMT
VOLUME [/var/lib/influxdb]
# Wed, 10 May 2017 21:44:15 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 10 May 2017 21:44:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:44:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572727250f45503135a5a95fbfb6be02260657e65f96d021a59b19fcbaa07bc`  
		Last Modified: Sat, 13 May 2017 06:38:25 GMT  
		Size: 12.4 MB (12430392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f81226b6cec46ce959523401b66526d1d1694b5b5380c244b6c785a8ccf074`  
		Last Modified: Sat, 13 May 2017 06:38:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4286d613dc9ab05ad31f65bce1df532a6c0288ad3be6f5166f877dbece1d51b`  
		Last Modified: Sat, 13 May 2017 06:38:23 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
