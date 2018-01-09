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
$ docker pull znc@sha256:074619f45dc7811908984cb41bd470722e95e854b0a625f1229cf10d5fc6aeb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:1.6` - linux; amd64

```console
$ docker pull znc@sha256:13a9efcc2f98bdb78a77c0b979166611dd0f90e0a0df2020ea9a0e4aea036184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105112816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b6726a4958cc62f9c3ac91c6788bf3b5cc6102fbd7f1e2d068316b0c113ab2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Jan 2018 19:25:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 08 Jan 2018 19:25:49 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d37d4018ca5c6de25a4901f32df09b05750dc2c61850a1d336be641da10913f`  
		Last Modified: Mon, 08 Jan 2018 19:27:17 GMT  
		Size: 81.6 MB (81621307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c68e09a5654c56371a5ec96f7c37c09752f6d5cdc2d130009fcdd8a5dd34c0c`  
		Last Modified: Mon, 08 Jan 2018 19:27:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.6` - linux; arm variant v6

```console
$ docker pull znc@sha256:c23780b5f22f814f9ec8b9d021b62653361bf67b85625df029be60693379e63e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93958697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46f4a39959c1cc6103eb809b640fca0cd9856569ed5ae2ab3c86c3ddbc90455`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 00:21:36 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 09 Jan 2018 00:21:37 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 09 Jan 2018 00:21:37 GMT
ARG MAKEFLAGS=
# Tue, 09 Jan 2018 00:21:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 09 Jan 2018 00:33:02 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
VOLUME [/znc-data]
# Tue, 09 Jan 2018 00:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Jan 2018 00:33:21 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 09 Jan 2018 00:33:22 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e2e343b51217896e52f752876d4969a0193b178fb06ee38cb7cd1eb3f6cf`  
		Last Modified: Tue, 09 Jan 2018 00:33:37 GMT  
		Size: 20.9 MB (20910522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb9cc0e698f43d9279730dc4cb6ef5bb917f6e12c2cf2d36b97c128ca33c850`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40349944b00c12000c370852e1df7006264cd2d0aead60e96cbaf60fec6b1a38`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577024b94874551faf0da685544fd7b510106cc189cd7cbc8f84cd93391877c5`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146971a22cc13583aec417ef4f6aa1cee437ad1ec8978b10659dc0db2601fb59`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d258b319575fad3ea8d2327f6241bffd01097a34f3b3d71ddc8e752169e7`  
		Last Modified: Tue, 09 Jan 2018 00:33:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d248a7d7e884de8cd22a1db798612fcea6f8d4ff6bf0e6cc78e22ecb157bce`  
		Last Modified: Tue, 09 Jan 2018 00:34:12 GMT  
		Size: 71.0 MB (71008032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a8bc808357b5c8332f3c2d9f94f21a5f80a730c2084014ab937866181a8546`  
		Last Modified: Tue, 09 Jan 2018 00:33:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5`

```console
$ docker pull znc@sha256:074619f45dc7811908984cb41bd470722e95e854b0a625f1229cf10d5fc6aeb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:1.6.5` - linux; amd64

```console
$ docker pull znc@sha256:13a9efcc2f98bdb78a77c0b979166611dd0f90e0a0df2020ea9a0e4aea036184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105112816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b6726a4958cc62f9c3ac91c6788bf3b5cc6102fbd7f1e2d068316b0c113ab2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Jan 2018 19:25:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 08 Jan 2018 19:25:49 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d37d4018ca5c6de25a4901f32df09b05750dc2c61850a1d336be641da10913f`  
		Last Modified: Mon, 08 Jan 2018 19:27:17 GMT  
		Size: 81.6 MB (81621307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c68e09a5654c56371a5ec96f7c37c09752f6d5cdc2d130009fcdd8a5dd34c0c`  
		Last Modified: Mon, 08 Jan 2018 19:27:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.6.5` - linux; arm variant v6

```console
$ docker pull znc@sha256:c23780b5f22f814f9ec8b9d021b62653361bf67b85625df029be60693379e63e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93958697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46f4a39959c1cc6103eb809b640fca0cd9856569ed5ae2ab3c86c3ddbc90455`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 00:21:36 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 09 Jan 2018 00:21:37 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 09 Jan 2018 00:21:37 GMT
ARG MAKEFLAGS=
# Tue, 09 Jan 2018 00:21:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 09 Jan 2018 00:33:02 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
VOLUME [/znc-data]
# Tue, 09 Jan 2018 00:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Jan 2018 00:33:21 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 09 Jan 2018 00:33:22 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e2e343b51217896e52f752876d4969a0193b178fb06ee38cb7cd1eb3f6cf`  
		Last Modified: Tue, 09 Jan 2018 00:33:37 GMT  
		Size: 20.9 MB (20910522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb9cc0e698f43d9279730dc4cb6ef5bb917f6e12c2cf2d36b97c128ca33c850`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40349944b00c12000c370852e1df7006264cd2d0aead60e96cbaf60fec6b1a38`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577024b94874551faf0da685544fd7b510106cc189cd7cbc8f84cd93391877c5`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146971a22cc13583aec417ef4f6aa1cee437ad1ec8978b10659dc0db2601fb59`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d258b319575fad3ea8d2327f6241bffd01097a34f3b3d71ddc8e752169e7`  
		Last Modified: Tue, 09 Jan 2018 00:33:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d248a7d7e884de8cd22a1db798612fcea6f8d4ff6bf0e6cc78e22ecb157bce`  
		Last Modified: Tue, 09 Jan 2018 00:34:12 GMT  
		Size: 71.0 MB (71008032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a8bc808357b5c8332f3c2d9f94f21a5f80a730c2084014ab937866181a8546`  
		Last Modified: Tue, 09 Jan 2018 00:33:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5-slim`

```console
$ docker pull znc@sha256:1d647a97e2c38d4fa18a22c32c82dc211b0725edb170e072e51982ee0bb5c8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:1.6.5-slim` - linux; amd64

```console
$ docker pull znc@sha256:e5121f3e52934adfe083fc981fe05a59747d5426703429ae26860f97f09b9ef5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23491177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3ea231b65903cd6a968b0581abc519785f2db5736a1e7b74e9788dc61bb0bd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.6.5-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:9a5c7bc96871df9d759ec77821c383ce4529dad6400d8edb0ae3e07dd36132be
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (22950334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9df4fd0b3becf9399f5e4609eb3977ba597318de4c49708cc3f15b2024d31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 00:21:36 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 09 Jan 2018 00:21:37 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 09 Jan 2018 00:21:37 GMT
ARG MAKEFLAGS=
# Tue, 09 Jan 2018 00:21:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 09 Jan 2018 00:33:02 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
VOLUME [/znc-data]
# Tue, 09 Jan 2018 00:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e2e343b51217896e52f752876d4969a0193b178fb06ee38cb7cd1eb3f6cf`  
		Last Modified: Tue, 09 Jan 2018 00:33:37 GMT  
		Size: 20.9 MB (20910522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb9cc0e698f43d9279730dc4cb6ef5bb917f6e12c2cf2d36b97c128ca33c850`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40349944b00c12000c370852e1df7006264cd2d0aead60e96cbaf60fec6b1a38`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577024b94874551faf0da685544fd7b510106cc189cd7cbc8f84cd93391877c5`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146971a22cc13583aec417ef4f6aa1cee437ad1ec8978b10659dc0db2601fb59`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d258b319575fad3ea8d2327f6241bffd01097a34f3b3d71ddc8e752169e7`  
		Last Modified: Tue, 09 Jan 2018 00:33:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:1d647a97e2c38d4fa18a22c32c82dc211b0725edb170e072e51982ee0bb5c8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:1.6-slim` - linux; amd64

```console
$ docker pull znc@sha256:e5121f3e52934adfe083fc981fe05a59747d5426703429ae26860f97f09b9ef5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23491177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3ea231b65903cd6a968b0581abc519785f2db5736a1e7b74e9788dc61bb0bd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.6-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:9a5c7bc96871df9d759ec77821c383ce4529dad6400d8edb0ae3e07dd36132be
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (22950334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9df4fd0b3becf9399f5e4609eb3977ba597318de4c49708cc3f15b2024d31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 00:21:36 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 09 Jan 2018 00:21:37 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 09 Jan 2018 00:21:37 GMT
ARG MAKEFLAGS=
# Tue, 09 Jan 2018 00:21:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 09 Jan 2018 00:33:02 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
VOLUME [/znc-data]
# Tue, 09 Jan 2018 00:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e2e343b51217896e52f752876d4969a0193b178fb06ee38cb7cd1eb3f6cf`  
		Last Modified: Tue, 09 Jan 2018 00:33:37 GMT  
		Size: 20.9 MB (20910522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb9cc0e698f43d9279730dc4cb6ef5bb917f6e12c2cf2d36b97c128ca33c850`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40349944b00c12000c370852e1df7006264cd2d0aead60e96cbaf60fec6b1a38`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577024b94874551faf0da685544fd7b510106cc189cd7cbc8f84cd93391877c5`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146971a22cc13583aec417ef4f6aa1cee437ad1ec8978b10659dc0db2601fb59`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d258b319575fad3ea8d2327f6241bffd01097a34f3b3d71ddc8e752169e7`  
		Last Modified: Tue, 09 Jan 2018 00:33:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:a08083a1d2a091d69be527f7fa568a95201097969cfd4ba6fdf100189a02f4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:13a9efcc2f98bdb78a77c0b979166611dd0f90e0a0df2020ea9a0e4aea036184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105112816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b6726a4958cc62f9c3ac91c6788bf3b5cc6102fbd7f1e2d068316b0c113ab2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Jan 2018 19:25:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Mon, 08 Jan 2018 19:25:49 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d37d4018ca5c6de25a4901f32df09b05750dc2c61850a1d336be641da10913f`  
		Last Modified: Mon, 08 Jan 2018 19:27:17 GMT  
		Size: 81.6 MB (81621307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c68e09a5654c56371a5ec96f7c37c09752f6d5cdc2d130009fcdd8a5dd34c0c`  
		Last Modified: Mon, 08 Jan 2018 19:27:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:1d647a97e2c38d4fa18a22c32c82dc211b0725edb170e072e51982ee0bb5c8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:e5121f3e52934adfe083fc981fe05a59747d5426703429ae26860f97f09b9ef5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23491177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3ea231b65903cd6a968b0581abc519785f2db5736a1e7b74e9788dc61bb0bd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Mon, 08 Jan 2018 19:13:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 08 Jan 2018 19:13:31 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Mon, 08 Jan 2018 19:13:31 GMT
ARG MAKEFLAGS=
# Mon, 08 Jan 2018 19:13:31 GMT
ENV ZNC_VERSION=1.6.5
# Mon, 08 Jan 2018 19:18:50 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 08 Jan 2018 19:23:26 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:27 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Mon, 08 Jan 2018 19:23:28 GMT
VOLUME [/znc-data]
# Mon, 08 Jan 2018 19:23:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75f100043e982b1691143e33474bc79523dd8ed3b2bc9ec1c06ca3aa1cad085`  
		Last Modified: Mon, 08 Jan 2018 19:26:11 GMT  
		Size: 21.4 MB (21424950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978f25869a0b28c0000c1400c4d6645552b8954ee0ca2a35e3be1e280626a59`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c279571c10a05be5d58403a1f071defd6ad58540cb5751856e806d1f46a0a`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8deec6c342e8494ee0b1b8b0dacb21c3bd531f9acfc4a8071dbdbc6627ceeda`  
		Last Modified: Mon, 08 Jan 2018 19:26:06 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bc76d0fd85a43e879dfab4afbe00bd47d749898bdbc056e395fb54b88060ae`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786d36b6c8b9669c9fdab1045457ecc5a7b4bfdf164ee18ea4cc7d536d073ee8`  
		Last Modified: Mon, 08 Jan 2018 19:26:05 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:9a5c7bc96871df9d759ec77821c383ce4529dad6400d8edb0ae3e07dd36132be
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (22950334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9df4fd0b3becf9399f5e4609eb3977ba597318de4c49708cc3f15b2024d31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 00:21:36 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 09 Jan 2018 00:21:37 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 09 Jan 2018 00:21:37 GMT
ARG MAKEFLAGS=
# Tue, 09 Jan 2018 00:21:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 09 Jan 2018 00:33:02 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 09 Jan 2018 00:33:02 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 09 Jan 2018 00:33:03 GMT
VOLUME [/znc-data]
# Tue, 09 Jan 2018 00:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e2e343b51217896e52f752876d4969a0193b178fb06ee38cb7cd1eb3f6cf`  
		Last Modified: Tue, 09 Jan 2018 00:33:37 GMT  
		Size: 20.9 MB (20910522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb9cc0e698f43d9279730dc4cb6ef5bb917f6e12c2cf2d36b97c128ca33c850`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40349944b00c12000c370852e1df7006264cd2d0aead60e96cbaf60fec6b1a38`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577024b94874551faf0da685544fd7b510106cc189cd7cbc8f84cd93391877c5`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146971a22cc13583aec417ef4f6aa1cee437ad1ec8978b10659dc0db2601fb59`  
		Last Modified: Tue, 09 Jan 2018 00:33:29 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d258b319575fad3ea8d2327f6241bffd01097a34f3b3d71ddc8e752169e7`  
		Last Modified: Tue, 09 Jan 2018 00:33:30 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
