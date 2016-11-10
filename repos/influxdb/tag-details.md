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
-	[`influxdb:1.1.0-rc2`](#influxdb110-rc2)
-	[`influxdb:1.1.0-rc2-alpine`](#influxdb110-rc2-alpine)

## `influxdb:0.13`

```console
$ docker pull influxdb@sha256:7c006813e74b94736f7edc89641178b96307b82d7dc398a4d667f5691e8983c1
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88041468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ec3a70bde06194f681e6935e32b3ce9afc54a161f81fcf9c69e63dfd64ce25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:57:29 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 08 Nov 2016 19:57:31 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:57:32 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:57:32 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 08 Nov 2016 19:57:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:57:33 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:57:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:57:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94a5df4e4d220ce378a3478bebdf8b69a8b6e49ab286f287f7a29635384efb`  
		Last Modified: Tue, 08 Nov 2016 19:58:02 GMT  
		Size: 18.1 MB (18148835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15c8206a0398a94ee2cb269180abbc6335d3f26e40bb7eb1ec611e75f23fdf`  
		Last Modified: Tue, 08 Nov 2016 19:57:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5a543b49c79f4dd721fb3502cc82d998cff7ff61af266831ac26a21b611833`  
		Last Modified: Tue, 08 Nov 2016 19:57:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:0.13.0`

```console
$ docker pull influxdb@sha256:7c006813e74b94736f7edc89641178b96307b82d7dc398a4d667f5691e8983c1
```

-	Platforms:
	-	linux; amd64

### `influxdb:0.13.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88041468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ec3a70bde06194f681e6935e32b3ce9afc54a161f81fcf9c69e63dfd64ce25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:57:29 GMT
ENV INFLUXDB_VERSION=0.13.0
# Tue, 08 Nov 2016 19:57:31 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:57:32 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:57:32 GMT
EXPOSE 8083/tcp 8086/tcp
# Tue, 08 Nov 2016 19:57:33 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:57:33 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:57:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:57:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94a5df4e4d220ce378a3478bebdf8b69a8b6e49ab286f287f7a29635384efb`  
		Last Modified: Tue, 08 Nov 2016 19:58:02 GMT  
		Size: 18.1 MB (18148835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15c8206a0398a94ee2cb269180abbc6335d3f26e40bb7eb1ec611e75f23fdf`  
		Last Modified: Tue, 08 Nov 2016 19:57:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5a543b49c79f4dd721fb3502cc82d998cff7ff61af266831ac26a21b611833`  
		Last Modified: Tue, 08 Nov 2016 19:57:52 GMT  
		Size: 184.0 B  
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
$ docker pull influxdb@sha256:196b9536bf9ff5984ee3236ce76d8834061f31db697d2772b1a9812a6205a056
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87686928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c313b7723704e64729c1031ad062da051a53a423ab9338186c916b9e740e01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:58:26 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 08 Nov 2016 19:58:28 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:58:29 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:58:30 GMT
EXPOSE 8086/tcp
# Tue, 08 Nov 2016 19:58:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:58:31 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:58:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd91d3f65dbd2844419b9d22aa203e7ac32664515393d24ba64da68284b23e2`  
		Last Modified: Tue, 08 Nov 2016 19:58:58 GMT  
		Size: 17.8 MB (17794295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c2681c38680bddf2795509137515eb69f302b43854e30865419af615cb86`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2563a8b3202fc63472df4325a068b20814535075e15b5f72c1af66858fbd5d6`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.0.2`

```console
$ docker pull influxdb@sha256:196b9536bf9ff5984ee3236ce76d8834061f31db697d2772b1a9812a6205a056
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87686928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c313b7723704e64729c1031ad062da051a53a423ab9338186c916b9e740e01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:58:26 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 08 Nov 2016 19:58:28 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:58:29 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:58:30 GMT
EXPOSE 8086/tcp
# Tue, 08 Nov 2016 19:58:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:58:31 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:58:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd91d3f65dbd2844419b9d22aa203e7ac32664515393d24ba64da68284b23e2`  
		Last Modified: Tue, 08 Nov 2016 19:58:58 GMT  
		Size: 17.8 MB (17794295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c2681c38680bddf2795509137515eb69f302b43854e30865419af615cb86`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2563a8b3202fc63472df4325a068b20814535075e15b5f72c1af66858fbd5d6`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:196b9536bf9ff5984ee3236ce76d8834061f31db697d2772b1a9812a6205a056
```

-	Platforms:
	-	linux; amd64

### `influxdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87686928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c313b7723704e64729c1031ad062da051a53a423ab9338186c916b9e740e01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 08 Nov 2016 19:58:26 GMT
ENV INFLUXDB_VERSION=1.0.2
# Tue, 08 Nov 2016 19:58:28 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 08 Nov 2016 19:58:29 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Tue, 08 Nov 2016 19:58:30 GMT
EXPOSE 8086/tcp
# Tue, 08 Nov 2016 19:58:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 08 Nov 2016 19:58:31 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Tue, 08 Nov 2016 19:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:58:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd91d3f65dbd2844419b9d22aa203e7ac32664515393d24ba64da68284b23e2`  
		Last Modified: Tue, 08 Nov 2016 19:58:58 GMT  
		Size: 17.8 MB (17794295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c2681c38680bddf2795509137515eb69f302b43854e30865419af615cb86`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2563a8b3202fc63472df4325a068b20814535075e15b5f72c1af66858fbd5d6`  
		Last Modified: Tue, 08 Nov 2016 19:58:50 GMT  
		Size: 184.0 B  
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

## `influxdb:1.1.0-rc2`

```console
$ docker pull influxdb@sha256:d5749fa1c4d278fea07f1e492544e0a0c1ae155389991cc53a00cb196430ee85
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.0-rc2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85423728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f91f3b88a388f1e586e33a09d036af272e3ea2ca42e810924d08cd6c78f512`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:00:47 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 10 Nov 2016 02:07:30 GMT
ENV INFLUXDB_VERSION=1.1.0~rc2
# Thu, 10 Nov 2016 02:07:35 GMT
RUN wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_amd64.deb.asc influxdb_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 10 Nov 2016 02:07:36 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Thu, 10 Nov 2016 02:07:36 GMT
EXPOSE 8086/tcp
# Thu, 10 Nov 2016 02:07:37 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Nov 2016 02:07:37 GMT
COPY file:812647bc923fb58bd6fba201df6d23a9311547ea81f3a598e86e2b93b2399169 in /entrypoint.sh 
# Thu, 10 Nov 2016 02:07:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2016 02:07:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c2f2069c8ad4411d8d0de5b23f1cc58b73ee10feba4907738119d4305fbb3`  
		Last Modified: Tue, 08 Nov 2016 19:01:13 GMT  
		Size: 6.7 KB (6745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846ec6e40c67a941af239f65b4bca1fdccdd76eb517d11bd0b52bced03a343d3`  
		Last Modified: Thu, 10 Nov 2016 02:10:16 GMT  
		Size: 15.5 MB (15531095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3142d6530b6ca76f0e52c76af3db835b7d25d5acc6d3d0dac1df0c012ce91841`  
		Last Modified: Thu, 10 Nov 2016 02:10:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cb8687ecf9a525e0d3d2f1bf8433f38da4e2f9dd2226ee7083621f72f17154`  
		Last Modified: Thu, 10 Nov 2016 02:10:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.1.0-rc2-alpine`

```console
$ docker pull influxdb@sha256:8bbbf048a788cd74391c45f07e83ead8c3214003f2b57c44d58c5d2b77cb4596
```

-	Platforms:
	-	linux; amd64

### `influxdb:1.1.0-rc2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13306311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974658939304564cd712b09a22a98fb47083024a739baf30fa8e93c53520e603`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Thu, 10 Nov 2016 02:07:38 GMT
ENV INFLUXDB_VERSION=1.1.0~rc2
# Thu, 10 Nov 2016 02:07:48 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Nov 2016 02:07:48 GMT
COPY file:cbca5b2cb2c16f6d9b796839e1bcf66ed4b994c8837f985a80d2247e8161bcc7 in /etc/influxdb/influxdb.conf 
# Thu, 10 Nov 2016 02:07:49 GMT
EXPOSE 8083/tcp 8086/tcp
# Thu, 10 Nov 2016 02:07:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 10 Nov 2016 02:07:49 GMT
COPY file:69ba622c5d14acee69909e208de64bf13aa81f0010ff82238c8825ba99d65290 in /entrypoint.sh 
# Thu, 10 Nov 2016 02:07:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2016 02:07:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839445bb1875ff77210e2d01e7c6b679a3d8917021a4c1eaf2d1cbf2ff106b4c`  
		Last Modified: Thu, 10 Nov 2016 02:10:38 GMT  
		Size: 11.0 MB (10992932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cf16490d167e3100e340743cc68780f2c1c6f137aee33b3b385b96e6e3867b`  
		Last Modified: Thu, 10 Nov 2016 02:10:33 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342727e9fb6a7210ba7492f24c87c23eaf8593aae672d4199d242addf253709e`  
		Last Modified: Thu, 10 Nov 2016 02:10:34 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
