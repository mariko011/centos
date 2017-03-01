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
$ docker pull znc@sha256:4a03a00294d6af0f9f457364ebd6d8538f9a1001afa4ab7d0e248618c8fbbbfd
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109843240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5610391aaf7b3b8044f3332f8cfcc0750e098e5c72ef19d293fb338df12ca20c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 00:51:11 GMT
USER [root]
# Wed, 01 Mar 2017 00:51:28 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         openssl-dev         perl         python3
# Wed, 01 Mar 2017 00:51:43 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
# Wed, 01 Mar 2017 00:51:44 GMT
USER [znc]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608ccb3527b5ddf26873a158110aa36ca01e156ce789f011e41ef265b6d88f4`  
		Last Modified: Wed, 01 Mar 2017 00:52:58 GMT  
		Size: 86.0 MB (85988194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bcf2aa9198391c63025c30c816c7827614453e0c59f19bde78918d53d1f9eb`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6`

```console
$ docker pull znc@sha256:4a03a00294d6af0f9f457364ebd6d8538f9a1001afa4ab7d0e248618c8fbbbfd
```

-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109843240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5610391aaf7b3b8044f3332f8cfcc0750e098e5c72ef19d293fb338df12ca20c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 00:51:11 GMT
USER [root]
# Wed, 01 Mar 2017 00:51:28 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         openssl-dev         perl         python3
# Wed, 01 Mar 2017 00:51:43 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
# Wed, 01 Mar 2017 00:51:44 GMT
USER [znc]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608ccb3527b5ddf26873a158110aa36ca01e156ce789f011e41ef265b6d88f4`  
		Last Modified: Wed, 01 Mar 2017 00:52:58 GMT  
		Size: 86.0 MB (85988194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bcf2aa9198391c63025c30c816c7827614453e0c59f19bde78918d53d1f9eb`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:4a03a00294d6af0f9f457364ebd6d8538f9a1001afa4ab7d0e248618c8fbbbfd
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109843240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5610391aaf7b3b8044f3332f8cfcc0750e098e5c72ef19d293fb338df12ca20c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 00:51:11 GMT
USER [root]
# Wed, 01 Mar 2017 00:51:28 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         openssl-dev         perl         python3
# Wed, 01 Mar 2017 00:51:43 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
# Wed, 01 Mar 2017 00:51:44 GMT
USER [znc]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608ccb3527b5ddf26873a158110aa36ca01e156ce789f011e41ef265b6d88f4`  
		Last Modified: Wed, 01 Mar 2017 00:52:58 GMT  
		Size: 86.0 MB (85988194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bcf2aa9198391c63025c30c816c7827614453e0c59f19bde78918d53d1f9eb`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.4-slim`

```console
$ docker pull znc@sha256:8f40c31cf24b2f5e06b747e7ce40d97f57bd29dffc19fa9a3f9fcc268cd4efe8
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23854753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d406b77bce6a9cbf2de6fa7ea540b7f080a41ae865b2a79101add4b3c159c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:8f40c31cf24b2f5e06b747e7ce40d97f57bd29dffc19fa9a3f9fcc268cd4efe8
```

-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23854753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d406b77bce6a9cbf2de6fa7ea540b7f080a41ae865b2a79101add4b3c159c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:8f40c31cf24b2f5e06b747e7ce40d97f57bd29dffc19fa9a3f9fcc268cd4efe8
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23854753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d406b77bce6a9cbf2de6fa7ea540b7f080a41ae865b2a79101add4b3c159c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 28 Feb 2017 23:59:25 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 28 Feb 2017 23:59:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 28 Feb 2017 23:59:25 GMT
ARG MAKEFLAGS=
# Tue, 28 Feb 2017 23:59:26 GMT
ENV ZNC_VERSION=1.6.4
# Wed, 01 Mar 2017 00:50:36 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 01 Mar 2017 00:50:48 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Wed, 01 Mar 2017 00:50:48 GMT
USER [znc]
# Wed, 01 Mar 2017 00:50:49 GMT
VOLUME [/znc-data]
# Wed, 01 Mar 2017 00:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f70d6790d488e5a2159805ece2248b3bbcfe60a7f1e3f16c882f33be6fc3a`  
		Last Modified: Wed, 01 Mar 2017 00:52:31 GMT  
		Size: 22.0 MB (21952129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58597475b629d93fd37a516eaa75e58c41f940c3975ae2168fe817a2dd56583d`  
		Last Modified: Wed, 01 Mar 2017 00:52:23 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
