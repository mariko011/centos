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
$ docker pull influxdb@sha256:96cde99c5d373f1223961d1af64e2487d2362a22362c0e6610d1935150ccb4a0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13259614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a399d903d9f4145899ef444127d61cfbcf7917ce3c661e53798d6d1164f97795`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 04 May 2017 21:58:45 GMT
ENV INFLUXDB_VERSION=1.1.5
# Thu, 04 May 2017 21:58:54 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 04 May 2017 21:58:55 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 04 May 2017 21:58:56 GMT
EXPOSE 8086/tcp
# Thu, 04 May 2017 21:58:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 04 May 2017 21:58:58 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Thu, 04 May 2017 21:58:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 May 2017 21:58:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ee120e159af55a6fee29c34fdb19e591737c9c4547e63bd376c8df75d1800`  
		Last Modified: Thu, 04 May 2017 22:00:10 GMT  
		Size: 11.4 MB (11353786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4928a11632cabfdae7aa61a4b75d1547609564ba8583f17c008d2890f727cfc2`  
		Last Modified: Thu, 04 May 2017 22:00:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e08202aa113ddf411b79f91daeebc8a362ea7818c96e9dd5ebba9956f61b`  
		Last Modified: Thu, 04 May 2017 22:00:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.5-alpine`

```console
$ docker pull influxdb@sha256:96cde99c5d373f1223961d1af64e2487d2362a22362c0e6610d1935150ccb4a0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13259614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a399d903d9f4145899ef444127d61cfbcf7917ce3c661e53798d6d1164f97795`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 04 May 2017 21:58:45 GMT
ENV INFLUXDB_VERSION=1.1.5
# Thu, 04 May 2017 21:58:54 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 04 May 2017 21:58:55 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 04 May 2017 21:58:56 GMT
EXPOSE 8086/tcp
# Thu, 04 May 2017 21:58:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 04 May 2017 21:58:58 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Thu, 04 May 2017 21:58:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 May 2017 21:58:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ee120e159af55a6fee29c34fdb19e591737c9c4547e63bd376c8df75d1800`  
		Last Modified: Thu, 04 May 2017 22:00:10 GMT  
		Size: 11.4 MB (11353786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4928a11632cabfdae7aa61a4b75d1547609564ba8583f17c008d2890f727cfc2`  
		Last Modified: Thu, 04 May 2017 22:00:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e08202aa113ddf411b79f91daeebc8a362ea7818c96e9dd5ebba9956f61b`  
		Last Modified: Thu, 04 May 2017 22:00:07 GMT  
		Size: 182.0 B  
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
$ docker pull influxdb@sha256:7f95ffc2dfc561971d21b36a56558d9f6e3fb9334b1e0c5db939b6e95cf119dd
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14336247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5db5185c1c8b6ec6fb9f7f18b20d0908e6bb00900702d2538f24db623aa3600`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 May 2017 22:54:52 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:54:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 09 May 2017 22:55:14 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:55:14 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:55:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:55:16 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 09 May 2017 22:55:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:55:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4c8b46e2c7a7c1ad59e44d459232b7abf69cc25019f9b2c7de8269ce54b2cb`  
		Last Modified: Tue, 09 May 2017 22:58:48 GMT  
		Size: 12.4 MB (12430416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49844dfadb673bf1dc37098174ea15f6f6bd4abd0d8b7a57178167dd32bfd21`  
		Last Modified: Tue, 09 May 2017 22:58:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256b81f687325cecda8755ec4fa3f1a37349088a6786a0bc254f4825fba459b8`  
		Last Modified: Tue, 09 May 2017 22:58:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:7f95ffc2dfc561971d21b36a56558d9f6e3fb9334b1e0c5db939b6e95cf119dd
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14336247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5db5185c1c8b6ec6fb9f7f18b20d0908e6bb00900702d2538f24db623aa3600`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 May 2017 22:54:52 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:54:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 09 May 2017 22:55:14 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:55:14 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:55:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:55:16 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 09 May 2017 22:55:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:55:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4c8b46e2c7a7c1ad59e44d459232b7abf69cc25019f9b2c7de8269ce54b2cb`  
		Last Modified: Tue, 09 May 2017 22:58:48 GMT  
		Size: 12.4 MB (12430416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49844dfadb673bf1dc37098174ea15f6f6bd4abd0d8b7a57178167dd32bfd21`  
		Last Modified: Tue, 09 May 2017 22:58:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256b81f687325cecda8755ec4fa3f1a37349088a6786a0bc254f4825fba459b8`  
		Last Modified: Tue, 09 May 2017 22:58:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:7f95ffc2dfc561971d21b36a56558d9f6e3fb9334b1e0c5db939b6e95cf119dd
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14336247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5db5185c1c8b6ec6fb9f7f18b20d0908e6bb00900702d2538f24db623aa3600`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 12 Apr 2017 18:58:25 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 May 2017 22:54:52 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 09 May 2017 22:54:58 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 09 May 2017 22:55:14 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 09 May 2017 22:55:14 GMT
EXPOSE 8086/tcp
# Tue, 09 May 2017 22:55:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 09 May 2017 22:55:16 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 09 May 2017 22:55:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 22:55:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827570184fa82dc6defc05bcf5838dba590096d8add32bb847191bd7232cfcba`  
		Last Modified: Wed, 12 Apr 2017 19:02:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4c8b46e2c7a7c1ad59e44d459232b7abf69cc25019f9b2c7de8269ce54b2cb`  
		Last Modified: Tue, 09 May 2017 22:58:48 GMT  
		Size: 12.4 MB (12430416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49844dfadb673bf1dc37098174ea15f6f6bd4abd0d8b7a57178167dd32bfd21`  
		Last Modified: Tue, 09 May 2017 22:58:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256b81f687325cecda8755ec4fa3f1a37349088a6786a0bc254f4825fba459b8`  
		Last Modified: Tue, 09 May 2017 22:58:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
