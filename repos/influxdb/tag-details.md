<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.2`](#influxdb12)
-	[`influxdb:1.2.4`](#influxdb124)
-	[`influxdb:1.2-alpine`](#influxdb12-alpine)
-	[`influxdb:1.2.4-alpine`](#influxdb124-alpine)
-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.0`](#influxdb130)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:1.3.0-alpine`](#influxdb130-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:1.2`

```console
$ docker pull influxdb@sha256:f1668c44d3facd5711660eaccb8eba72c9fb1c2c784c8230572797aeab3820a1
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89393835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0c82c50764ad54f37a98bdeb2a77866578ea2d5f06e4157b4bcf9c2a205173`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:22:19 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 23 Jun 2017 00:22:23 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:22:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 00:22:25 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 00:22:26 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 00:22:27 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Jun 2017 00:22:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:22:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be38c7bb707f17eacaaa7e751263a64ae4784dde7c885507e5f7aed3253aff7a`  
		Last Modified: Fri, 23 Jun 2017 17:19:06 GMT  
		Size: 17.5 MB (17507464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fa8d504bcb27a4eb5c17b43bbb656f853ba91e17195f37d67326bfe6f35f98`  
		Last Modified: Fri, 23 Jun 2017 17:19:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0520e70b24c17712d6119bce3f9f0b83fdb4bd7952fa295aa52de2cbc2a7125`  
		Last Modified: Fri, 23 Jun 2017 17:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:f1668c44d3facd5711660eaccb8eba72c9fb1c2c784c8230572797aeab3820a1
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89393835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0c82c50764ad54f37a98bdeb2a77866578ea2d5f06e4157b4bcf9c2a205173`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 00:22:19 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 23 Jun 2017 00:22:23 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 00:22:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 00:22:25 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 00:22:26 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 00:22:27 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Jun 2017 00:22:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 00:22:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be38c7bb707f17eacaaa7e751263a64ae4784dde7c885507e5f7aed3253aff7a`  
		Last Modified: Fri, 23 Jun 2017 17:19:06 GMT  
		Size: 17.5 MB (17507464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fa8d504bcb27a4eb5c17b43bbb656f853ba91e17195f37d67326bfe6f35f98`  
		Last Modified: Fri, 23 Jun 2017 17:19:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0520e70b24c17712d6119bce3f9f0b83fdb4bd7952fa295aa52de2cbc2a7125`  
		Last Modified: Fri, 23 Jun 2017 17:19:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:792cab807142ef6fb3aadb87ac3fd45c31693a41c58efc6d7ff7fe57dd8fc698
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af33406b9bfe7e42c03d56384cad4fc4ef59ad0eb6fb009e95ef5b690467125a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 20:37:41 GMT
ENV INFLUXDB_VERSION=1.2.4
# Mon, 19 Jun 2017 20:37:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:38:09 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 19 Jun 2017 20:38:09 GMT
EXPOSE 8086/tcp
# Mon, 19 Jun 2017 20:38:10 GMT
VOLUME [/var/lib/influxdb]
# Mon, 19 Jun 2017 20:38:12 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:38:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:38:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b78003ff2501de7220d84993f42ada5eef9bdf2ee97d9723c774d12b4f0105`  
		Last Modified: Fri, 23 Jun 2017 17:20:06 GMT  
		Size: 12.4 MB (12430416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e795f77df444b802b070f26bdddd7420ba2c31bba8f13e7c298c212c3dfb275e`  
		Last Modified: Fri, 23 Jun 2017 17:20:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53874f8598adf21a3069af936b929f8ac77a252a53445ae2a30f23947328f9bf`  
		Last Modified: Fri, 23 Jun 2017 17:20:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:792cab807142ef6fb3aadb87ac3fd45c31693a41c58efc6d7ff7fe57dd8fc698
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af33406b9bfe7e42c03d56384cad4fc4ef59ad0eb6fb009e95ef5b690467125a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 20:37:41 GMT
ENV INFLUXDB_VERSION=1.2.4
# Mon, 19 Jun 2017 20:37:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:38:09 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Mon, 19 Jun 2017 20:38:09 GMT
EXPOSE 8086/tcp
# Mon, 19 Jun 2017 20:38:10 GMT
VOLUME [/var/lib/influxdb]
# Mon, 19 Jun 2017 20:38:12 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:38:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:38:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b78003ff2501de7220d84993f42ada5eef9bdf2ee97d9723c774d12b4f0105`  
		Last Modified: Fri, 23 Jun 2017 17:20:06 GMT  
		Size: 12.4 MB (12430416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e795f77df444b802b070f26bdddd7420ba2c31bba8f13e7c298c212c3dfb275e`  
		Last Modified: Fri, 23 Jun 2017 17:20:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53874f8598adf21a3069af936b929f8ac77a252a53445ae2a30f23947328f9bf`  
		Last Modified: Fri, 23 Jun 2017 17:20:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:1ada5906842671c82eb4a3c5eb0ba7dd03f716d3b4723d3897e8681d03544c24
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90946848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e43e500cb0e0f96d35f816855a5c70bd698bffc8fa9a04d2ed7025c05e0b3c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 17:01:43 GMT
ENV INFLUXDB_VERSION=1.3.0
# Fri, 23 Jun 2017 17:01:47 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 17:01:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 17:01:50 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 17:01:50 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 17:01:52 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Jun 2017 17:01:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 17:01:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9cd8e070173def275111fcf0932ae3f0e6370996a3fc81a9004ad7ca153499`  
		Last Modified: Fri, 23 Jun 2017 17:21:14 GMT  
		Size: 19.1 MB (19060475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338983386bb960cb215e98abc6a4393ef5a3d7f187ef4c98ad6f3234168625ee`  
		Last Modified: Fri, 23 Jun 2017 17:21:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e937d54eea1568d0c9b0b370f701d3f27ad69ff3329b7a14daeb2a484f797f1`  
		Last Modified: Fri, 23 Jun 2017 17:21:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.0`

```console
$ docker pull influxdb@sha256:1ada5906842671c82eb4a3c5eb0ba7dd03f716d3b4723d3897e8681d03544c24
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90946848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e43e500cb0e0f96d35f816855a5c70bd698bffc8fa9a04d2ed7025c05e0b3c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:21:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 23 Jun 2017 17:01:43 GMT
ENV INFLUXDB_VERSION=1.3.0
# Fri, 23 Jun 2017 17:01:47 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Jun 2017 17:01:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 17:01:50 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 17:01:50 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 17:01:52 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Jun 2017 17:01:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 17:01:54 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be322bc8fd93f4bebccc5ad8e6b4074a4d3b764bd10299bd804cbfc3f651d0`  
		Last Modified: Fri, 23 Jun 2017 17:19:00 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9cd8e070173def275111fcf0932ae3f0e6370996a3fc81a9004ad7ca153499`  
		Last Modified: Fri, 23 Jun 2017 17:21:14 GMT  
		Size: 19.1 MB (19060475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338983386bb960cb215e98abc6a4393ef5a3d7f187ef4c98ad6f3234168625ee`  
		Last Modified: Fri, 23 Jun 2017 17:21:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e937d54eea1568d0c9b0b370f701d3f27ad69ff3329b7a14daeb2a484f797f1`  
		Last Modified: Fri, 23 Jun 2017 17:21:09 GMT  
		Size: 186.0 B  
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

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:268b65ad6d481a2925beb78a1ce6f33546fecca0fa02b98c31f3944626237aec
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15930619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d1420daaca721fb71a301239e2fb548e58a0d9bc2352bff3667c4dbe0d074`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 23 Jun 2017 17:11:53 GMT
ENV INFLUXDB_VERSION=1.3.0
# Fri, 23 Jun 2017 17:12:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Jun 2017 17:18:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 17:18:26 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 17:18:27 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 17:18:28 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 23 Jun 2017 17:18:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 17:18:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b3176a5b54e0eb00f32ee5e14e621acd2b096c3d232fb45635a05deb23b5d8`  
		Last Modified: Fri, 23 Jun 2017 17:22:42 GMT  
		Size: 14.0 MB (13959745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46fbb330045e12c74a681dd54427021f6a653de8763e429e4630c31c426d4c`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c110157747df41d8e81363cd78275c03a0bc533f0ad01a3e4674989add8323`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.0-alpine`

```console
$ docker pull influxdb@sha256:268b65ad6d481a2925beb78a1ce6f33546fecca0fa02b98c31f3944626237aec
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15930619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d1420daaca721fb71a301239e2fb548e58a0d9bc2352bff3667c4dbe0d074`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 23 Jun 2017 17:11:53 GMT
ENV INFLUXDB_VERSION=1.3.0
# Fri, 23 Jun 2017 17:12:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Jun 2017 17:18:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 17:18:26 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 17:18:27 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 17:18:28 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 23 Jun 2017 17:18:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 17:18:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b3176a5b54e0eb00f32ee5e14e621acd2b096c3d232fb45635a05deb23b5d8`  
		Last Modified: Fri, 23 Jun 2017 17:22:42 GMT  
		Size: 14.0 MB (13959745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46fbb330045e12c74a681dd54427021f6a653de8763e429e4630c31c426d4c`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c110157747df41d8e81363cd78275c03a0bc533f0ad01a3e4674989add8323`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:268b65ad6d481a2925beb78a1ce6f33546fecca0fa02b98c31f3944626237aec
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15930619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d1420daaca721fb71a301239e2fb548e58a0d9bc2352bff3667c4dbe0d074`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 23 Jun 2017 17:11:53 GMT
ENV INFLUXDB_VERSION=1.3.0
# Fri, 23 Jun 2017 17:12:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 23 Jun 2017 17:18:24 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 23 Jun 2017 17:18:26 GMT
EXPOSE 8086/tcp
# Fri, 23 Jun 2017 17:18:27 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Jun 2017 17:18:28 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Fri, 23 Jun 2017 17:18:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 17:18:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b3176a5b54e0eb00f32ee5e14e621acd2b096c3d232fb45635a05deb23b5d8`  
		Last Modified: Fri, 23 Jun 2017 17:22:42 GMT  
		Size: 14.0 MB (13959745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46fbb330045e12c74a681dd54427021f6a653de8763e429e4630c31c426d4c`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c110157747df41d8e81363cd78275c03a0bc533f0ad01a3e4674989add8323`  
		Last Modified: Fri, 23 Jun 2017 17:22:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
