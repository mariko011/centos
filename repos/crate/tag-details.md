<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.5`](#crate0555)
-	[`crate:0.52`](#crate052)
-	[`crate:0.52.4`](#crate0524)

## `crate:latest`

```console
$ docker pull crate@sha256:1f2b5fc36a3829b34905809a19199cc54fda4bc839ce306b0e21247c8c74a904
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151112303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba2413943277cb154a91dc2387b52d60d98be153f85302ee3aaeacc4d720b51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:35:26 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 23 Sep 2016 16:35:27 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 16:35:39 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 23 Sep 2016 16:35:40 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 23 Sep 2016 16:35:41 GMT
ENV CRATE_VERSION=0.55.5
# Fri, 23 Sep 2016 16:35:53 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Fri, 23 Sep 2016 16:35:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:35:54 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 23 Sep 2016 16:35:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 23 Sep 2016 16:35:56 GMT
WORKDIR /data
# Fri, 23 Sep 2016 16:35:56 GMT
EXPOSE 4200/tcp 4300/tcp
# Fri, 23 Sep 2016 16:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:35:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa15639b8a6962f96d127c07fcf2555b14e43abb003cf524797c898dbfc9ed4`  
		Last Modified: Fri, 23 Sep 2016 16:36:07 GMT  
		Size: 581.8 KB (581776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5e88313fc00b33683542d589e59ba6efbd87f4040b76a7de9549d1e832cb66`  
		Last Modified: Fri, 23 Sep 2016 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8f73496dedc8b6d49717bf724e13a877dd9cbf6f3c5ee3cde51ccd96922238`  
		Last Modified: Fri, 23 Sep 2016 16:36:24 GMT  
		Size: 148.2 MB (148215419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be0c50f3f1cb048b4102bab06bddb5496e5b0ce85376f95285fc30e57a10fb`  
		Last Modified: Fri, 23 Sep 2016 16:36:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb004c87cf1d5e246edfcab6ab811ca2d8c4f6de94bd7b5e0c308e2a31ac66d`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e35bf28cb1322c9b63aa618178411cd8cc51e0ebae73b06eb54e3d4d94ead`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ffa1fb9d3c0b74630efef7ec38e07c1b479d0965216b605001e920332f347`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55`

```console
$ docker pull crate@sha256:1f2b5fc36a3829b34905809a19199cc54fda4bc839ce306b0e21247c8c74a904
```

-	Platforms:
	-	linux; amd64

### `crate:0.55` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151112303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba2413943277cb154a91dc2387b52d60d98be153f85302ee3aaeacc4d720b51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:35:26 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 23 Sep 2016 16:35:27 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 16:35:39 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 23 Sep 2016 16:35:40 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 23 Sep 2016 16:35:41 GMT
ENV CRATE_VERSION=0.55.5
# Fri, 23 Sep 2016 16:35:53 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Fri, 23 Sep 2016 16:35:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:35:54 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 23 Sep 2016 16:35:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 23 Sep 2016 16:35:56 GMT
WORKDIR /data
# Fri, 23 Sep 2016 16:35:56 GMT
EXPOSE 4200/tcp 4300/tcp
# Fri, 23 Sep 2016 16:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:35:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa15639b8a6962f96d127c07fcf2555b14e43abb003cf524797c898dbfc9ed4`  
		Last Modified: Fri, 23 Sep 2016 16:36:07 GMT  
		Size: 581.8 KB (581776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5e88313fc00b33683542d589e59ba6efbd87f4040b76a7de9549d1e832cb66`  
		Last Modified: Fri, 23 Sep 2016 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8f73496dedc8b6d49717bf724e13a877dd9cbf6f3c5ee3cde51ccd96922238`  
		Last Modified: Fri, 23 Sep 2016 16:36:24 GMT  
		Size: 148.2 MB (148215419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be0c50f3f1cb048b4102bab06bddb5496e5b0ce85376f95285fc30e57a10fb`  
		Last Modified: Fri, 23 Sep 2016 16:36:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb004c87cf1d5e246edfcab6ab811ca2d8c4f6de94bd7b5e0c308e2a31ac66d`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e35bf28cb1322c9b63aa618178411cd8cc51e0ebae73b06eb54e3d4d94ead`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ffa1fb9d3c0b74630efef7ec38e07c1b479d0965216b605001e920332f347`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55.5`

```console
$ docker pull crate@sha256:1f2b5fc36a3829b34905809a19199cc54fda4bc839ce306b0e21247c8c74a904
```

-	Platforms:
	-	linux; amd64

### `crate:0.55.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151112303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba2413943277cb154a91dc2387b52d60d98be153f85302ee3aaeacc4d720b51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:35:26 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 23 Sep 2016 16:35:27 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 16:35:39 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 23 Sep 2016 16:35:40 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 23 Sep 2016 16:35:41 GMT
ENV CRATE_VERSION=0.55.5
# Fri, 23 Sep 2016 16:35:53 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Fri, 23 Sep 2016 16:35:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:35:54 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 23 Sep 2016 16:35:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 23 Sep 2016 16:35:56 GMT
WORKDIR /data
# Fri, 23 Sep 2016 16:35:56 GMT
EXPOSE 4200/tcp 4300/tcp
# Fri, 23 Sep 2016 16:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:35:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa15639b8a6962f96d127c07fcf2555b14e43abb003cf524797c898dbfc9ed4`  
		Last Modified: Fri, 23 Sep 2016 16:36:07 GMT  
		Size: 581.8 KB (581776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5e88313fc00b33683542d589e59ba6efbd87f4040b76a7de9549d1e832cb66`  
		Last Modified: Fri, 23 Sep 2016 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8f73496dedc8b6d49717bf724e13a877dd9cbf6f3c5ee3cde51ccd96922238`  
		Last Modified: Fri, 23 Sep 2016 16:36:24 GMT  
		Size: 148.2 MB (148215419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be0c50f3f1cb048b4102bab06bddb5496e5b0ce85376f95285fc30e57a10fb`  
		Last Modified: Fri, 23 Sep 2016 16:36:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb004c87cf1d5e246edfcab6ab811ca2d8c4f6de94bd7b5e0c308e2a31ac66d`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e35bf28cb1322c9b63aa618178411cd8cc51e0ebae73b06eb54e3d4d94ead`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ffa1fb9d3c0b74630efef7ec38e07c1b479d0965216b605001e920332f347`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.52`

```console
$ docker pull crate@sha256:99f1978c124700725e59c3c66b42b8dc7d14a0890fae96f0923212e679908917
```

-	Platforms:
	-	linux; amd64

### `crate:0.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180953329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29671bdbec05ec7f7403a7cfdab64d67b643ca97e095c20371190e9ff3d862c`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 17:50:14 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Tue, 20 Sep 2016 17:50:29 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Tue, 20 Sep 2016 17:50:29 GMT
ENV CRATE_VERSION=0.52.4
# Tue, 20 Sep 2016 17:50:39 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Tue, 20 Sep 2016 17:50:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 17:50:40 GMT
VOLUME [/data]
# Tue, 20 Sep 2016 17:50:40 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 20 Sep 2016 17:50:41 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 20 Sep 2016 17:50:41 GMT
WORKDIR /data
# Tue, 20 Sep 2016 17:50:41 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 20 Sep 2016 17:50:41 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f221e348edd9d590952a4b441c12ef8f1590270ed44b4e3d9a5eae69af1fc2`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 9.5 MB (9505533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d677b99ba015577e0a25fbd0241eed9d2cef506c6c579f18ab76f15e973250`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 47.3 MB (47311871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642283d6f0a1db839383a87d35346dc338079c32a9136a937e5b07ebea501bc1`  
		Last Modified: Tue, 20 Sep 2016 17:51:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e103e3480438eab12d9c850477bbaf0d47e41bb77a3fdf9690023585ebc7271c`  
		Last Modified: Tue, 20 Sep 2016 17:51:45 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094a624b1c11dcd356da6cb6dc43f7dab9d9566216370a26c01252aa78b5169a`  
		Last Modified: Tue, 20 Sep 2016 17:51:44 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.52.4`

```console
$ docker pull crate@sha256:99f1978c124700725e59c3c66b42b8dc7d14a0890fae96f0923212e679908917
```

-	Platforms:
	-	linux; amd64

### `crate:0.52.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180953329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29671bdbec05ec7f7403a7cfdab64d67b643ca97e095c20371190e9ff3d862c`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 17:50:14 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Tue, 20 Sep 2016 17:50:29 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Tue, 20 Sep 2016 17:50:29 GMT
ENV CRATE_VERSION=0.52.4
# Tue, 20 Sep 2016 17:50:39 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Tue, 20 Sep 2016 17:50:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 17:50:40 GMT
VOLUME [/data]
# Tue, 20 Sep 2016 17:50:40 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 20 Sep 2016 17:50:41 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 20 Sep 2016 17:50:41 GMT
WORKDIR /data
# Tue, 20 Sep 2016 17:50:41 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 20 Sep 2016 17:50:41 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f221e348edd9d590952a4b441c12ef8f1590270ed44b4e3d9a5eae69af1fc2`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 9.5 MB (9505533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d677b99ba015577e0a25fbd0241eed9d2cef506c6c579f18ab76f15e973250`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 47.3 MB (47311871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642283d6f0a1db839383a87d35346dc338079c32a9136a937e5b07ebea501bc1`  
		Last Modified: Tue, 20 Sep 2016 17:51:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e103e3480438eab12d9c850477bbaf0d47e41bb77a3fdf9690023585ebc7271c`  
		Last Modified: Tue, 20 Sep 2016 17:51:45 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094a624b1c11dcd356da6cb6dc43f7dab9d9566216370a26c01252aa78b5169a`  
		Last Modified: Tue, 20 Sep 2016 17:51:44 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
