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
$ docker pull influxdb@sha256:27e46228b67f2e29dfbc4eeb3a2cf654ab89bb5e6b0a4cfa7bffbba99107133d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89383598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7ba2a720077056516bdb3835ed3264b728e9ccf1d93210c3f1cc7e6ebf3b81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 05:54:22 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 26 Jul 2017 05:54:26 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 05:54:26 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 26 Jul 2017 05:54:26 GMT
EXPOSE 8086/tcp
# Wed, 26 Jul 2017 05:54:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 26 Jul 2017 05:54:27 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 26 Jul 2017 05:54:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 05:54:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751ddc794755638930dbce984b65101a3660b2784970bf946aa4e706d8c0f94f`  
		Last Modified: Wed, 26 Jul 2017 05:54:44 GMT  
		Size: 17.5 MB (17507453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1e06c1acebba93b6e5edb68d319c254679a7eaa1474f271c479430a632ca5`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b40b0578e1f33abb5226c85c7e6772c66a51d1dd7703508b2a246a3b4e14884`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:27e46228b67f2e29dfbc4eeb3a2cf654ab89bb5e6b0a4cfa7bffbba99107133d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89383598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7ba2a720077056516bdb3835ed3264b728e9ccf1d93210c3f1cc7e6ebf3b81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 05:54:22 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 26 Jul 2017 05:54:26 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 05:54:26 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 26 Jul 2017 05:54:26 GMT
EXPOSE 8086/tcp
# Wed, 26 Jul 2017 05:54:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 26 Jul 2017 05:54:27 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 26 Jul 2017 05:54:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 05:54:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751ddc794755638930dbce984b65101a3660b2784970bf946aa4e706d8c0f94f`  
		Last Modified: Wed, 26 Jul 2017 05:54:44 GMT  
		Size: 17.5 MB (17507453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c1e06c1acebba93b6e5edb68d319c254679a7eaa1474f271c479430a632ca5`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b40b0578e1f33abb5226c85c7e6772c66a51d1dd7703508b2a246a3b4e14884`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:84f5c8f66bfab4fbbc19861c0c88adc7e46404e6b3891812523f1102f3f457bf
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fabe84055af6b08cf125da813a0373914d34c17212b747d28bb3e574f29d06c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 21:57:33 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 27 Jun 2017 21:57:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 21:57:48 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Jun 2017 21:57:49 GMT
EXPOSE 8086/tcp
# Tue, 27 Jun 2017 21:57:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Jun 2017 21:57:51 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Jun 2017 21:57:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 21:57:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf732e7bb269b2d69ef303f761fb9cc6a0511af2f8490cd9b9f8242e7fb3e80d`  
		Last Modified: Thu, 29 Jun 2017 21:25:23 GMT  
		Size: 12.4 MB (12430409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c775542a18c1fec707f3f4dba1dba372f78c32d9cc4e51242c971c861684361`  
		Last Modified: Thu, 29 Jun 2017 21:25:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815cb8d28ccc3a72190e4b34842fdc38d8e025165595ac0a58b3a286b2f63eaa`  
		Last Modified: Thu, 29 Jun 2017 21:25:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:84f5c8f66bfab4fbbc19861c0c88adc7e46404e6b3891812523f1102f3f457bf
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fabe84055af6b08cf125da813a0373914d34c17212b747d28bb3e574f29d06c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 21:57:33 GMT
ENV INFLUXDB_VERSION=1.2.4
# Tue, 27 Jun 2017 21:57:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Jun 2017 21:57:48 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 27 Jun 2017 21:57:49 GMT
EXPOSE 8086/tcp
# Tue, 27 Jun 2017 21:57:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 27 Jun 2017 21:57:51 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 27 Jun 2017 21:57:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Jun 2017 21:57:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf732e7bb269b2d69ef303f761fb9cc6a0511af2f8490cd9b9f8242e7fb3e80d`  
		Last Modified: Thu, 29 Jun 2017 21:25:23 GMT  
		Size: 12.4 MB (12430409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c775542a18c1fec707f3f4dba1dba372f78c32d9cc4e51242c971c861684361`  
		Last Modified: Thu, 29 Jun 2017 21:25:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815cb8d28ccc3a72190e4b34842fdc38d8e025165595ac0a58b3a286b2f63eaa`  
		Last Modified: Thu, 29 Jun 2017 21:25:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:0391d82d5cff05064191a0401efba404a977e052453e00b61b791e96aa7970fe
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90982636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1aaa5bf360fc6d4229d81cde29b7be790008c0c7f9e0ca12845d8f2dc021bf2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Aug 2017 19:31:38 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 30 Aug 2017 19:31:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:42 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56143bb22a3a7b9ca6c1fbe97205a12e6a499dfff438ad169e6dacbe24674852`  
		Last Modified: Wed, 30 Aug 2017 19:32:08 GMT  
		Size: 19.1 MB (19106491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd657af397167f9454f6efe78153ada05d7ae3fe6193cce1c75d1908a8065ae4`  
		Last Modified: Wed, 30 Aug 2017 19:32:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc40097f01616aac4d9b4fa4b4196870e40cf7501fceeae74c8f79d213d1a9fa`  
		Last Modified: Wed, 30 Aug 2017 19:32:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5`

```console
$ docker pull influxdb@sha256:0391d82d5cff05064191a0401efba404a977e052453e00b61b791e96aa7970fe
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90982636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1aaa5bf360fc6d4229d81cde29b7be790008c0c7f9e0ca12845d8f2dc021bf2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Aug 2017 19:31:38 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 30 Aug 2017 19:31:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:42 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56143bb22a3a7b9ca6c1fbe97205a12e6a499dfff438ad169e6dacbe24674852`  
		Last Modified: Wed, 30 Aug 2017 19:32:08 GMT  
		Size: 19.1 MB (19106491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd657af397167f9454f6efe78153ada05d7ae3fe6193cce1c75d1908a8065ae4`  
		Last Modified: Wed, 30 Aug 2017 19:32:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc40097f01616aac4d9b4fa4b4196870e40cf7501fceeae74c8f79d213d1a9fa`  
		Last Modified: Wed, 30 Aug 2017 19:32:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:0391d82d5cff05064191a0401efba404a977e052453e00b61b791e96aa7970fe
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90982636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1aaa5bf360fc6d4229d81cde29b7be790008c0c7f9e0ca12845d8f2dc021bf2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Aug 2017 19:31:38 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:41 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 30 Aug 2017 19:31:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:42 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56143bb22a3a7b9ca6c1fbe97205a12e6a499dfff438ad169e6dacbe24674852`  
		Last Modified: Wed, 30 Aug 2017 19:32:08 GMT  
		Size: 19.1 MB (19106491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd657af397167f9454f6efe78153ada05d7ae3fe6193cce1c75d1908a8065ae4`  
		Last Modified: Wed, 30 Aug 2017 19:32:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc40097f01616aac4d9b4fa4b4196870e40cf7501fceeae74c8f79d213d1a9fa`  
		Last Modified: Wed, 30 Aug 2017 19:32:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:85bc130e9fa597b36641aac73c4dfd2214d724ce5bdc3b86c2df9a6362048a2d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16383817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c90173200ba9ef5d29f747bde2016dfd94897806d7d765486ffe9c00aea8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 14 Jul 2017 21:22:09 GMT
RUN apk add --no-cache tzdata
# Wed, 30 Aug 2017 19:31:48 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Aug 2017 19:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:54 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4da1d243cb68e6d0e7176708d1ecdd210e5baf979a5d24c1fb697bad0ab22f4`  
		Last Modified: Fri, 14 Jul 2017 21:23:57 GMT  
		Size: 396.3 KB (396275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07c590fe168091a294ebbff539b75cfe6f4cfb11b6537400dba433fa31af28d`  
		Last Modified: Wed, 30 Aug 2017 19:32:35 GMT  
		Size: 14.0 MB (14016709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a9d0a2ef010993b20e902b3d451e4e07622e6536d53131642289fe565a9066`  
		Last Modified: Wed, 30 Aug 2017 19:32:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a760db0a628dd02907ca482ecfd8b6a3bdfd34197b00523a3d971bae3f681`  
		Last Modified: Wed, 30 Aug 2017 19:32:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5-alpine`

```console
$ docker pull influxdb@sha256:85bc130e9fa597b36641aac73c4dfd2214d724ce5bdc3b86c2df9a6362048a2d
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16383817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c90173200ba9ef5d29f747bde2016dfd94897806d7d765486ffe9c00aea8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 14 Jul 2017 21:22:09 GMT
RUN apk add --no-cache tzdata
# Wed, 30 Aug 2017 19:31:48 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Aug 2017 19:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:54 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4da1d243cb68e6d0e7176708d1ecdd210e5baf979a5d24c1fb697bad0ab22f4`  
		Last Modified: Fri, 14 Jul 2017 21:23:57 GMT  
		Size: 396.3 KB (396275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07c590fe168091a294ebbff539b75cfe6f4cfb11b6537400dba433fa31af28d`  
		Last Modified: Wed, 30 Aug 2017 19:32:35 GMT  
		Size: 14.0 MB (14016709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a9d0a2ef010993b20e902b3d451e4e07622e6536d53131642289fe565a9066`  
		Last Modified: Wed, 30 Aug 2017 19:32:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a760db0a628dd02907ca482ecfd8b6a3bdfd34197b00523a3d971bae3f681`  
		Last Modified: Wed, 30 Aug 2017 19:32:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:85bc130e9fa597b36641aac73c4dfd2214d724ce5bdc3b86c2df9a6362048a2d
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16383817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c90173200ba9ef5d29f747bde2016dfd94897806d7d765486ffe9c00aea8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 14 Jul 2017 21:22:09 GMT
RUN apk add --no-cache tzdata
# Wed, 30 Aug 2017 19:31:48 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 30 Aug 2017 19:31:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Aug 2017 19:31:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 30 Aug 2017 19:31:54 GMT
EXPOSE 8086/tcp
# Wed, 30 Aug 2017 19:31:55 GMT
VOLUME [/var/lib/influxdb]
# Wed, 30 Aug 2017 19:31:55 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Wed, 30 Aug 2017 19:31:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Aug 2017 19:31:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4da1d243cb68e6d0e7176708d1ecdd210e5baf979a5d24c1fb697bad0ab22f4`  
		Last Modified: Fri, 14 Jul 2017 21:23:57 GMT  
		Size: 396.3 KB (396275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07c590fe168091a294ebbff539b75cfe6f4cfb11b6537400dba433fa31af28d`  
		Last Modified: Wed, 30 Aug 2017 19:32:35 GMT  
		Size: 14.0 MB (14016709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a9d0a2ef010993b20e902b3d451e4e07622e6536d53131642289fe565a9066`  
		Last Modified: Wed, 30 Aug 2017 19:32:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a760db0a628dd02907ca482ecfd8b6a3bdfd34197b00523a3d971bae3f681`  
		Last Modified: Wed, 30 Aug 2017 19:32:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
