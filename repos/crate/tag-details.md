<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.56`](#crate056)
-	[`crate:0.56.2`](#crate0562)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.7`](#crate0557)

## `crate:latest`

```console
$ docker pull crate@sha256:1ef01b5656c82419bb8dfe38f6f30b2ad607c3be41a3e6a3a64f56477749922c
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151984021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f9c977c2ca547959db15541893e0baf128758d696a2fe0c348ad44689eb70d3`
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
# Wed, 12 Oct 2016 17:00:01 GMT
ENV CRATE_VERSION=0.55.6
# Wed, 12 Oct 2016 17:00:24 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 12 Oct 2016 17:00:25 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Oct 2016 17:00:25 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 17:00:25 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 12 Oct 2016 17:00:26 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 12 Oct 2016 17:00:26 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 12 Oct 2016 17:00:27 GMT
WORKDIR /data
# Wed, 12 Oct 2016 17:00:27 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 12 Oct 2016 17:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 17:00:27 GMT
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
	-	`sha256:5b3eaf04726c8b6989cc8ecbe42b4532e49e7783ca11ce101f37b4ba9034bc91`  
		Last Modified: Wed, 12 Oct 2016 17:01:05 GMT  
		Size: 149.1 MB (149087141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c18c785af4ddd80c07073860b6512a70dbfe81f91085641e7a74f00b5712985`  
		Last Modified: Wed, 12 Oct 2016 17:00:39 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f27bf3edf7e9224c559685ac993b4937f8f93b4476e38167056eab4277a3681`  
		Last Modified: Wed, 12 Oct 2016 17:00:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457d1eecd19731f2c09ebebb6d3fecb7a6635f202b0bd42377607663b75e6394`  
		Last Modified: Wed, 12 Oct 2016 17:00:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff2dc1d89b76262cc4f1b0c91e13f5b3ed85a99af2ab60aac1a525433b8d8c0`  
		Last Modified: Wed, 12 Oct 2016 17:00:39 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.56`

```console
$ docker pull crate@sha256:830738750ca7ed23675a6c13d01fb2b474386b950685f2611789f150d601886a
```

-	Platforms:
	-	linux; amd64

### `crate:0.56` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152863932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ba3a071730bf2c3cc94b4156e5914875ea7c9868ac5359b7a1bc1ab58523f`
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
# Mon, 17 Oct 2016 18:28:59 GMT
ENV CRATE_VERSION=0.56.2
# Mon, 17 Oct 2016 18:29:21 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 17 Oct 2016 18:29:21 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Oct 2016 18:29:22 GMT
VOLUME [/data]
# Mon, 17 Oct 2016 18:29:22 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 17 Oct 2016 18:29:23 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 17 Oct 2016 18:29:28 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 17 Oct 2016 18:29:28 GMT
WORKDIR /data
# Mon, 17 Oct 2016 18:29:29 GMT
EXPOSE 4200/tcp 4300/tcp
# Mon, 17 Oct 2016 18:29:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 17 Oct 2016 18:29:29 GMT
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
	-	`sha256:c21e147f8e90272ed939b3ea8cb28b71704e9db4ad923ca828d5a66ccbdc1842`  
		Last Modified: Mon, 17 Oct 2016 18:30:25 GMT  
		Size: 150.0 MB (149967051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5f39db8e8c95c86c550a7210d9adcf640a28c7c915ab818b048bfbf072bd1`  
		Last Modified: Mon, 17 Oct 2016 18:30:06 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210702201192959b50a924625d21b9ff93b6edc94d8fda7d4e7a8ec134b32019`  
		Last Modified: Mon, 17 Oct 2016 18:30:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84275e26a719d3b56a1397393b3e01a9823975c663193ae9d042ec49494c0b7`  
		Last Modified: Mon, 17 Oct 2016 18:30:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c740cf0facb334a6fe427d0fda0eb306f3ffe0b78c8f789bafedb2377ac3bd04`  
		Last Modified: Mon, 17 Oct 2016 18:30:03 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.56.2`

```console
$ docker pull crate@sha256:830738750ca7ed23675a6c13d01fb2b474386b950685f2611789f150d601886a
```

-	Platforms:
	-	linux; amd64

### `crate:0.56.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152863932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ba3a071730bf2c3cc94b4156e5914875ea7c9868ac5359b7a1bc1ab58523f`
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
# Mon, 17 Oct 2016 18:28:59 GMT
ENV CRATE_VERSION=0.56.2
# Mon, 17 Oct 2016 18:29:21 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 17 Oct 2016 18:29:21 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Oct 2016 18:29:22 GMT
VOLUME [/data]
# Mon, 17 Oct 2016 18:29:22 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 17 Oct 2016 18:29:23 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 17 Oct 2016 18:29:28 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 17 Oct 2016 18:29:28 GMT
WORKDIR /data
# Mon, 17 Oct 2016 18:29:29 GMT
EXPOSE 4200/tcp 4300/tcp
# Mon, 17 Oct 2016 18:29:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 17 Oct 2016 18:29:29 GMT
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
	-	`sha256:c21e147f8e90272ed939b3ea8cb28b71704e9db4ad923ca828d5a66ccbdc1842`  
		Last Modified: Mon, 17 Oct 2016 18:30:25 GMT  
		Size: 150.0 MB (149967051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5f39db8e8c95c86c550a7210d9adcf640a28c7c915ab818b048bfbf072bd1`  
		Last Modified: Mon, 17 Oct 2016 18:30:06 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210702201192959b50a924625d21b9ff93b6edc94d8fda7d4e7a8ec134b32019`  
		Last Modified: Mon, 17 Oct 2016 18:30:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84275e26a719d3b56a1397393b3e01a9823975c663193ae9d042ec49494c0b7`  
		Last Modified: Mon, 17 Oct 2016 18:30:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c740cf0facb334a6fe427d0fda0eb306f3ffe0b78c8f789bafedb2377ac3bd04`  
		Last Modified: Mon, 17 Oct 2016 18:30:03 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55`

```console
$ docker pull crate@sha256:59e961f53f76e176af3eea5cb514b66947b26ee483f27f31116cc1b20cbd7731
```

-	Platforms:
	-	linux; amd64

### `crate:0.55` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40ca5ed3716190f647e024e38fec09df19ff49fe735dd22f57c692e485cb6e9`
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
# Mon, 17 Oct 2016 18:29:30 GMT
ENV CRATE_VERSION=0.55.7
# Mon, 17 Oct 2016 18:29:51 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 17 Oct 2016 18:29:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Oct 2016 18:29:52 GMT
VOLUME [/data]
# Mon, 17 Oct 2016 18:29:52 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 17 Oct 2016 18:29:53 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 17 Oct 2016 18:29:53 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 17 Oct 2016 18:29:54 GMT
WORKDIR /data
# Mon, 17 Oct 2016 18:29:54 GMT
EXPOSE 4200/tcp 4300/tcp
# Mon, 17 Oct 2016 18:29:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 17 Oct 2016 18:29:55 GMT
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
	-	`sha256:dd78b5dcccb7176a93219cc62e748793fb355c5cdbcd953e6326960a7fc930d8`  
		Last Modified: Mon, 17 Oct 2016 18:31:23 GMT  
		Size: 149.1 MB (149085640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3987c01a40558867bfd1f3f8677cdcc659a891599a55bf0d89ce65ef755af`  
		Last Modified: Mon, 17 Oct 2016 18:31:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b8b152c3bdd8247c5ec71ef73dda00e43598372178f7dd2d67509241e54ebc`  
		Last Modified: Mon, 17 Oct 2016 18:31:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b25e8d3dbf183f540f55ba6d388a8828b5f84ceecd34f34701b56dc88963fc`  
		Last Modified: Mon, 17 Oct 2016 18:31:03 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed5aa17c6ae5bde0230671ce8b1a2874d5ac8270aaf3ac071d2b072f413812a`  
		Last Modified: Mon, 17 Oct 2016 18:31:03 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55.7`

```console
$ docker pull crate@sha256:59e961f53f76e176af3eea5cb514b66947b26ee483f27f31116cc1b20cbd7731
```

-	Platforms:
	-	linux; amd64

### `crate:0.55.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40ca5ed3716190f647e024e38fec09df19ff49fe735dd22f57c692e485cb6e9`
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
# Mon, 17 Oct 2016 18:29:30 GMT
ENV CRATE_VERSION=0.55.7
# Mon, 17 Oct 2016 18:29:51 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 17 Oct 2016 18:29:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Oct 2016 18:29:52 GMT
VOLUME [/data]
# Mon, 17 Oct 2016 18:29:52 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 17 Oct 2016 18:29:53 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 17 Oct 2016 18:29:53 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 17 Oct 2016 18:29:54 GMT
WORKDIR /data
# Mon, 17 Oct 2016 18:29:54 GMT
EXPOSE 4200/tcp 4300/tcp
# Mon, 17 Oct 2016 18:29:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 17 Oct 2016 18:29:55 GMT
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
	-	`sha256:dd78b5dcccb7176a93219cc62e748793fb355c5cdbcd953e6326960a7fc930d8`  
		Last Modified: Mon, 17 Oct 2016 18:31:23 GMT  
		Size: 149.1 MB (149085640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3987c01a40558867bfd1f3f8677cdcc659a891599a55bf0d89ce65ef755af`  
		Last Modified: Mon, 17 Oct 2016 18:31:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b8b152c3bdd8247c5ec71ef73dda00e43598372178f7dd2d67509241e54ebc`  
		Last Modified: Mon, 17 Oct 2016 18:31:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b25e8d3dbf183f540f55ba6d388a8828b5f84ceecd34f34701b56dc88963fc`  
		Last Modified: Mon, 17 Oct 2016 18:31:03 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed5aa17c6ae5bde0230671ce8b1a2874d5ac8270aaf3ac071d2b072f413812a`  
		Last Modified: Mon, 17 Oct 2016 18:31:03 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
