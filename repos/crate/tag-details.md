<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:2.0`](#crate20)
-	[`crate:2.0.7`](#crate207)
-	[`crate:2.1`](#crate21)
-	[`crate:2.1.10`](#crate2110)
-	[`crate:2.2`](#crate22)
-	[`crate:2.2.4`](#crate224)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:b05e702ba61f290a958d46874ea57879fd1ef31c9637068657c4e6fce44ed09b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:687c8f80dc80efb796005d3b79cb400667294665dfdc52dfb07b7202e747ba02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126529266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d4ffc14d50165292cc752470853cd07625d6d87137c49df1a92eaf9f06beb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Sat, 04 Nov 2017 06:53:40 GMT
ENV CRATE_VERSION=2.0.7
# Sat, 04 Nov 2017 06:54:15 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Sat, 04 Nov 2017 06:54:15 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 06:54:15 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 06:54:15 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Sat, 04 Nov 2017 06:54:16 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Sat, 04 Nov 2017 06:54:16 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Sat, 04 Nov 2017 06:54:16 GMT
WORKDIR /data
# Sat, 04 Nov 2017 06:54:16 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Sat, 04 Nov 2017 06:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 06:54:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3945f957c9432e32315bbe98241703ec2bd5ecc7ca2628936c27b34e571e77fb`  
		Last Modified: Sat, 04 Nov 2017 06:55:39 GMT  
		Size: 124.0 MB (123963981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07696d6cb20a404abf676406011a2c5fe0adac4121fe108b0ac1b8b776b7ed3e`  
		Last Modified: Sat, 04 Nov 2017 06:55:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8f0d8f83a3046cace80239aba1e6b2169f6884ac7d4a543370fa5deee7802`  
		Last Modified: Sat, 04 Nov 2017 06:55:22 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc960faed8d3d5f3e2ad5bbe5152d2119e91f23a86a0468ee8a1c8917dabf2`  
		Last Modified: Sat, 04 Nov 2017 06:55:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d06f5a9ec7d4be293ba538244c187d97ea03eacaa2695abba5f146ec34fe05`  
		Last Modified: Sat, 04 Nov 2017 06:55:21 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:b05e702ba61f290a958d46874ea57879fd1ef31c9637068657c4e6fce44ed09b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:687c8f80dc80efb796005d3b79cb400667294665dfdc52dfb07b7202e747ba02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126529266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d4ffc14d50165292cc752470853cd07625d6d87137c49df1a92eaf9f06beb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Sat, 04 Nov 2017 06:53:40 GMT
ENV CRATE_VERSION=2.0.7
# Sat, 04 Nov 2017 06:54:15 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Sat, 04 Nov 2017 06:54:15 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 06:54:15 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 06:54:15 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Sat, 04 Nov 2017 06:54:16 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Sat, 04 Nov 2017 06:54:16 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Sat, 04 Nov 2017 06:54:16 GMT
WORKDIR /data
# Sat, 04 Nov 2017 06:54:16 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Sat, 04 Nov 2017 06:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 06:54:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3945f957c9432e32315bbe98241703ec2bd5ecc7ca2628936c27b34e571e77fb`  
		Last Modified: Sat, 04 Nov 2017 06:55:39 GMT  
		Size: 124.0 MB (123963981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07696d6cb20a404abf676406011a2c5fe0adac4121fe108b0ac1b8b776b7ed3e`  
		Last Modified: Sat, 04 Nov 2017 06:55:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8f0d8f83a3046cace80239aba1e6b2169f6884ac7d4a543370fa5deee7802`  
		Last Modified: Sat, 04 Nov 2017 06:55:22 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbc960faed8d3d5f3e2ad5bbe5152d2119e91f23a86a0468ee8a1c8917dabf2`  
		Last Modified: Sat, 04 Nov 2017 06:55:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d06f5a9ec7d4be293ba538244c187d97ea03eacaa2695abba5f146ec34fe05`  
		Last Modified: Sat, 04 Nov 2017 06:55:21 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:6077d33f841cc5f5e22b9a781578b95f2896c2e6eb2e14f1b2fc68e16cca06fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:3222bf9be4975946e881cdb25c29a49a60c3343a4cd7ece452950b51d79c89e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbac2b55912b96ae8dfe7216d51e06364144d45dabd6642f8d5e53af0f5b3db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 15 Nov 2017 18:48:22 GMT
ENV CRATE_VERSION=2.1.10
# Wed, 15 Nov 2017 18:49:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 15 Nov 2017 18:49:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Nov 2017 18:49:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 15 Nov 2017 18:49:46 GMT
VOLUME [/data]
# Wed, 15 Nov 2017 18:49:46 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Wed, 15 Nov 2017 18:49:47 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Wed, 15 Nov 2017 18:49:47 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 15 Nov 2017 18:49:47 GMT
WORKDIR /data
# Wed, 15 Nov 2017 18:49:47 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Wed, 15 Nov 2017 18:49:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Nov 2017 18:49:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c1f2ab511f53e13aa962cbef0977253f7d29fa9cc335fce56b9653e4c743`  
		Last Modified: Wed, 15 Nov 2017 18:53:18 GMT  
		Size: 126.6 MB (126561913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78d32af35958d292ae5275140af5a1eefadeeda22c825c339a7e94844ef1d97`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c5cad8ce37d8f7ba1d10ea9de83e631383cd37e8ad972121a1b3ebb3b7b0f2`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2544f3ed9ad53e48278d287f1ce34b110692705d4709d78631fbc5df48a65`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e46c85b76d04ca572d974f28eeefbb25ceefb21d5f4a64218fc1f94e53e76d`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:6077d33f841cc5f5e22b9a781578b95f2896c2e6eb2e14f1b2fc68e16cca06fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:3222bf9be4975946e881cdb25c29a49a60c3343a4cd7ece452950b51d79c89e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbac2b55912b96ae8dfe7216d51e06364144d45dabd6642f8d5e53af0f5b3db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 15 Nov 2017 18:48:22 GMT
ENV CRATE_VERSION=2.1.10
# Wed, 15 Nov 2017 18:49:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 15 Nov 2017 18:49:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Nov 2017 18:49:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 15 Nov 2017 18:49:46 GMT
VOLUME [/data]
# Wed, 15 Nov 2017 18:49:46 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Wed, 15 Nov 2017 18:49:47 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Wed, 15 Nov 2017 18:49:47 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 15 Nov 2017 18:49:47 GMT
WORKDIR /data
# Wed, 15 Nov 2017 18:49:47 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Wed, 15 Nov 2017 18:49:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Nov 2017 18:49:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c1f2ab511f53e13aa962cbef0977253f7d29fa9cc335fce56b9653e4c743`  
		Last Modified: Wed, 15 Nov 2017 18:53:18 GMT  
		Size: 126.6 MB (126561913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78d32af35958d292ae5275140af5a1eefadeeda22c825c339a7e94844ef1d97`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c5cad8ce37d8f7ba1d10ea9de83e631383cd37e8ad972121a1b3ebb3b7b0f2`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b2544f3ed9ad53e48278d287f1ce34b110692705d4709d78631fbc5df48a65`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e46c85b76d04ca572d974f28eeefbb25ceefb21d5f4a64218fc1f94e53e76d`  
		Last Modified: Wed, 15 Nov 2017 18:53:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:ddcc5a901a214a74149f3fa66d876fe45e246fd3639ddbedf71439f240aaf4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:44866a972e51917d0e3910dad812e2756ed2177e00e17034b3b1e1ae86c81547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129493282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27995754d17a23f1c5768ac9084fed73b8e0aa7ee38998f221aaa6567c93833`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 16 Nov 2017 17:48:27 GMT
ENV CRATE_VERSION=2.2.3
# Thu, 16 Nov 2017 17:49:00 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 16 Nov 2017 17:49:00 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Nov 2017 17:49:00 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 16 Nov 2017 17:49:00 GMT
VOLUME [/data]
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 16 Nov 2017 17:49:01 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 16 Nov 2017 17:49:02 GMT
WORKDIR /data
# Thu, 16 Nov 2017 17:49:02 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 16 Nov 2017 17:49:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Nov 2017 17:49:02 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472ffe3c4a711975eb90e7217abcc4e8817c478f8a037105e013449af913bc72`  
		Last Modified: Thu, 16 Nov 2017 17:49:25 GMT  
		Size: 126.9 MB (126927981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024aaa9f2fe10f6bf1089197d7197ab4765c5da875000dec95782fc420a4e72`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2b603721b81f7b46fff3206ce93ee0048ce634dd982a3fd8f5fb17769351ec`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845e445e05ea45cdfeb4046786bbc1566e38bc297e83aa24d2631dabc9b1495b`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591fbc5f3e33e4bc1f77b3d727d8dadba38ed9b066911487c00ba650e71a8924`  
		Last Modified: Thu, 16 Nov 2017 17:49:14 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.4`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:ddcc5a901a214a74149f3fa66d876fe45e246fd3639ddbedf71439f240aaf4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:44866a972e51917d0e3910dad812e2756ed2177e00e17034b3b1e1ae86c81547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129493282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27995754d17a23f1c5768ac9084fed73b8e0aa7ee38998f221aaa6567c93833`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 16 Nov 2017 17:48:27 GMT
ENV CRATE_VERSION=2.2.3
# Thu, 16 Nov 2017 17:49:00 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 16 Nov 2017 17:49:00 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Nov 2017 17:49:00 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 16 Nov 2017 17:49:00 GMT
VOLUME [/data]
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 16 Nov 2017 17:49:01 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 16 Nov 2017 17:49:02 GMT
WORKDIR /data
# Thu, 16 Nov 2017 17:49:02 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 16 Nov 2017 17:49:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Nov 2017 17:49:02 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472ffe3c4a711975eb90e7217abcc4e8817c478f8a037105e013449af913bc72`  
		Last Modified: Thu, 16 Nov 2017 17:49:25 GMT  
		Size: 126.9 MB (126927981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024aaa9f2fe10f6bf1089197d7197ab4765c5da875000dec95782fc420a4e72`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2b603721b81f7b46fff3206ce93ee0048ce634dd982a3fd8f5fb17769351ec`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845e445e05ea45cdfeb4046786bbc1566e38bc297e83aa24d2631dabc9b1495b`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591fbc5f3e33e4bc1f77b3d727d8dadba38ed9b066911487c00ba650e71a8924`  
		Last Modified: Thu, 16 Nov 2017 17:49:14 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
