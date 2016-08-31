<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.4`](#crate0554)
-	[`crate:0.52`](#crate052)
-	[`crate:0.52.4`](#crate0524)

## `crate:latest`

```console
$ docker pull crate@sha256:7c61c0ce1a85ea4684269e0045988a466770103d21a69200bd96247cd84a2db2
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4cbe4bb7bd35e0442623390c1fc17ac89fadac3061a76083a7a81d4d386e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 17 Aug 2016 17:12:19 GMT
ENV CRATE_VERSION=0.55.4
# Wed, 17 Aug 2016 17:12:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 17 Aug 2016 17:12:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Aug 2016 17:12:42 GMT
VOLUME [/data]
# Wed, 17 Aug 2016 17:12:43 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Wed, 17 Aug 2016 17:12:44 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Wed, 17 Aug 2016 17:12:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Wed, 17 Aug 2016 17:12:45 GMT
WORKDIR /data
# Wed, 17 Aug 2016 17:12:45 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 17 Aug 2016 17:12:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 17 Aug 2016 17:12:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046919ed7fe67b782b167ea9a0f096bffc844df5f081f704ef8abbe9c42887f4`  
		Last Modified: Wed, 17 Aug 2016 17:13:37 GMT  
		Size: 148.2 MB (148220616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c56c61df9e135f947f955b5835a1a9aa6ffab0a904f5cdace8259f06a3a1549`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9de0034fb1a32760517bd744798d6c7f3a8a226a67b0d11b09515c75417ad3`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f169d899600e574723ddf36d127e7fb564f3483781c8c1e1acdbb79e67a82fd`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a71caa11ab02e0a64b7edb7915cce93c0862fddead8f3950a57202034be5b`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55`

```console
$ docker pull crate@sha256:7c61c0ce1a85ea4684269e0045988a466770103d21a69200bd96247cd84a2db2
```

-	Platforms:
	-	linux; amd64

### `crate:0.55` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4cbe4bb7bd35e0442623390c1fc17ac89fadac3061a76083a7a81d4d386e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 17 Aug 2016 17:12:19 GMT
ENV CRATE_VERSION=0.55.4
# Wed, 17 Aug 2016 17:12:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 17 Aug 2016 17:12:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Aug 2016 17:12:42 GMT
VOLUME [/data]
# Wed, 17 Aug 2016 17:12:43 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Wed, 17 Aug 2016 17:12:44 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Wed, 17 Aug 2016 17:12:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Wed, 17 Aug 2016 17:12:45 GMT
WORKDIR /data
# Wed, 17 Aug 2016 17:12:45 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 17 Aug 2016 17:12:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 17 Aug 2016 17:12:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046919ed7fe67b782b167ea9a0f096bffc844df5f081f704ef8abbe9c42887f4`  
		Last Modified: Wed, 17 Aug 2016 17:13:37 GMT  
		Size: 148.2 MB (148220616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c56c61df9e135f947f955b5835a1a9aa6ffab0a904f5cdace8259f06a3a1549`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9de0034fb1a32760517bd744798d6c7f3a8a226a67b0d11b09515c75417ad3`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f169d899600e574723ddf36d127e7fb564f3483781c8c1e1acdbb79e67a82fd`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a71caa11ab02e0a64b7edb7915cce93c0862fddead8f3950a57202034be5b`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55.4`

```console
$ docker pull crate@sha256:7c61c0ce1a85ea4684269e0045988a466770103d21a69200bd96247cd84a2db2
```

-	Platforms:
	-	linux; amd64

### `crate:0.55.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4cbe4bb7bd35e0442623390c1fc17ac89fadac3061a76083a7a81d4d386e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 17 Aug 2016 17:12:19 GMT
ENV CRATE_VERSION=0.55.4
# Wed, 17 Aug 2016 17:12:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 17 Aug 2016 17:12:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Aug 2016 17:12:42 GMT
VOLUME [/data]
# Wed, 17 Aug 2016 17:12:43 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Wed, 17 Aug 2016 17:12:44 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Wed, 17 Aug 2016 17:12:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Wed, 17 Aug 2016 17:12:45 GMT
WORKDIR /data
# Wed, 17 Aug 2016 17:12:45 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 17 Aug 2016 17:12:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 17 Aug 2016 17:12:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046919ed7fe67b782b167ea9a0f096bffc844df5f081f704ef8abbe9c42887f4`  
		Last Modified: Wed, 17 Aug 2016 17:13:37 GMT  
		Size: 148.2 MB (148220616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c56c61df9e135f947f955b5835a1a9aa6ffab0a904f5cdace8259f06a3a1549`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9de0034fb1a32760517bd744798d6c7f3a8a226a67b0d11b09515c75417ad3`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f169d899600e574723ddf36d127e7fb564f3483781c8c1e1acdbb79e67a82fd`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0a71caa11ab02e0a64b7edb7915cce93c0862fddead8f3950a57202034be5b`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.52`

```console
$ docker pull crate@sha256:24e156d03b9793ec5041797adba9ec92b4f093ef7e0f3d7ba05f8064bea12fcd
```

-	Platforms:
	-	linux; amd64

### `crate:0.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180966574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63741a489c5ddd83e544e44f328328b6ca12759f67b38d97e0a768a51c655eb6`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:44:33 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Wed, 31 Aug 2016 20:44:45 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Wed, 31 Aug 2016 20:44:46 GMT
ENV CRATE_VERSION=0.52.4
# Wed, 31 Aug 2016 20:44:48 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Wed, 31 Aug 2016 20:44:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:44:48 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 20:44:49 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 31 Aug 2016 20:44:49 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 31 Aug 2016 20:44:50 GMT
WORKDIR /data
# Wed, 31 Aug 2016 20:44:50 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 31 Aug 2016 20:44:50 GMT
CMD ["crate"]
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
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d886b6433872be16a09255b167a3512469029133f87a14a12fe4cbb3f030833d`  
		Last Modified: Wed, 31 Aug 2016 20:44:59 GMT  
		Size: 9.5 MB (9505493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18471517c0b3b85c1359b59eb50a7fc8ae74329baba53e7b0381e3c38a58442f`  
		Last Modified: Wed, 31 Aug 2016 20:45:02 GMT  
		Size: 47.3 MB (47311866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d3632ea88b70ac040ddcadc509bbfddc0ef9df950aab60529b034b8d62305c`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bcdb22f768f6b368bde59f6866b9b57aa9641933a7cb22faa662e84aaf9d78`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750cabf41842ca2735ec2113c10361ec609a7381d0698c55bcf44768043d369d`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.52.4`

```console
$ docker pull crate@sha256:24e156d03b9793ec5041797adba9ec92b4f093ef7e0f3d7ba05f8064bea12fcd
```

-	Platforms:
	-	linux; amd64

### `crate:0.52.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180966574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63741a489c5ddd83e544e44f328328b6ca12759f67b38d97e0a768a51c655eb6`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:44:33 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Wed, 31 Aug 2016 20:44:45 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Wed, 31 Aug 2016 20:44:46 GMT
ENV CRATE_VERSION=0.52.4
# Wed, 31 Aug 2016 20:44:48 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Wed, 31 Aug 2016 20:44:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:44:48 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 20:44:49 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 31 Aug 2016 20:44:49 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 31 Aug 2016 20:44:50 GMT
WORKDIR /data
# Wed, 31 Aug 2016 20:44:50 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 31 Aug 2016 20:44:50 GMT
CMD ["crate"]
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
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d886b6433872be16a09255b167a3512469029133f87a14a12fe4cbb3f030833d`  
		Last Modified: Wed, 31 Aug 2016 20:44:59 GMT  
		Size: 9.5 MB (9505493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18471517c0b3b85c1359b59eb50a7fc8ae74329baba53e7b0381e3c38a58442f`  
		Last Modified: Wed, 31 Aug 2016 20:45:02 GMT  
		Size: 47.3 MB (47311866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d3632ea88b70ac040ddcadc509bbfddc0ef9df950aab60529b034b8d62305c`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bcdb22f768f6b368bde59f6866b9b57aa9641933a7cb22faa662e84aaf9d78`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750cabf41842ca2735ec2113c10361ec609a7381d0698c55bcf44768043d369d`  
		Last Modified: Wed, 31 Aug 2016 20:44:55 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
