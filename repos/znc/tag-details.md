<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.6`](#znc16)
-	[`znc:1.6.5`](#znc165)
-	[`znc:1.6.5-slim`](#znc165-slim)
-	[`znc:1.6-slim`](#znc16-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.6`

```console
$ docker pull znc@sha256:f3bd51516ffabe57ff59991f782f7142d9053c75d081a28c116d29f943c971c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

```console
$ docker pull znc@sha256:5712f53c20b9737f7e7ba3dd2ec55783d345ae8fe003c44b4b5c7fe8403f3742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107890234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f33d598c359813c2fb8c29263a5c06ef83888189c88d87c96f5b5f22c6f190`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 05:01:55 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Sat, 04 Nov 2017 05:01:56 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6c65778d937d84b5c27846020af2577f7467e0f84febed15a69be664cf88c4`  
		Last Modified: Sat, 04 Nov 2017 05:02:56 GMT  
		Size: 85.1 MB (85070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6ba8e6ee331b0750aa835c0a020d67d75078c26dcff0dde55d7020f1461dac`  
		Last Modified: Sat, 04 Nov 2017 05:02:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5`

```console
$ docker pull znc@sha256:f3bd51516ffabe57ff59991f782f7142d9053c75d081a28c116d29f943c971c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.5` - linux; amd64

```console
$ docker pull znc@sha256:5712f53c20b9737f7e7ba3dd2ec55783d345ae8fe003c44b4b5c7fe8403f3742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107890234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f33d598c359813c2fb8c29263a5c06ef83888189c88d87c96f5b5f22c6f190`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 05:01:55 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Sat, 04 Nov 2017 05:01:56 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6c65778d937d84b5c27846020af2577f7467e0f84febed15a69be664cf88c4`  
		Last Modified: Sat, 04 Nov 2017 05:02:56 GMT  
		Size: 85.1 MB (85070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6ba8e6ee331b0750aa835c0a020d67d75078c26dcff0dde55d7020f1461dac`  
		Last Modified: Sat, 04 Nov 2017 05:02:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5-slim`

```console
$ docker pull znc@sha256:1eb542e8d367fc4b636e701880976c70405de7fe11a0c8da5e918cc8c138e211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.5-slim` - linux; amd64

```console
$ docker pull znc@sha256:6a382bd8377c9d3ef082df162f290e4d6bb39e4af9d45fb630f7ef871aa48698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22819508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1810f5e992266810d62cf9a1e66b0a8ae80498107804ad1ef859650631d0058`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:1eb542e8d367fc4b636e701880976c70405de7fe11a0c8da5e918cc8c138e211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

```console
$ docker pull znc@sha256:6a382bd8377c9d3ef082df162f290e4d6bb39e4af9d45fb630f7ef871aa48698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22819508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1810f5e992266810d62cf9a1e66b0a8ae80498107804ad1ef859650631d0058`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:f3bd51516ffabe57ff59991f782f7142d9053c75d081a28c116d29f943c971c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:5712f53c20b9737f7e7ba3dd2ec55783d345ae8fe003c44b4b5c7fe8403f3742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107890234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f33d598c359813c2fb8c29263a5c06ef83888189c88d87c96f5b5f22c6f190`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 05:01:55 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Sat, 04 Nov 2017 05:01:56 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6c65778d937d84b5c27846020af2577f7467e0f84febed15a69be664cf88c4`  
		Last Modified: Sat, 04 Nov 2017 05:02:56 GMT  
		Size: 85.1 MB (85070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6ba8e6ee331b0750aa835c0a020d67d75078c26dcff0dde55d7020f1461dac`  
		Last Modified: Sat, 04 Nov 2017 05:02:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:1eb542e8d367fc4b636e701880976c70405de7fe11a0c8da5e918cc8c138e211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:6a382bd8377c9d3ef082df162f290e4d6bb39e4af9d45fb630f7ef871aa48698
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22819508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1810f5e992266810d62cf9a1e66b0a8ae80498107804ad1ef859650631d0058`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 04:51:46 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sat, 04 Nov 2017 04:51:47 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Sat, 04 Nov 2017 04:51:47 GMT
ARG MAKEFLAGS=
# Sat, 04 Nov 2017 04:51:47 GMT
ENV ZNC_VERSION=1.6.5
# Sat, 04 Nov 2017 05:01:21 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 04 Nov 2017 05:01:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:23 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 04 Nov 2017 05:01:24 GMT
VOLUME [/znc-data]
# Sat, 04 Nov 2017 05:01:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61587624d480f4f00216f6bc8074b36a18190f84c31ade8c078c0fd52e7fca7`  
		Last Modified: Sat, 04 Nov 2017 05:02:15 GMT  
		Size: 20.8 MB (20847956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca73284eb96b8fd8eb5379018a93a9b9a493763cf2a632f96c58542113f05a6`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc09081ddf8bec98a9ec2e7967b38cac6a6ec74d5b2133d1fdce3356efc4fcf`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89276dd224b68ffba217fdf491480cbb594853a7247e8e3b54d84055ee2799e5`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddb1d1e16bbc93d4f8582637a739abc2d9857849d5e20afb65e7ff862a2f258`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba83d6411e68762c0396b45cd8f48b67a554e0b56cf899e2ca915e34dee2216`  
		Last Modified: Sat, 04 Nov 2017 05:02:07 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
