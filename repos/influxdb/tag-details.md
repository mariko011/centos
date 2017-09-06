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
$ docker pull influxdb@sha256:ff24cac54ab659edfb8bec73c0155a99869634dd0ec31cfce34c4fca3ed8fbfa
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89384771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bf04a8fd39e2b57ec21b42f8f7781913ba4fd1a32a9c1fd9089d4a7edaeea`
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
# Wed, 06 Sep 2017 21:44:31 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:31 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:44:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:44:32 GMT
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
	-	`sha256:46cc824274fa624f80c1a0213e1d5e339e063a500e939721c78b878e6e95b9a2`  
		Last Modified: Wed, 06 Sep 2017 21:45:36 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163f4f79690445be2f721e54d3f7abe80c935841c8fcb80e397418f1317b32e`  
		Last Modified: Wed, 06 Sep 2017 21:45:36 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:ff24cac54ab659edfb8bec73c0155a99869634dd0ec31cfce34c4fca3ed8fbfa
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89384771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bf04a8fd39e2b57ec21b42f8f7781913ba4fd1a32a9c1fd9089d4a7edaeea`
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
# Wed, 06 Sep 2017 21:44:31 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:31 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:44:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:44:32 GMT
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
	-	`sha256:46cc824274fa624f80c1a0213e1d5e339e063a500e939721c78b878e6e95b9a2`  
		Last Modified: Wed, 06 Sep 2017 21:45:36 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163f4f79690445be2f721e54d3f7abe80c935841c8fcb80e397418f1317b32e`  
		Last Modified: Wed, 06 Sep 2017 21:45:36 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2-alpine`

```console
$ docker pull influxdb@sha256:791e0e4d7886958a64817c149af2dd6efa6ced9ce7d0b095e1143c55e55649a1
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15553979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff0340ef9e7ca7dac52757b8a8fcfcbcb572020ba23f5cb353a450f7b36ae07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Sep 2017 21:44:43 GMT
RUN apk add --no-cache bash
# Wed, 06 Sep 2017 21:44:44 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 06 Sep 2017 21:44:49 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Sep 2017 21:44:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Sep 2017 21:44:50 GMT
EXPOSE 8086/tcp
# Wed, 06 Sep 2017 21:44:50 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:44:50 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:51 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:44:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:44:51 GMT
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
	-	`sha256:33101d2aae5528e06ac5e65447d77774d76bed2442f7f0d8163cc2c981ea2c03`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 1.1 MB (1092325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c7cbe8140bfa923dbe12338c686c5168c79c1f1f5160c819d15f3b4ee6b773`  
		Last Modified: Wed, 06 Sep 2017 21:45:57 GMT  
		Size: 12.5 MB (12489651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f950972b0586b77a869cd36a17587640aec2c43b9964ac1af89e5487254781c`  
		Last Modified: Wed, 06 Sep 2017 21:45:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e63f4258547bf7bd1a221924a98d2b1ce778207ea8043a6c555b52dea9787f5`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5097c71a03fc88e09662d81186afee5696eb5b0d75b2741e90621ad1a902ff31`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4-alpine`

```console
$ docker pull influxdb@sha256:791e0e4d7886958a64817c149af2dd6efa6ced9ce7d0b095e1143c55e55649a1
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15553979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff0340ef9e7ca7dac52757b8a8fcfcbcb572020ba23f5cb353a450f7b36ae07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Sep 2017 21:44:43 GMT
RUN apk add --no-cache bash
# Wed, 06 Sep 2017 21:44:44 GMT
ENV INFLUXDB_VERSION=1.2.4
# Wed, 06 Sep 2017 21:44:49 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Sep 2017 21:44:49 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Sep 2017 21:44:50 GMT
EXPOSE 8086/tcp
# Wed, 06 Sep 2017 21:44:50 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:44:50 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:51 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:44:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:44:51 GMT
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
	-	`sha256:33101d2aae5528e06ac5e65447d77774d76bed2442f7f0d8163cc2c981ea2c03`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 1.1 MB (1092325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c7cbe8140bfa923dbe12338c686c5168c79c1f1f5160c819d15f3b4ee6b773`  
		Last Modified: Wed, 06 Sep 2017 21:45:57 GMT  
		Size: 12.5 MB (12489651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f950972b0586b77a869cd36a17587640aec2c43b9964ac1af89e5487254781c`  
		Last Modified: Wed, 06 Sep 2017 21:45:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e63f4258547bf7bd1a221924a98d2b1ce778207ea8043a6c555b52dea9787f5`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5097c71a03fc88e09662d81186afee5696eb5b0d75b2741e90621ad1a902ff31`  
		Last Modified: Wed, 06 Sep 2017 21:45:55 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:3ebb11cf7bb1a2802cf4a2682fece9005609d6b7be263de2f700788baab239a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90983805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3294b3c9db170e6e47ccfee87a4b2dce367425151f66b1a6e33bdc4a898bdd76`
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
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:00 GMT
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
	-	`sha256:9b9261f27c9a77442d07a9bf9cde1b52469e701faa0488481d7a32f5cb137bb6`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315bdf0ddbb092647be6d409a48e66c1c12c93e603f757493c9f920120d4580c`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5`

```console
$ docker pull influxdb@sha256:3ebb11cf7bb1a2802cf4a2682fece9005609d6b7be263de2f700788baab239a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90983805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3294b3c9db170e6e47ccfee87a4b2dce367425151f66b1a6e33bdc4a898bdd76`
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
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:00 GMT
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
	-	`sha256:9b9261f27c9a77442d07a9bf9cde1b52469e701faa0488481d7a32f5cb137bb6`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315bdf0ddbb092647be6d409a48e66c1c12c93e603f757493c9f920120d4580c`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:3ebb11cf7bb1a2802cf4a2682fece9005609d6b7be263de2f700788baab239a3
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90983805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3294b3c9db170e6e47ccfee87a4b2dce367425151f66b1a6e33bdc4a898bdd76`
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
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 06 Sep 2017 21:44:59 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:00 GMT
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
	-	`sha256:9b9261f27c9a77442d07a9bf9cde1b52469e701faa0488481d7a32f5cb137bb6`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315bdf0ddbb092647be6d409a48e66c1c12c93e603f757493c9f920120d4580c`  
		Last Modified: Wed, 06 Sep 2017 21:46:21 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:e54e59e853feb7c0f5b17f1abf023267ef484f4aa662e82af7ddc86e4c4c209a
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d0c076cf81663d8a1b7be90e3ccb41a462d2e5cb10e3b55ff995c4460b826e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Sep 2017 21:45:12 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Sep 2017 21:45:17 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 06 Sep 2017 21:45:22 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Sep 2017 21:45:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Sep 2017 21:45:23 GMT
EXPOSE 8086/tcp
# Wed, 06 Sep 2017 21:45:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:25 GMT
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
	-	`sha256:38db098c8b0f6e6b41f6d0e123a43dda85f895e6883d9e87a3f75ef119b43b24`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.5 MB (1483351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566978a437d26d27dc91d24fdd369d89820bc452d1798fdaa8ad906847c1e19`  
		Last Modified: Wed, 06 Sep 2017 21:46:56 GMT  
		Size: 14.1 MB (14075927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce38057fb63f5974c0cd5949044a6a0730c5df5b65b8f3db11c01094cb1b801d`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db4dc5ca1bd680558bf1cdde03b818190ef5492d26f0108fbcefefbd59daaa`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483935166297a14ba86cb01f4ddd7147f26a366c55c2a67f6d9c312104ef13bb`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5-alpine`

```console
$ docker pull influxdb@sha256:e54e59e853feb7c0f5b17f1abf023267ef484f4aa662e82af7ddc86e4c4c209a
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d0c076cf81663d8a1b7be90e3ccb41a462d2e5cb10e3b55ff995c4460b826e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Sep 2017 21:45:12 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Sep 2017 21:45:17 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 06 Sep 2017 21:45:22 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Sep 2017 21:45:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Sep 2017 21:45:23 GMT
EXPOSE 8086/tcp
# Wed, 06 Sep 2017 21:45:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:25 GMT
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
	-	`sha256:38db098c8b0f6e6b41f6d0e123a43dda85f895e6883d9e87a3f75ef119b43b24`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.5 MB (1483351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566978a437d26d27dc91d24fdd369d89820bc452d1798fdaa8ad906847c1e19`  
		Last Modified: Wed, 06 Sep 2017 21:46:56 GMT  
		Size: 14.1 MB (14075927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce38057fb63f5974c0cd5949044a6a0730c5df5b65b8f3db11c01094cb1b801d`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db4dc5ca1bd680558bf1cdde03b818190ef5492d26f0108fbcefefbd59daaa`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483935166297a14ba86cb01f4ddd7147f26a366c55c2a67f6d9c312104ef13bb`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:e54e59e853feb7c0f5b17f1abf023267ef484f4aa662e82af7ddc86e4c4c209a
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17531280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d0c076cf81663d8a1b7be90e3ccb41a462d2e5cb10e3b55ff995c4460b826e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Sep 2017 21:45:12 GMT
RUN apk add --no-cache tzdata bash
# Wed, 06 Sep 2017 21:45:17 GMT
ENV INFLUXDB_VERSION=1.3.5
# Wed, 06 Sep 2017 21:45:22 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Sep 2017 21:45:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 06 Sep 2017 21:45:23 GMT
EXPOSE 8086/tcp
# Wed, 06 Sep 2017 21:45:23 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:5406ca035828e0692366f7cca79182f9a21bead3c21d742d4792ad07140052f8 in /entrypoint.sh 
# Wed, 06 Sep 2017 21:45:24 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Wed, 06 Sep 2017 21:45:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Sep 2017 21:45:25 GMT
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
	-	`sha256:38db098c8b0f6e6b41f6d0e123a43dda85f895e6883d9e87a3f75ef119b43b24`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.5 MB (1483351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566978a437d26d27dc91d24fdd369d89820bc452d1798fdaa8ad906847c1e19`  
		Last Modified: Wed, 06 Sep 2017 21:46:56 GMT  
		Size: 14.1 MB (14075927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce38057fb63f5974c0cd5949044a6a0730c5df5b65b8f3db11c01094cb1b801d`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db4dc5ca1bd680558bf1cdde03b818190ef5492d26f0108fbcefefbd59daaa`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483935166297a14ba86cb01f4ddd7147f26a366c55c2a67f6d9c312104ef13bb`  
		Last Modified: Wed, 06 Sep 2017 21:46:53 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
