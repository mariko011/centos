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
$ docker pull znc@sha256:f1e21d44ab7b36e6c403676cf11d16c224718e278bbfa6f02a51ca2a8522819e
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108960458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54ee7d5934a8d7eaf43d4e72592318929b38421a6790475894ddb9aa39cbad7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:48:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 May 2017 23:48:30 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 May 2017 23:48:31 GMT
ARG MAKEFLAGS=
# Wed, 10 May 2017 23:48:32 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 May 2017 23:53:27 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 May 2017 23:53:28 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Wed, 10 May 2017 23:53:28 GMT
VOLUME [/znc-data]
# Wed, 10 May 2017 23:53:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 06:55:42 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Thu, 11 May 2017 06:55:43 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0269d84305e38b7e7a18ddaf5ae5da740a10d354b742d91dd47ef7727dc09`  
		Last Modified: Sat, 13 May 2017 20:26:50 GMT  
		Size: 20.8 MB (20831286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35415c4435db974de0ea65262ea5713f423b411d9b6b32b81dbed4a98017aef3`  
		Last Modified: Sat, 13 May 2017 20:26:44 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8ad106693ac0e5357997d76f483c880a585f666a2f1b55961eb884ff332022`  
		Last Modified: Sat, 13 May 2017 20:28:23 GMT  
		Size: 86.2 MB (86160395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f84254510bc8cc5390b0ce98207b0c487e70fb6cba6c4a8b133b65ef92fb93`  
		Last Modified: Sat, 13 May 2017 20:28:00 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6`

```console
$ docker pull znc@sha256:f1e21d44ab7b36e6c403676cf11d16c224718e278bbfa6f02a51ca2a8522819e
```

-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108960458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54ee7d5934a8d7eaf43d4e72592318929b38421a6790475894ddb9aa39cbad7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:48:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 May 2017 23:48:30 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 May 2017 23:48:31 GMT
ARG MAKEFLAGS=
# Wed, 10 May 2017 23:48:32 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 May 2017 23:53:27 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 May 2017 23:53:28 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Wed, 10 May 2017 23:53:28 GMT
VOLUME [/znc-data]
# Wed, 10 May 2017 23:53:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 06:55:42 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Thu, 11 May 2017 06:55:43 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0269d84305e38b7e7a18ddaf5ae5da740a10d354b742d91dd47ef7727dc09`  
		Last Modified: Sat, 13 May 2017 20:26:50 GMT  
		Size: 20.8 MB (20831286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35415c4435db974de0ea65262ea5713f423b411d9b6b32b81dbed4a98017aef3`  
		Last Modified: Sat, 13 May 2017 20:26:44 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8ad106693ac0e5357997d76f483c880a585f666a2f1b55961eb884ff332022`  
		Last Modified: Sat, 13 May 2017 20:28:23 GMT  
		Size: 86.2 MB (86160395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f84254510bc8cc5390b0ce98207b0c487e70fb6cba6c4a8b133b65ef92fb93`  
		Last Modified: Sat, 13 May 2017 20:28:00 GMT  
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
$ docker pull znc@sha256:a0e3252f542a8c27bd02f025ae56683c6eee99ff90ce98f40f01a373026f707a
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22799770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d16c9767f6439f72d02c7f118dd859f2da7fbf4739118f90624563f225ebfbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:48:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 May 2017 23:48:30 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 May 2017 23:48:31 GMT
ARG MAKEFLAGS=
# Wed, 10 May 2017 23:48:32 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 May 2017 23:53:27 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 May 2017 23:53:28 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Wed, 10 May 2017 23:53:28 GMT
VOLUME [/znc-data]
# Wed, 10 May 2017 23:53:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0269d84305e38b7e7a18ddaf5ae5da740a10d354b742d91dd47ef7727dc09`  
		Last Modified: Sat, 13 May 2017 20:26:50 GMT  
		Size: 20.8 MB (20831286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35415c4435db974de0ea65262ea5713f423b411d9b6b32b81dbed4a98017aef3`  
		Last Modified: Sat, 13 May 2017 20:26:44 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:a0e3252f542a8c27bd02f025ae56683c6eee99ff90ce98f40f01a373026f707a
```

-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22799770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d16c9767f6439f72d02c7f118dd859f2da7fbf4739118f90624563f225ebfbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:48:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 May 2017 23:48:30 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 May 2017 23:48:31 GMT
ARG MAKEFLAGS=
# Wed, 10 May 2017 23:48:32 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 May 2017 23:53:27 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 May 2017 23:53:28 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Wed, 10 May 2017 23:53:28 GMT
VOLUME [/znc-data]
# Wed, 10 May 2017 23:53:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0269d84305e38b7e7a18ddaf5ae5da740a10d354b742d91dd47ef7727dc09`  
		Last Modified: Sat, 13 May 2017 20:26:50 GMT  
		Size: 20.8 MB (20831286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35415c4435db974de0ea65262ea5713f423b411d9b6b32b81dbed4a98017aef3`  
		Last Modified: Sat, 13 May 2017 20:26:44 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:a0e3252f542a8c27bd02f025ae56683c6eee99ff90ce98f40f01a373026f707a
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22799770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d16c9767f6439f72d02c7f118dd859f2da7fbf4739118f90624563f225ebfbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:48:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 May 2017 23:48:30 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 May 2017 23:48:31 GMT
ARG MAKEFLAGS=
# Wed, 10 May 2017 23:48:32 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 May 2017 23:53:27 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 May 2017 23:53:28 GMT
COPY file:e1c4fadff4ba3c097a72f9f789e8f03a804cacbc734f69968217e5db37d2f909 in / 
# Wed, 10 May 2017 23:53:28 GMT
VOLUME [/znc-data]
# Wed, 10 May 2017 23:53:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0269d84305e38b7e7a18ddaf5ae5da740a10d354b742d91dd47ef7727dc09`  
		Last Modified: Sat, 13 May 2017 20:26:50 GMT  
		Size: 20.8 MB (20831286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35415c4435db974de0ea65262ea5713f423b411d9b6b32b81dbed4a98017aef3`  
		Last Modified: Sat, 13 May 2017 20:26:44 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
