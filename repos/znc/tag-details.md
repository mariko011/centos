<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.6.5`](#znc165)
-	[`znc:1.6`](#znc16)
-	[`znc:latest`](#znclatest)
-	[`znc:1.6.5-slim`](#znc165-slim)
-	[`znc:1.6-slim`](#znc16-slim)
-	[`znc:slim`](#zncslim)

## `znc:1.6.5`

```console
$ docker pull znc@sha256:dd69957d72e067ef0021b769c2ff310b81623597710fac2ef12414b83fc4aa0f
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106754727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a947a513664f95ced8ec13fc5935d366b3d632f186d4d9f3cab387d9435950`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Mar 2017 19:44:17 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 13 Mar 2017 19:44:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab3079ceed1f18b28175afc5ca88cadedc57ce3322d502dcfc1fc2c10c4081`  
		Last Modified: Mon, 13 Mar 2017 19:47:48 GMT  
		Size: 84.7 MB (84729772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eec0735170460ff9f968c589bb1789172c322faaffc2e770969db680f7e1a2`  
		Last Modified: Mon, 13 Mar 2017 19:47:22 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6`

```console
$ docker pull znc@sha256:dd69957d72e067ef0021b769c2ff310b81623597710fac2ef12414b83fc4aa0f
```

-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106754727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a947a513664f95ced8ec13fc5935d366b3d632f186d4d9f3cab387d9435950`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Mar 2017 19:44:17 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 13 Mar 2017 19:44:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab3079ceed1f18b28175afc5ca88cadedc57ce3322d502dcfc1fc2c10c4081`  
		Last Modified: Mon, 13 Mar 2017 19:47:48 GMT  
		Size: 84.7 MB (84729772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eec0735170460ff9f968c589bb1789172c322faaffc2e770969db680f7e1a2`  
		Last Modified: Mon, 13 Mar 2017 19:47:22 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:dd69957d72e067ef0021b769c2ff310b81623597710fac2ef12414b83fc4aa0f
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106754727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a947a513664f95ced8ec13fc5935d366b3d632f186d4d9f3cab387d9435950`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Mar 2017 19:44:17 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 13 Mar 2017 19:44:18 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab3079ceed1f18b28175afc5ca88cadedc57ce3322d502dcfc1fc2c10c4081`  
		Last Modified: Mon, 13 Mar 2017 19:47:48 GMT  
		Size: 84.7 MB (84729772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eec0735170460ff9f968c589bb1789172c322faaffc2e770969db680f7e1a2`  
		Last Modified: Mon, 13 Mar 2017 19:47:22 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5-slim`

```console
$ docker pull znc@sha256:5d52c8345418fc6f4206d259d8bea626eea470a7e1a5c47809baaef5a3e46d0f
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22024662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a78ad4c98b9135e57d46662a8322b0f8f31ccb7021869ce28cde7c3cc9dc0`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:5d52c8345418fc6f4206d259d8bea626eea470a7e1a5c47809baaef5a3e46d0f
```

-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22024662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a78ad4c98b9135e57d46662a8322b0f8f31ccb7021869ce28cde7c3cc9dc0`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:5d52c8345418fc6f4206d259d8bea626eea470a7e1a5c47809baaef5a3e46d0f
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22024662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a78ad4c98b9135e57d46662a8322b0f8f31ccb7021869ce28cde7c3cc9dc0`
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
# Mon, 13 Mar 2017 19:39:06 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 13 Mar 2017 19:44:04 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 13 Mar 2017 19:44:05 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Mon, 13 Mar 2017 19:44:05 GMT
VOLUME [/znc-data]
# Mon, 13 Mar 2017 19:44:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5339c67db32c94699b498862fe2db12bae695c1f1c5a1d52dcf9af5bc62ebbb8`  
		Last Modified: Mon, 13 Mar 2017 19:47:29 GMT  
		Size: 20.1 MB (20118814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b89a7cb299de4dd5614166abd4d8fea6afc28881bc2df4f5b439f061140b5`  
		Last Modified: Mon, 13 Mar 2017 19:47:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
