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
$ docker pull influxdb@sha256:dbabb87ec89c0ecbd523ca8d43879ef6a1a6e392aad42c78d736e1e205ec348b
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89374811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf400fed2e54fb1b460dad7e42207d404e47fe381f109ffbd72a7579550918d9`
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
# Fri, 08 Sep 2017 07:28:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 07:28:48 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 08 Sep 2017 07:28:51 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 08 Sep 2017 07:28:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 08 Sep 2017 07:28:55 GMT
EXPOSE 8086/tcp
# Fri, 08 Sep 2017 07:28:55 GMT
VOLUME [/var/lib/influxdb]
# Fri, 08 Sep 2017 07:28:56 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:28:56 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 08 Sep 2017 07:28:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:28:57 GMT
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
	-	`sha256:0ab5060f1b90bfd786cae572712e2eca19f9831b9236bfadbc201bf8a627d250`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf772ea924f68f42ce3157740cc34e8c89d4bf70e025564bf29a71b2fd0f78b`  
		Last Modified: Fri, 08 Sep 2017 19:23:51 GMT  
		Size: 17.5 MB (17507447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6faaf67b98077bf21eff75403c93611806c4ac36faea30da522207ca4194b03`  
		Last Modified: Fri, 08 Sep 2017 19:23:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fc809b7f5e76ccd922388303f2a1530db20216c146c0c5f0c77edcf6b41146`  
		Last Modified: Fri, 08 Sep 2017 19:23:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5592c084f0fc68b40c922e459ef7f3b40211b99ab16bc318a507210326741844`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.2.4`

```console
$ docker pull influxdb@sha256:dbabb87ec89c0ecbd523ca8d43879ef6a1a6e392aad42c78d736e1e205ec348b
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89374811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf400fed2e54fb1b460dad7e42207d404e47fe381f109ffbd72a7579550918d9`
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
# Fri, 08 Sep 2017 07:28:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 07:28:48 GMT
ENV INFLUXDB_VERSION=1.2.4
# Fri, 08 Sep 2017 07:28:51 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 08 Sep 2017 07:28:54 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 08 Sep 2017 07:28:55 GMT
EXPOSE 8086/tcp
# Fri, 08 Sep 2017 07:28:55 GMT
VOLUME [/var/lib/influxdb]
# Fri, 08 Sep 2017 07:28:56 GMT
COPY file:db591027b32636394e91354b5b3dfa6f1df5d8a47df5559e4b71addb1b0f9d0d in /entrypoint.sh 
# Fri, 08 Sep 2017 07:28:56 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 08 Sep 2017 07:28:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:28:57 GMT
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
	-	`sha256:0ab5060f1b90bfd786cae572712e2eca19f9831b9236bfadbc201bf8a627d250`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf772ea924f68f42ce3157740cc34e8c89d4bf70e025564bf29a71b2fd0f78b`  
		Last Modified: Fri, 08 Sep 2017 19:23:51 GMT  
		Size: 17.5 MB (17507447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6faaf67b98077bf21eff75403c93611806c4ac36faea30da522207ca4194b03`  
		Last Modified: Fri, 08 Sep 2017 19:23:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fc809b7f5e76ccd922388303f2a1530db20216c146c0c5f0c77edcf6b41146`  
		Last Modified: Fri, 08 Sep 2017 19:23:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5592c084f0fc68b40c922e459ef7f3b40211b99ab16bc318a507210326741844`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 1.1 KB (1147 bytes)  
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
$ docker pull influxdb@sha256:a00a01742a4e4bc4a07d2b37170e7d6afc839fc2803a53400df0829473817062
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399b004a8d8de95bd2fa9f71a1b64d3732d6ffb32a7f9f75672b32bd3b2060d`
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
# Fri, 08 Sep 2017 07:28:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 07:29:08 GMT
ENV INFLUXDB_VERSION=1.3.5
# Fri, 08 Sep 2017 07:29:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 08 Sep 2017 07:29:16 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 08 Sep 2017 07:29:17 GMT
EXPOSE 8086/tcp
# Fri, 08 Sep 2017 07:29:17 GMT
VOLUME [/var/lib/influxdb]
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:29:23 GMT
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
	-	`sha256:0ab5060f1b90bfd786cae572712e2eca19f9831b9236bfadbc201bf8a627d250`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a24773d61ae2cbd45fc5a7c2d83208b1863e199fba9dc22768c62c359feb7`  
		Last Modified: Fri, 08 Sep 2017 19:24:17 GMT  
		Size: 19.1 MB (19106501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eb252e4ff861832bd5d8e9d45bf515a146890c39f2230108851d318aa937d5`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07852d4cf8d94dc8f0ef7990a40054097867ff8e97ceac9c216cbe39f733abd9`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d14792b8a5e88ee4e12236f465ac68640383e37032f199a91fd74fade127f91`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.5`

```console
$ docker pull influxdb@sha256:a00a01742a4e4bc4a07d2b37170e7d6afc839fc2803a53400df0829473817062
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399b004a8d8de95bd2fa9f71a1b64d3732d6ffb32a7f9f75672b32bd3b2060d`
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
# Fri, 08 Sep 2017 07:28:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 07:29:08 GMT
ENV INFLUXDB_VERSION=1.3.5
# Fri, 08 Sep 2017 07:29:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 08 Sep 2017 07:29:16 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 08 Sep 2017 07:29:17 GMT
EXPOSE 8086/tcp
# Fri, 08 Sep 2017 07:29:17 GMT
VOLUME [/var/lib/influxdb]
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:29:23 GMT
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
	-	`sha256:0ab5060f1b90bfd786cae572712e2eca19f9831b9236bfadbc201bf8a627d250`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a24773d61ae2cbd45fc5a7c2d83208b1863e199fba9dc22768c62c359feb7`  
		Last Modified: Fri, 08 Sep 2017 19:24:17 GMT  
		Size: 19.1 MB (19106501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eb252e4ff861832bd5d8e9d45bf515a146890c39f2230108851d318aa937d5`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07852d4cf8d94dc8f0ef7990a40054097867ff8e97ceac9c216cbe39f733abd9`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d14792b8a5e88ee4e12236f465ac68640383e37032f199a91fd74fade127f91`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:a00a01742a4e4bc4a07d2b37170e7d6afc839fc2803a53400df0829473817062
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90973865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399b004a8d8de95bd2fa9f71a1b64d3732d6ffb32a7f9f75672b32bd3b2060d`
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
# Fri, 08 Sep 2017 07:28:48 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Sep 2017 07:29:08 GMT
ENV INFLUXDB_VERSION=1.3.5
# Fri, 08 Sep 2017 07:29:12 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 08 Sep 2017 07:29:16 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 08 Sep 2017 07:29:17 GMT
EXPOSE 8086/tcp
# Fri, 08 Sep 2017 07:29:17 GMT
VOLUME [/var/lib/influxdb]
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 08 Sep 2017 07:29:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 07:29:23 GMT
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
	-	`sha256:0ab5060f1b90bfd786cae572712e2eca19f9831b9236bfadbc201bf8a627d250`  
		Last Modified: Fri, 08 Sep 2017 19:23:46 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a24773d61ae2cbd45fc5a7c2d83208b1863e199fba9dc22768c62c359feb7`  
		Last Modified: Fri, 08 Sep 2017 19:24:17 GMT  
		Size: 19.1 MB (19106501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4eb252e4ff861832bd5d8e9d45bf515a146890c39f2230108851d318aa937d5`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07852d4cf8d94dc8f0ef7990a40054097867ff8e97ceac9c216cbe39f733abd9`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d14792b8a5e88ee4e12236f465ac68640383e37032f199a91fd74fade127f91`  
		Last Modified: Fri, 08 Sep 2017 19:24:12 GMT  
		Size: 1.1 KB (1147 bytes)  
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
