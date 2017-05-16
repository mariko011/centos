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
$ docker pull influxdb@sha256:9f5efb55c6ed3ce996f39f46b6baff764463da8a89d6a072dd048c761489673b
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87848010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1388e74d48d9506c4f350057a2154b4a4fad6473ad1bb57bdecec955b9a616`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:13:28 GMT
ENV INFLUXDB_VERSION=1.1.5
# Tue, 16 May 2017 20:13:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:14:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:14:13 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:14:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:14:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 16 May 2017 20:14:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:14:16 GMT
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cf347ac92e0d1ab3b319ee1d544f2101516f7b294551efca07524085ab875`  
		Last Modified: Tue, 16 May 2017 20:17:19 GMT  
		Size: 16.0 MB (15989363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525ee53068b29b7f0d162ed7cb947d3a2fc433efcf6ddbd3adb48c7e423554a4`  
		Last Modified: Tue, 16 May 2017 20:17:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396c779d04e1752bad3be1c684855edd5fc2f53893be3c151cd0cc6a967a8991`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.5`

```console
$ docker pull influxdb@sha256:9f5efb55c6ed3ce996f39f46b6baff764463da8a89d6a072dd048c761489673b
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87848010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1388e74d48d9506c4f350057a2154b4a4fad6473ad1bb57bdecec955b9a616`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:13:28 GMT
ENV INFLUXDB_VERSION=1.1.5
# Tue, 16 May 2017 20:13:52 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:14:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:14:13 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:14:13 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:14:14 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 16 May 2017 20:14:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:14:16 GMT
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8cf347ac92e0d1ab3b319ee1d544f2101516f7b294551efca07524085ab875`  
		Last Modified: Tue, 16 May 2017 20:17:19 GMT  
		Size: 16.0 MB (15989363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525ee53068b29b7f0d162ed7cb947d3a2fc433efcf6ddbd3adb48c7e423554a4`  
		Last Modified: Tue, 16 May 2017 20:17:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396c779d04e1752bad3be1c684855edd5fc2f53893be3c151cd0cc6a967a8991`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1-alpine`

```console
$ docker pull influxdb@sha256:4b542992a468e0dd6334e7cda2cf47f12bc5bfb6fc413d649c8307c0b15b27d7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13322239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab6193750208d8084290d08e950c914736b546cc62444432693dba6a33aa908`
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
# Tue, 16 May 2017 20:15:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:15:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:15:21 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:15:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:15:23 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 16 May 2017 20:15:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:15:44 GMT
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
	-	`sha256:fe53d0430d649cf822e68d6cfbf0f6d04fe24d5c6fe6782d0466b165523810b5`  
		Last Modified: Tue, 16 May 2017 20:18:13 GMT  
		Size: 11.4 MB (11353773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c79c962f1490b4817ed1877e42d6ac3e2f9bb4de7f4708765fe31e43f3d296b`  
		Last Modified: Tue, 16 May 2017 20:18:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb47556cf6d50f1829aefa930d1ddd36b5129ca4c93b23628c6f9a96b414e996`  
		Last Modified: Tue, 16 May 2017 20:18:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.5-alpine`

```console
$ docker pull influxdb@sha256:4b542992a468e0dd6334e7cda2cf47f12bc5bfb6fc413d649c8307c0b15b27d7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13322239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab6193750208d8084290d08e950c914736b546cc62444432693dba6a33aa908`
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
# Tue, 16 May 2017 20:15:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:15:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:15:21 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:15:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:15:23 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 16 May 2017 20:15:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:15:44 GMT
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
	-	`sha256:fe53d0430d649cf822e68d6cfbf0f6d04fe24d5c6fe6782d0466b165523810b5`  
		Last Modified: Tue, 16 May 2017 20:18:13 GMT  
		Size: 11.4 MB (11353773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c79c962f1490b4817ed1877e42d6ac3e2f9bb4de7f4708765fe31e43f3d296b`  
		Last Modified: Tue, 16 May 2017 20:18:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb47556cf6d50f1829aefa930d1ddd36b5129ca4c93b23628c6f9a96b414e996`  
		Last Modified: Tue, 16 May 2017 20:18:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:d1dca326afffd59e11ceaa04a443b765f63808d8354c1a92f90a155a7ac1b4ca
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad81160f2de7b4e17033f8dc04bfeda3bf8fee5f1cd5b876b44ef062765c6d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:16:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 16 May 2017 20:16:09 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:16:10 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:11 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:12 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:13 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:14 GMT
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e912e186636d7733c00a9d064abc95233dec122d35b8f7568e376abc8ccd606`  
		Last Modified: Tue, 16 May 2017 20:19:38 GMT  
		Size: 17.5 MB (17513093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3312ad6d9d1fa78739281df465e4c34c6c7447dc6496b79edcc983c4592357`  
		Last Modified: Tue, 16 May 2017 20:19:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b74b0b7db2030460df83593d6d4891a9488c6fb1fe35c2df63ef8e1c76f1d9`  
		Last Modified: Tue, 16 May 2017 20:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:d1dca326afffd59e11ceaa04a443b765f63808d8354c1a92f90a155a7ac1b4ca
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad81160f2de7b4e17033f8dc04bfeda3bf8fee5f1cd5b876b44ef062765c6d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:16:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 16 May 2017 20:16:09 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:16:10 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:11 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:12 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:13 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:14 GMT
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e912e186636d7733c00a9d064abc95233dec122d35b8f7568e376abc8ccd606`  
		Last Modified: Tue, 16 May 2017 20:19:38 GMT  
		Size: 17.5 MB (17513093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3312ad6d9d1fa78739281df465e4c34c6c7447dc6496b79edcc983c4592357`  
		Last Modified: Tue, 16 May 2017 20:19:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b74b0b7db2030460df83593d6d4891a9488c6fb1fe35c2df63ef8e1c76f1d9`  
		Last Modified: Tue, 16 May 2017 20:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:d1dca326afffd59e11ceaa04a443b765f63808d8354c1a92f90a155a7ac1b4ca
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89371738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad81160f2de7b4e17033f8dc04bfeda3bf8fee5f1cd5b876b44ef062765c6d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:16:05 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 16 May 2017 20:16:09 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:16:10 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:11 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:12 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:13 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:14 GMT
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e912e186636d7733c00a9d064abc95233dec122d35b8f7568e376abc8ccd606`  
		Last Modified: Tue, 16 May 2017 20:19:38 GMT  
		Size: 17.5 MB (17513093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3312ad6d9d1fa78739281df465e4c34c6c7447dc6496b79edcc983c4592357`  
		Last Modified: Tue, 16 May 2017 20:19:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b74b0b7db2030460df83593d6d4891a9488c6fb1fe35c2df63ef8e1c76f1d9`  
		Last Modified: Tue, 16 May 2017 20:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:c8eee4c85ba27718cf8c09ea70f6a5efc1928e93fa74437638a2e7509440f6f7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67e83573495c37ddf46323899de499dc1309644cd157032e427f19910d7a7c6`
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
# Tue, 16 May 2017 20:16:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:16:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:46 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:47 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:50 GMT
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
	-	`sha256:6a29f24de17f730b5f90e939e0cc26179cbcf4549023319a64905d24912d4968`  
		Last Modified: Tue, 16 May 2017 20:21:19 GMT  
		Size: 12.4 MB (12430405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a361e557a44fcc8fb8955aa8205675639e15ab18f7d07ef795fbc8d954504994`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b3e5e82da3888f6868f2b4074dd7f09b17c908a3f1bf5ac09d70a9a8acaaf`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:c8eee4c85ba27718cf8c09ea70f6a5efc1928e93fa74437638a2e7509440f6f7
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67e83573495c37ddf46323899de499dc1309644cd157032e427f19910d7a7c6`
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
# Tue, 16 May 2017 20:16:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:16:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:46 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:47 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:50 GMT
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
	-	`sha256:6a29f24de17f730b5f90e939e0cc26179cbcf4549023319a64905d24912d4968`  
		Last Modified: Tue, 16 May 2017 20:21:19 GMT  
		Size: 12.4 MB (12430405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a361e557a44fcc8fb8955aa8205675639e15ab18f7d07ef795fbc8d954504994`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b3e5e82da3888f6868f2b4074dd7f09b17c908a3f1bf5ac09d70a9a8acaaf`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:c8eee4c85ba27718cf8c09ea70f6a5efc1928e93fa74437638a2e7509440f6f7
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14398870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67e83573495c37ddf46323899de499dc1309644cd157032e427f19910d7a7c6`
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
# Tue, 16 May 2017 20:16:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:16:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 May 2017 20:16:46 GMT
EXPOSE 8086/tcp
# Tue, 16 May 2017 20:16:47 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 May 2017 20:16:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 16 May 2017 20:16:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:16:50 GMT
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
	-	`sha256:6a29f24de17f730b5f90e939e0cc26179cbcf4549023319a64905d24912d4968`  
		Last Modified: Tue, 16 May 2017 20:21:19 GMT  
		Size: 12.4 MB (12430405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a361e557a44fcc8fb8955aa8205675639e15ab18f7d07ef795fbc8d954504994`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b3e5e82da3888f6868f2b4074dd7f09b17c908a3f1bf5ac09d70a9a8acaaf`  
		Last Modified: Tue, 16 May 2017 20:21:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
