<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.4`](#influxdb124)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.4-alpine`](#influxdb124-alpine)
-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.5`](#influxdb135)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:1.3.5-alpine`](#influxdb135-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:d5604a92dea81d7e5172f64ded411d28d3ac70b5edfa156fb76f1186521f9cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

```console
$ docker pull influxdb@sha256:a2b4428dcd0b57b1ac04b0a32921ba0897c8af5619bb321477f3c6ba3a2941f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89375237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306361e19b803e5b8e1cb8f5db42110e544f767adeeb479c16628fefae06ca9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 22:29:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 22:29:18 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 12 Sep 2017 22:29:22 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 12 Sep 2017 22:29:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:22 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:23 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:23 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3801b91c74e24fe94920cf6d243bff8a8bd3a6b08e054065147ad0cd51d8d24`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ce067cb394dbc77167bc6890787195ea5828e1ec37ec95b7d5c84215226c7e`  
		Last Modified: Tue, 12 Sep 2017 22:30:15 GMT  
		Size: 17.5 MB (17507868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f5d680b79145095513fa3c43aa0fdf050086cfc90af2a08464d761d72c61`  
		Last Modified: Tue, 12 Sep 2017 22:30:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1a9a0ea80381def8e7ed9167ef7199efd1084b61b347c401aca2b4bf5a913c`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f343c75824268149688336ac245b466e4c5c5ec971abd35e285bf82c736a70`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:d5604a92dea81d7e5172f64ded411d28d3ac70b5edfa156fb76f1186521f9cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

```console
$ docker pull influxdb@sha256:a2b4428dcd0b57b1ac04b0a32921ba0897c8af5619bb321477f3c6ba3a2941f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89375237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306361e19b803e5b8e1cb8f5db42110e544f767adeeb479c16628fefae06ca9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 22:29:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 22:29:18 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 12 Sep 2017 22:29:22 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 12 Sep 2017 22:29:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:22 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:22 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:23 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:23 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3801b91c74e24fe94920cf6d243bff8a8bd3a6b08e054065147ad0cd51d8d24`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ce067cb394dbc77167bc6890787195ea5828e1ec37ec95b7d5c84215226c7e`  
		Last Modified: Tue, 12 Sep 2017 22:30:15 GMT  
		Size: 17.5 MB (17507868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f5d680b79145095513fa3c43aa0fdf050086cfc90af2a08464d761d72c61`  
		Last Modified: Tue, 12 Sep 2017 22:30:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1a9a0ea80381def8e7ed9167ef7199efd1084b61b347c401aca2b4bf5a913c`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f343c75824268149688336ac245b466e4c5c5ec971abd35e285bf82c736a70`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:1438b9fe7e0c98919957f559584f8e2527b79e02cb5d80b2079ee38b9c5e2639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:23c08add29c5340f07cbf22bc8911a85230271d4260092c3925b1ae28ddf9001
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2eae6bbe280c73e10226cd063013ec445c80e114ac4db8552d889718a7ac4c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:29:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 12 Sep 2017 22:29:27 GMT
RUN apk add --no-cache bash
# Tue, 12 Sep 2017 22:29:27 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 12 Sep 2017 22:29:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 22:29:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:43 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:43 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:44 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:44 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58a333dbcf59b7d5f2d5d356a7965b59a0bcd1f9bf62e20ef52d9d04297f8dd`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c1247f18331ff2a4df34fdd9772b3007b4f6c0b50d567a1884d44eb8ed70cb`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 1.1 MB (1092384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456771b2cb6bfe90558cb16700442f6343010894e5416d6fe3015d82471bc070`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 12.5 MB (12489717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2683b8785ec74ceed498bdc4d7aa3d6ce42ac55f3258c797760d233fe9999cf`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004ce224644826ec3d33d916038532f85cbcecde262afd50f22c5efd77160dbb`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c839f16f13a2122083c3a88794020dadb729fafc44f510c12d32d292080ae0c`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:1438b9fe7e0c98919957f559584f8e2527b79e02cb5d80b2079ee38b9c5e2639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:23c08add29c5340f07cbf22bc8911a85230271d4260092c3925b1ae28ddf9001
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2eae6bbe280c73e10226cd063013ec445c80e114ac4db8552d889718a7ac4c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:29:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 12 Sep 2017 22:29:27 GMT
RUN apk add --no-cache bash
# Tue, 12 Sep 2017 22:29:27 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 12 Sep 2017 22:29:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 22:29:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:43 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:43 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:44 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:44 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58a333dbcf59b7d5f2d5d356a7965b59a0bcd1f9bf62e20ef52d9d04297f8dd`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c1247f18331ff2a4df34fdd9772b3007b4f6c0b50d567a1884d44eb8ed70cb`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 1.1 MB (1092384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456771b2cb6bfe90558cb16700442f6343010894e5416d6fe3015d82471bc070`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 12.5 MB (12489717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2683b8785ec74ceed498bdc4d7aa3d6ce42ac55f3258c797760d233fe9999cf`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004ce224644826ec3d33d916038532f85cbcecde262afd50f22c5efd77160dbb`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c839f16f13a2122083c3a88794020dadb729fafc44f510c12d32d292080ae0c`  
		Last Modified: Tue, 12 Sep 2017 22:30:25 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:58953e5717e3cf1467fb295b4a905040f5346572aaf799410c36663229b4f825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:ec496dda3e0c7b979eb4b7a302333dd93bb2e1e6da82729fa1a2465051bd8d63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622a6fd8cfa173393e5db105ccb83bb07b7d4589ee779b866d619ec5544fa8b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 22:29:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 22:29:45 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:29:47 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 12 Sep 2017 22:29:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:47 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:48 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3801b91c74e24fe94920cf6d243bff8a8bd3a6b08e054065147ad0cd51d8d24`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629551aef7619547cdd0fc56b93de78d580b617ea825bbde0b8e1a408293a68a`  
		Last Modified: Tue, 12 Sep 2017 22:30:40 GMT  
		Size: 19.1 MB (19106552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89ee860c4d901400e2f3e17c3e2504a562b938106736fd6f160f36eb8a4795`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7d31001dc1814168e7d323270320a566e2a3efb92425f9606596dbd9f22236`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e1dddaec305a782915d3db2a2b5db6a5ed08386d0af76a2f0b91b7faddb3b7`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5`

```console
$ docker pull influxdb@sha256:58953e5717e3cf1467fb295b4a905040f5346572aaf799410c36663229b4f825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5` - linux; amd64

```console
$ docker pull influxdb@sha256:ec496dda3e0c7b979eb4b7a302333dd93bb2e1e6da82729fa1a2465051bd8d63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622a6fd8cfa173393e5db105ccb83bb07b7d4589ee779b866d619ec5544fa8b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 22:29:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 22:29:45 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:29:47 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 12 Sep 2017 22:29:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:47 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:48 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3801b91c74e24fe94920cf6d243bff8a8bd3a6b08e054065147ad0cd51d8d24`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629551aef7619547cdd0fc56b93de78d580b617ea825bbde0b8e1a408293a68a`  
		Last Modified: Tue, 12 Sep 2017 22:30:40 GMT  
		Size: 19.1 MB (19106552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89ee860c4d901400e2f3e17c3e2504a562b938106736fd6f160f36eb8a4795`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7d31001dc1814168e7d323270320a566e2a3efb92425f9606596dbd9f22236`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e1dddaec305a782915d3db2a2b5db6a5ed08386d0af76a2f0b91b7faddb3b7`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:58953e5717e3cf1467fb295b4a905040f5346572aaf799410c36663229b4f825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:ec496dda3e0c7b979eb4b7a302333dd93bb2e1e6da82729fa1a2465051bd8d63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622a6fd8cfa173393e5db105ccb83bb07b7d4589ee779b866d619ec5544fa8b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 22:29:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Sep 2017 22:29:45 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:29:47 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 12 Sep 2017 22:29:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:29:47 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:29:48 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:29:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:29:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3801b91c74e24fe94920cf6d243bff8a8bd3a6b08e054065147ad0cd51d8d24`  
		Last Modified: Tue, 12 Sep 2017 22:30:10 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629551aef7619547cdd0fc56b93de78d580b617ea825bbde0b8e1a408293a68a`  
		Last Modified: Tue, 12 Sep 2017 22:30:40 GMT  
		Size: 19.1 MB (19106552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc89ee860c4d901400e2f3e17c3e2504a562b938106736fd6f160f36eb8a4795`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7d31001dc1814168e7d323270320a566e2a3efb92425f9606596dbd9f22236`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e1dddaec305a782915d3db2a2b5db6a5ed08386d0af76a2f0b91b7faddb3b7`  
		Last Modified: Tue, 12 Sep 2017 22:30:36 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:33cf644787bed488294c5a240d6b961cddd330dc194269a12b6409ee867e89b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2a69dc4c592856b9749de79ba4577f519037db10800ca1276cb1f65ccbaccc33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bbfbcae95c6c4877d7de964236e3eb241c73ff21498fd485190677c5b4d928`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:29:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 12 Sep 2017 22:29:52 GMT
RUN apk add --no-cache tzdata bash
# Tue, 12 Sep 2017 22:29:52 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:30:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:30:01 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:30:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:30:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58a333dbcf59b7d5f2d5d356a7965b59a0bcd1f9bf62e20ef52d9d04297f8dd`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc79b55112a2604ade3d0d50cbf1e22d5edb898d69dd749ae4e794293da1b8`  
		Last Modified: Tue, 12 Sep 2017 22:30:53 GMT  
		Size: 1.5 MB (1483420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed29ab2e8af52ea48a1a4f80f5e676db815b10266ea45dab5221114abc881af`  
		Last Modified: Tue, 12 Sep 2017 22:30:56 GMT  
		Size: 14.1 MB (14075968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e02676c5e1366a9816268551cbbc28e261f1af575a23cb3686c6a02b5383e`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324135417c5b5b2bda6f7e358c440b95f9a6d0256fbfbff5fd3d397354b6a5f4`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515778afb420467f95bc3b876704e307995a2d8be35a076efff29ac119b7c61b`  
		Last Modified: Tue, 12 Sep 2017 22:30:54 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5-alpine`

```console
$ docker pull influxdb@sha256:33cf644787bed488294c5a240d6b961cddd330dc194269a12b6409ee867e89b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2a69dc4c592856b9749de79ba4577f519037db10800ca1276cb1f65ccbaccc33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bbfbcae95c6c4877d7de964236e3eb241c73ff21498fd485190677c5b4d928`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:29:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 12 Sep 2017 22:29:52 GMT
RUN apk add --no-cache tzdata bash
# Tue, 12 Sep 2017 22:29:52 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:30:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:30:01 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:30:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:30:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58a333dbcf59b7d5f2d5d356a7965b59a0bcd1f9bf62e20ef52d9d04297f8dd`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc79b55112a2604ade3d0d50cbf1e22d5edb898d69dd749ae4e794293da1b8`  
		Last Modified: Tue, 12 Sep 2017 22:30:53 GMT  
		Size: 1.5 MB (1483420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed29ab2e8af52ea48a1a4f80f5e676db815b10266ea45dab5221114abc881af`  
		Last Modified: Tue, 12 Sep 2017 22:30:56 GMT  
		Size: 14.1 MB (14075968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e02676c5e1366a9816268551cbbc28e261f1af575a23cb3686c6a02b5383e`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324135417c5b5b2bda6f7e358c440b95f9a6d0256fbfbff5fd3d397354b6a5f4`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515778afb420467f95bc3b876704e307995a2d8be35a076efff29ac119b7c61b`  
		Last Modified: Tue, 12 Sep 2017 22:30:54 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:33cf644787bed488294c5a240d6b961cddd330dc194269a12b6409ee867e89b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2a69dc4c592856b9749de79ba4577f519037db10800ca1276cb1f65ccbaccc33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bbfbcae95c6c4877d7de964236e3eb241c73ff21498fd485190677c5b4d928`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 22:29:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 12 Sep 2017 22:29:52 GMT
RUN apk add --no-cache tzdata bash
# Tue, 12 Sep 2017 22:29:52 GMT
ENV INFLUXDB_VERSION=1.3.5
# Tue, 12 Sep 2017 22:30:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Sep 2017 22:30:01 GMT
EXPOSE 8086/tcp
# Tue, 12 Sep 2017 22:30:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Sep 2017 22:30:01 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Tue, 12 Sep 2017 22:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Sep 2017 22:30:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58a333dbcf59b7d5f2d5d356a7965b59a0bcd1f9bf62e20ef52d9d04297f8dd`  
		Last Modified: Tue, 12 Sep 2017 22:30:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc79b55112a2604ade3d0d50cbf1e22d5edb898d69dd749ae4e794293da1b8`  
		Last Modified: Tue, 12 Sep 2017 22:30:53 GMT  
		Size: 1.5 MB (1483420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed29ab2e8af52ea48a1a4f80f5e676db815b10266ea45dab5221114abc881af`  
		Last Modified: Tue, 12 Sep 2017 22:30:56 GMT  
		Size: 14.1 MB (14075968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88e02676c5e1366a9816268551cbbc28e261f1af575a23cb3686c6a02b5383e`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324135417c5b5b2bda6f7e358c440b95f9a6d0256fbfbff5fd3d397354b6a5f4`  
		Last Modified: Tue, 12 Sep 2017 22:30:52 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515778afb420467f95bc3b876704e307995a2d8be35a076efff29ac119b7c61b`  
		Last Modified: Tue, 12 Sep 2017 22:30:54 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
