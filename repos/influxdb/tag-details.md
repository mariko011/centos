<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:0.13`](#influxdb013)
-	[`influxdb:0.13.0`](#influxdb0130)
-	[`influxdb:0.13-alpine`](#influxdb013-alpine)
-	[`influxdb:0.13.0-alpine`](#influxdb0130-alpine)
-	[`influxdb:1.0`](#influxdb10)
-	[`influxdb:1.0.2`](#influxdb102)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:1.0-alpine`](#influxdb10-alpine)
-	[`influxdb:1.0.2-alpine`](#influxdb102-alpine)
-	[`influxdb:alpine`](#influxdbalpine)

## `influxdb:0.13`

```console
$ docker pull influxdb@sha256:80b0c5c006afb15a363e6ae3b50b311bdf72fcde93c6e9a4f7b858805084ff47
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88038347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c9199278a7c3a0b016d58fd95b457579825b45653523df21ee60e3f0686459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 23 Sep 2016 19:19:59 GMT
ENV INFLUXDB_VERSION=0.13.0
# Fri, 23 Sep 2016 19:20:02 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:20:02 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Fri, 23 Sep 2016 19:20:03 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 23 Sep 2016 19:20:03 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Sep 2016 19:20:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:20:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:20:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330a50de64010d1d79d823e75d61b0340af9ea1bc1fd2b44bb17e37d7b02e0f`  
		Last Modified: Fri, 23 Sep 2016 19:20:18 GMT  
		Size: 18.1 MB (18148550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d63b0d1873606a61acaf0adb420af8d1d15a01b2ede52d7e87c6848b7c4b56`  
		Last Modified: Fri, 23 Sep 2016 19:20:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58128b2915fb6902a47170d08c7579bbdd5948204420166eeceee1c90f5f3e12`  
		Last Modified: Fri, 23 Sep 2016 19:20:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0`

```console
$ docker pull influxdb@sha256:80b0c5c006afb15a363e6ae3b50b311bdf72fcde93c6e9a4f7b858805084ff47
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88038347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c9199278a7c3a0b016d58fd95b457579825b45653523df21ee60e3f0686459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 23 Sep 2016 19:19:59 GMT
ENV INFLUXDB_VERSION=0.13.0
# Fri, 23 Sep 2016 19:20:02 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 23 Sep 2016 19:20:02 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Fri, 23 Sep 2016 19:20:03 GMT
EXPOSE 8083/tcp 8086/tcp
# Fri, 23 Sep 2016 19:20:03 GMT
VOLUME [/var/lib/influxdb]
# Fri, 23 Sep 2016 19:20:03 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:20:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:20:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330a50de64010d1d79d823e75d61b0340af9ea1bc1fd2b44bb17e37d7b02e0f`  
		Last Modified: Fri, 23 Sep 2016 19:20:18 GMT  
		Size: 18.1 MB (18148550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d63b0d1873606a61acaf0adb420af8d1d15a01b2ede52d7e87c6848b7c4b56`  
		Last Modified: Fri, 23 Sep 2016 19:20:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58128b2915fb6902a47170d08c7579bbdd5948204420166eeceee1c90f5f3e12`  
		Last Modified: Fri, 23 Sep 2016 19:20:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13-alpine`

```console
$ docker pull influxdb@sha256:2b5eb981632bd0694d4abd16d646e07bc079a479820228ac4c5bbd8181575b19
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15841240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8669f0cbab274dfddb96a1ec50c485b14743a7c0f2db90f2fa06e5219d419e3d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:28:51 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 18 Oct 2016 23:29:00 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:01 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2198dbc82298e938bea953eb3de3f35de7ab85ff7ca39bb222610b7cf45f7c96`  
		Last Modified: Tue, 18 Oct 2016 23:29:19 GMT  
		Size: 13.5 MB (13527861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f15c167bf8ccae6616b62896111790b330ad3e04039d20d05b8325c2aa4b874`  
		Last Modified: Tue, 18 Oct 2016 23:29:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9915bc4f80945444041f660bac189f51c0e808aa67833038d64c27efe63d0ff`  
		Last Modified: Tue, 18 Oct 2016 23:29:12 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0-alpine`

```console
$ docker pull influxdb@sha256:2b5eb981632bd0694d4abd16d646e07bc079a479820228ac4c5bbd8181575b19
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15841240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8669f0cbab274dfddb96a1ec50c485b14743a7c0f2db90f2fa06e5219d419e3d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:28:51 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 18 Oct 2016 23:29:00 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:01 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:01 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:02 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2198dbc82298e938bea953eb3de3f35de7ab85ff7ca39bb222610b7cf45f7c96`  
		Last Modified: Tue, 18 Oct 2016 23:29:19 GMT  
		Size: 13.5 MB (13527861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f15c167bf8ccae6616b62896111790b330ad3e04039d20d05b8325c2aa4b874`  
		Last Modified: Tue, 18 Oct 2016 23:29:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9915bc4f80945444041f660bac189f51c0e808aa67833038d64c27efe63d0ff`  
		Last Modified: Tue, 18 Oct 2016 23:29:12 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0`

```console
$ docker pull influxdb@sha256:3c6c30a1236d2c95f6689fe2936f0594d5689dd15800bd40a578f6ef53f7f05a
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87683853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b43fdbaeeed1ab3fed0718df18a2503b1c90fae68adddaa780c436c3176b96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 05 Oct 2016 23:01:36 GMT
ENV INFLUXDB_VERSION=1.0.2
# Wed, 05 Oct 2016 23:01:42 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 05 Oct 2016 23:01:42 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 05 Oct 2016 23:01:42 GMT
EXPOSE 8086/tcp
# Wed, 05 Oct 2016 23:01:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Oct 2016 23:01:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 05 Oct 2016 23:01:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Oct 2016 23:01:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8bc7e041ad1ddff8cb492af3055fa09cc9e02fc6dcc48721465d6e8e899470`  
		Last Modified: Wed, 05 Oct 2016 23:02:52 GMT  
		Size: 17.8 MB (17794057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6b53780f426a9d0ee333e3a7273fed6c36725237fb69ccf87544d23f707365`  
		Last Modified: Wed, 05 Oct 2016 23:02:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270f3834d3446814d3d4468fa850708cff138404cc504c86a827a7988a127a91`  
		Last Modified: Wed, 05 Oct 2016 23:02:44 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2`

```console
$ docker pull influxdb@sha256:3c6c30a1236d2c95f6689fe2936f0594d5689dd15800bd40a578f6ef53f7f05a
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87683853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b43fdbaeeed1ab3fed0718df18a2503b1c90fae68adddaa780c436c3176b96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 05 Oct 2016 23:01:36 GMT
ENV INFLUXDB_VERSION=1.0.2
# Wed, 05 Oct 2016 23:01:42 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 05 Oct 2016 23:01:42 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Wed, 05 Oct 2016 23:01:42 GMT
EXPOSE 8086/tcp
# Wed, 05 Oct 2016 23:01:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Oct 2016 23:01:43 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Wed, 05 Oct 2016 23:01:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Oct 2016 23:01:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8bc7e041ad1ddff8cb492af3055fa09cc9e02fc6dcc48721465d6e8e899470`  
		Last Modified: Wed, 05 Oct 2016 23:02:52 GMT  
		Size: 17.8 MB (17794057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6b53780f426a9d0ee333e3a7273fed6c36725237fb69ccf87544d23f707365`  
		Last Modified: Wed, 05 Oct 2016 23:02:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270f3834d3446814d3d4468fa850708cff138404cc504c86a827a7988a127a91`  
		Last Modified: Wed, 05 Oct 2016 23:02:44 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:7ff3de2dc47f3f5121e17de8d4846b437d4a73589690a04c3971d53bab25498a
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87682977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dad3c7b2ca2fec44eb75d3b9acd1d8ea5913d22f63174ec3355ffb16f0fcf50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 26 Sep 2016 21:28:59 GMT
ENV INFLUXDB_VERSION=1.0.1
# Mon, 26 Sep 2016 21:29:06 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Mon, 26 Sep 2016 21:29:07 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Mon, 26 Sep 2016 21:29:07 GMT
EXPOSE 8086/tcp
# Mon, 26 Sep 2016 21:29:07 GMT
VOLUME [/var/lib/influxdb]
# Mon, 26 Sep 2016 21:29:08 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Mon, 26 Sep 2016 21:29:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Sep 2016 21:29:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921711b3a595505281ec58a0087729ec7f49c21b60cb12b3d7f03cc2c5a2ed52`  
		Last Modified: Mon, 26 Sep 2016 21:30:24 GMT  
		Size: 17.8 MB (17793174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c8f8fbce9301d36097439632914731d72d09aa7cb56b19fc510705d4af1d8e`  
		Last Modified: Mon, 26 Sep 2016 21:30:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a056a28dcb679c8fa254998fcb578f4d2044c4620cedd8aaf346312c0129bf`  
		Last Modified: Mon, 26 Sep 2016 21:30:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0-alpine`

```console
$ docker pull influxdb@sha256:04e0d1b135dd006ef95ff8e86b67da392f3557297e886d87b90dccb706004ee0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c431b15d63f71eab223e4a8df3a5e685be3828d91b963db4c1fa678ca1e340e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:29:37 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 18 Oct 2016 23:29:44 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:45 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0d400d86dd946a067b0c023d475caa22aeb410bb0a5f3cb1e9651e1eba76ac`  
		Last Modified: Tue, 18 Oct 2016 23:30:03 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a706c5ca65efbc919fec310a19d824b7f776e53e2c014f35f6b16acd512ec3`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb4d36f3b21ebe72fe32d206494d1e612527675d5e946100ffc424c6a7617e1`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2-alpine`

```console
$ docker pull influxdb@sha256:04e0d1b135dd006ef95ff8e86b67da392f3557297e886d87b90dccb706004ee0
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c431b15d63f71eab223e4a8df3a5e685be3828d91b963db4c1fa678ca1e340e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:29:37 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 18 Oct 2016 23:29:44 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:45 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0d400d86dd946a067b0c023d475caa22aeb410bb0a5f3cb1e9651e1eba76ac`  
		Last Modified: Tue, 18 Oct 2016 23:30:03 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a706c5ca65efbc919fec310a19d824b7f776e53e2c014f35f6b16acd512ec3`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb4d36f3b21ebe72fe32d206494d1e612527675d5e946100ffc424c6a7617e1`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:04e0d1b135dd006ef95ff8e86b67da392f3557297e886d87b90dccb706004ee0
```

-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15600480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c431b15d63f71eab223e4a8df3a5e685be3828d91b963db4c1fa678ca1e340e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:29:37 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 18 Oct 2016 23:29:44 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Oct 2016 23:29:44 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 18 Oct 2016 23:29:44 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 18 Oct 2016 23:29:45 GMT
VOLUME [/var/lib/influxdb]
# Tue, 18 Oct 2016 23:29:45 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Tue, 18 Oct 2016 23:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 23:29:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0d400d86dd946a067b0c023d475caa22aeb410bb0a5f3cb1e9651e1eba76ac`  
		Last Modified: Tue, 18 Oct 2016 23:30:03 GMT  
		Size: 13.3 MB (13287103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a706c5ca65efbc919fec310a19d824b7f776e53e2c014f35f6b16acd512ec3`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb4d36f3b21ebe72fe32d206494d1e612527675d5e946100ffc424c6a7617e1`  
		Last Modified: Tue, 18 Oct 2016 23:29:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
