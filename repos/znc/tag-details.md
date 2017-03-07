<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.6.4`](#znc164)
-	[`znc:1.6`](#znc16)
-	[`znc:latest`](#znclatest)
-	[`znc:1.6.4-slim`](#znc164-slim)
-	[`znc:1.6-slim`](#znc16-slim)
-	[`znc:slim`](#zncslim)

## `znc:1.6.4`

```console
$ docker pull znc@sha256:83d155cba247342bec1a43825574a4ef7d1055d5a668a325b85379235587a42b
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106743282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1307fc4e0b79421bddb3309846cacf4abef96311f913104bf4a8641e25af447`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 18:00:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 07 Mar 2017 18:00:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a38c71625afd1784f2827254e98bd5a3e15d21956e4dd6530806a6ccb6cd79`  
		Last Modified: Tue, 07 Mar 2017 18:01:07 GMT  
		Size: 84.7 MB (84730060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b2c61da1941895fa9281e788d9241dc15ad2439cc758262b1ed0e50861a1b`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6`

```console
$ docker pull znc@sha256:83d155cba247342bec1a43825574a4ef7d1055d5a668a325b85379235587a42b
```

-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106743282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1307fc4e0b79421bddb3309846cacf4abef96311f913104bf4a8641e25af447`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 18:00:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 07 Mar 2017 18:00:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a38c71625afd1784f2827254e98bd5a3e15d21956e4dd6530806a6ccb6cd79`  
		Last Modified: Tue, 07 Mar 2017 18:01:07 GMT  
		Size: 84.7 MB (84730060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b2c61da1941895fa9281e788d9241dc15ad2439cc758262b1ed0e50861a1b`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:83d155cba247342bec1a43825574a4ef7d1055d5a668a325b85379235587a42b
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106743282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1307fc4e0b79421bddb3309846cacf4abef96311f913104bf4a8641e25af447`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 18:00:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 07 Mar 2017 18:00:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a38c71625afd1784f2827254e98bd5a3e15d21956e4dd6530806a6ccb6cd79`  
		Last Modified: Tue, 07 Mar 2017 18:01:07 GMT  
		Size: 84.7 MB (84730060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7b2c61da1941895fa9281e788d9241dc15ad2439cc758262b1ed0e50861a1b`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.4-slim`

```console
$ docker pull znc@sha256:00b5594bccd6dba653b7486abcc764f81a981931d556f9d3c1305c780dd17c44
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22012929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa68553b7eca418451feef39c3ec6795e232bd9c3af0d4af12b2ec8410e4d926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:00b5594bccd6dba653b7486abcc764f81a981931d556f9d3c1305c780dd17c44
```

-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22012929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa68553b7eca418451feef39c3ec6795e232bd9c3af0d4af12b2ec8410e4d926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:00b5594bccd6dba653b7486abcc764f81a981931d556f9d3c1305c780dd17c44
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22012929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa68553b7eca418451feef39c3ec6795e232bd9c3af0d4af12b2ec8410e4d926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:51:58 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 03 Mar 2017 23:51:59 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 03 Mar 2017 23:51:59 GMT
ARG MAKEFLAGS=
# Fri, 03 Mar 2017 23:51:59 GMT
ENV ZNC_VERSION=1.6.4
# Tue, 07 Mar 2017 17:58:41 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 07 Mar 2017 17:59:38 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Tue, 07 Mar 2017 17:59:39 GMT
VOLUME [/znc-data]
# Tue, 07 Mar 2017 17:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc433b1c32b30c02b0916f3df10cc4ac16d76e163296e4c6e34d51d2ed4d4048`  
		Last Modified: Tue, 07 Mar 2017 18:00:46 GMT  
		Size: 20.1 MB (20107084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d4836dcf692e32d76a6f9b7d00de5250dab7b07050c636e3e0a649c1f7ae8`  
		Last Modified: Tue, 07 Mar 2017 18:00:39 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
