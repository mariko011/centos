<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:0.13`](#influxdb013)
-	[`influxdb:0.13.0`](#influxdb0130)
-	[`influxdb:0.13-alpine`](#influxdb013-alpine)
-	[`influxdb:0.13.0-alpine`](#influxdb0130-alpine)
-	[`influxdb:1.0`](#influxdb10)
-	[`influxdb:1.0.0`](#influxdb100)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.0-alpine`](#influxdb10-alpine)
-	[`influxdb:1.0.0-alpine`](#influxdb100-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:0.13`

```console
$ docker pull influxdb@sha256:5e17ab6c5833c39ea491b1e492551e17ded41042e40ac02cd33b70ee55d762c5
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88050492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de82f871b9768bc421b9980de88e4cdafd4deef1439a6c09427fc416b9fc44b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 31 Aug 2016 01:57:41 GMT
ENV INFLUXDB_VERSION=0.13.0
# Wed, 31 Aug 2016 01:57:43 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 31 Aug 2016 01:57:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 31 Aug 2016 01:57:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Wed, 31 Aug 2016 01:57:44 GMT
VOLUME [/var/lib/influxdb]
# Wed, 31 Aug 2016 01:57:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 31 Aug 2016 01:57:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 01:57:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17b66d31ac167c747ed0dd333571a2eeb1f8c68b6da215047ac3f6a3c59729`  
		Last Modified: Wed, 07 Sep 2016 21:47:02 GMT  
		Size: 18.1 MB (18148784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32cde139b3b7df0b02efcb8d9fbaab3cfb709b2f0fe458073e98bbf6ed446f1`  
		Last Modified: Wed, 07 Sep 2016 21:46:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb56c36abe558db81bd30e4a4f30a8c47ef404f6aa9678cd92a8aee05c718b49`  
		Last Modified: Wed, 07 Sep 2016 21:46:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0`

```console
$ docker pull influxdb@sha256:5e17ab6c5833c39ea491b1e492551e17ded41042e40ac02cd33b70ee55d762c5
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88050492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de82f871b9768bc421b9980de88e4cdafd4deef1439a6c09427fc416b9fc44b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 31 Aug 2016 01:57:41 GMT
ENV INFLUXDB_VERSION=0.13.0
# Wed, 31 Aug 2016 01:57:43 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 31 Aug 2016 01:57:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 31 Aug 2016 01:57:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Wed, 31 Aug 2016 01:57:44 GMT
VOLUME [/var/lib/influxdb]
# Wed, 31 Aug 2016 01:57:45 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 31 Aug 2016 01:57:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 01:57:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17b66d31ac167c747ed0dd333571a2eeb1f8c68b6da215047ac3f6a3c59729`  
		Last Modified: Wed, 07 Sep 2016 21:47:02 GMT  
		Size: 18.1 MB (18148784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32cde139b3b7df0b02efcb8d9fbaab3cfb709b2f0fe458073e98bbf6ed446f1`  
		Last Modified: Wed, 07 Sep 2016 21:46:54 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb56c36abe558db81bd30e4a4f30a8c47ef404f6aa9678cd92a8aee05c718b49`  
		Last Modified: Wed, 07 Sep 2016 21:46:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13-alpine`

```console
$ docker pull influxdb@sha256:1513153ce3b6b732ef4853f152a33f57bc895cbd0f5c1d2f7099d6d2b42fd828
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15839319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812367d8a86249b00ac1bc5a49a2d318bc47387b9a90a7640409c6fb8072479e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:01 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 20 Sep 2016 00:16:14 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:16:14 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:16:15 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:16:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:16:16 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:16:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19689891bccfb669ffefeef0b0a57b9e6f0b2b7a87eba3fe42ab44eb46d8fe4c`  
		Last Modified: Tue, 20 Sep 2016 00:16:33 GMT  
		Size: 13.5 MB (13527848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaa8530a710195b899a361b0ab6db4b8ae1ce8743b0f3dbbfbc034c3481788b`  
		Last Modified: Tue, 20 Sep 2016 00:16:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b313128057ef10d82fd2945b7a2bd79a70eb2a4be18a02a9b165b543d61903`  
		Last Modified: Tue, 20 Sep 2016 00:16:24 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0-alpine`

```console
$ docker pull influxdb@sha256:1513153ce3b6b732ef4853f152a33f57bc895cbd0f5c1d2f7099d6d2b42fd828
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15839319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812367d8a86249b00ac1bc5a49a2d318bc47387b9a90a7640409c6fb8072479e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:01 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 20 Sep 2016 00:16:14 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:16:14 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:16:15 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:16:15 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:16:16 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:16:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19689891bccfb669ffefeef0b0a57b9e6f0b2b7a87eba3fe42ab44eb46d8fe4c`  
		Last Modified: Tue, 20 Sep 2016 00:16:33 GMT  
		Size: 13.5 MB (13527848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaa8530a710195b899a361b0ab6db4b8ae1ce8743b0f3dbbfbc034c3481788b`  
		Last Modified: Tue, 20 Sep 2016 00:16:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b313128057ef10d82fd2945b7a2bd79a70eb2a4be18a02a9b165b543d61903`  
		Last Modified: Tue, 20 Sep 2016 00:16:24 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0`

```console
$ docker pull influxdb@sha256:700370f130b077051c034a54815d183e20ffa8d214111b60a2c43079060491a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87680219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae86b95bcd584cf038dd229f284ebc5f7ed12cca0cb21a5943f45701f2f2b2a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:46:23 GMT
ENV INFLUXDB_VERSION=1.0.0
# Wed, 07 Sep 2016 21:46:30 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:46:31 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 07 Sep 2016 21:46:31 GMT
EXPOSE 8086/tcp
# Wed, 07 Sep 2016 21:46:32 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Sep 2016 21:46:32 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:46:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:46:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20ba9584b3489507cdc7c2cdfbc8baf074cc2526822a16d7a754ba584e07580`  
		Last Modified: Wed, 07 Sep 2016 21:47:47 GMT  
		Size: 17.8 MB (17778512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14723075fdbe94c87d585ae4a9219716cf38fabf67ea79fe81a0f5cc73154c9c`  
		Last Modified: Wed, 07 Sep 2016 21:47:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092dea79a0aeaf55e5587ccc1c8220bfc473f4bdd91ab559123794e289050679`  
		Last Modified: Wed, 07 Sep 2016 21:47:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0`

```console
$ docker pull influxdb@sha256:700370f130b077051c034a54815d183e20ffa8d214111b60a2c43079060491a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87680219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae86b95bcd584cf038dd229f284ebc5f7ed12cca0cb21a5943f45701f2f2b2a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:46:23 GMT
ENV INFLUXDB_VERSION=1.0.0
# Wed, 07 Sep 2016 21:46:30 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:46:31 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 07 Sep 2016 21:46:31 GMT
EXPOSE 8086/tcp
# Wed, 07 Sep 2016 21:46:32 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Sep 2016 21:46:32 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:46:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:46:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20ba9584b3489507cdc7c2cdfbc8baf074cc2526822a16d7a754ba584e07580`  
		Last Modified: Wed, 07 Sep 2016 21:47:47 GMT  
		Size: 17.8 MB (17778512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14723075fdbe94c87d585ae4a9219716cf38fabf67ea79fe81a0f5cc73154c9c`  
		Last Modified: Wed, 07 Sep 2016 21:47:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092dea79a0aeaf55e5587ccc1c8220bfc473f4bdd91ab559123794e289050679`  
		Last Modified: Wed, 07 Sep 2016 21:47:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:700370f130b077051c034a54815d183e20ffa8d214111b60a2c43079060491a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87680219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae86b95bcd584cf038dd229f284ebc5f7ed12cca0cb21a5943f45701f2f2b2a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:18 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:46:23 GMT
ENV INFLUXDB_VERSION=1.0.0
# Wed, 07 Sep 2016 21:46:30 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:46:31 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 07 Sep 2016 21:46:31 GMT
EXPOSE 8086/tcp
# Wed, 07 Sep 2016 21:46:32 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Sep 2016 21:46:32 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:46:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:46:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb171ee4d0b36bdbf042b750841ac151b30674348314de3d762aeeaaf3d69bb`  
		Last Modified: Tue, 30 Aug 2016 21:59:05 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20ba9584b3489507cdc7c2cdfbc8baf074cc2526822a16d7a754ba584e07580`  
		Last Modified: Wed, 07 Sep 2016 21:47:47 GMT  
		Size: 17.8 MB (17778512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14723075fdbe94c87d585ae4a9219716cf38fabf67ea79fe81a0f5cc73154c9c`  
		Last Modified: Wed, 07 Sep 2016 21:47:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092dea79a0aeaf55e5587ccc1c8220bfc473f4bdd91ab559123794e289050679`  
		Last Modified: Wed, 07 Sep 2016 21:47:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0-alpine`

```console
$ docker pull influxdb@sha256:92b657e992a0b9fe941e9c299eb7ec829f467a1e9217f86627ddf541b4d23ce0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15580677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d249fce230d186431f8b0040edb556f085bade82e302e2d27d7d7f548a175c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:50 GMT
ENV INFLUXDB_VERSION=1.0.0
# Tue, 20 Sep 2016 00:17:01 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:17:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:17:02 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:17:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:17:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:17:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd8338a1ee2d4a64873d2842b4513e8dfbea4f4425ebe21cfa7f665535fd94`  
		Last Modified: Tue, 20 Sep 2016 00:17:18 GMT  
		Size: 13.3 MB (13269206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d2f8e4c1f087f3d2b4b30f68517a0baaa10d5a59a95272f2a1f43e61300906`  
		Last Modified: Tue, 20 Sep 2016 00:17:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e50789e54f0545cfc22adb18c13af0624ef758be6ca359f9c6cb22e306add`  
		Last Modified: Tue, 20 Sep 2016 00:17:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.0-alpine`

```console
$ docker pull influxdb@sha256:92b657e992a0b9fe941e9c299eb7ec829f467a1e9217f86627ddf541b4d23ce0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15580677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d249fce230d186431f8b0040edb556f085bade82e302e2d27d7d7f548a175c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:50 GMT
ENV INFLUXDB_VERSION=1.0.0
# Tue, 20 Sep 2016 00:17:01 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:17:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:17:02 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:17:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:17:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:17:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd8338a1ee2d4a64873d2842b4513e8dfbea4f4425ebe21cfa7f665535fd94`  
		Last Modified: Tue, 20 Sep 2016 00:17:18 GMT  
		Size: 13.3 MB (13269206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d2f8e4c1f087f3d2b4b30f68517a0baaa10d5a59a95272f2a1f43e61300906`  
		Last Modified: Tue, 20 Sep 2016 00:17:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e50789e54f0545cfc22adb18c13af0624ef758be6ca359f9c6cb22e306add`  
		Last Modified: Tue, 20 Sep 2016 00:17:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:92b657e992a0b9fe941e9c299eb7ec829f467a1e9217f86627ddf541b4d23ce0
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15580677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d249fce230d186431f8b0040edb556f085bade82e302e2d27d7d7f548a175c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:16:50 GMT
ENV INFLUXDB_VERSION=1.0.0
# Tue, 20 Sep 2016 00:17:01 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 20 Sep 2016 00:17:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 20 Sep 2016 00:17:02 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 20 Sep 2016 00:17:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 20 Sep 2016 00:17:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 20 Sep 2016 00:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Sep 2016 00:17:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd8338a1ee2d4a64873d2842b4513e8dfbea4f4425ebe21cfa7f665535fd94`  
		Last Modified: Tue, 20 Sep 2016 00:17:18 GMT  
		Size: 13.3 MB (13269206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d2f8e4c1f087f3d2b4b30f68517a0baaa10d5a59a95272f2a1f43e61300906`  
		Last Modified: Tue, 20 Sep 2016 00:17:12 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e50789e54f0545cfc22adb18c13af0624ef758be6ca359f9c6cb22e306add`  
		Last Modified: Tue, 20 Sep 2016 00:17:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
