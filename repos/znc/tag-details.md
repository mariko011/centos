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
$ docker pull znc@sha256:331d694a486537b6385fddfa395ff70d5a79c5bdf655a380793501fd61c4107f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

```console
$ docker pull znc@sha256:4e23bf4aa3dbe373c060a64080aa682a21944f7968cc7518c5079e96440cf96c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108304379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c937279833c2bae162074b5c4a9b3fcae97ca8d02386b80aa138d0f02e971647`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 21:45:32 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 05 Dec 2017 21:45:32 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275960bc058f583bf22da131aee66994aa2af137d1a3ccdfbc60f93e1f05bfdb`  
		Last Modified: Tue, 05 Dec 2017 21:46:38 GMT  
		Size: 85.1 MB (85105277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a30ad38aa4cc9f7cd2d030e86385c936dcd91bbdb2ee60ea940eb83c039db1`  
		Last Modified: Tue, 05 Dec 2017 21:46:25 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5`

```console
$ docker pull znc@sha256:331d694a486537b6385fddfa395ff70d5a79c5bdf655a380793501fd61c4107f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.5` - linux; amd64

```console
$ docker pull znc@sha256:4e23bf4aa3dbe373c060a64080aa682a21944f7968cc7518c5079e96440cf96c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108304379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c937279833c2bae162074b5c4a9b3fcae97ca8d02386b80aa138d0f02e971647`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 21:45:32 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 05 Dec 2017 21:45:32 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275960bc058f583bf22da131aee66994aa2af137d1a3ccdfbc60f93e1f05bfdb`  
		Last Modified: Tue, 05 Dec 2017 21:46:38 GMT  
		Size: 85.1 MB (85105277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a30ad38aa4cc9f7cd2d030e86385c936dcd91bbdb2ee60ea940eb83c039db1`  
		Last Modified: Tue, 05 Dec 2017 21:46:25 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5-slim`

```console
$ docker pull znc@sha256:7217096b5482513dbf2eb4e609d440d0d057b3ec7e33bc26e170bb944ee68a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.5-slim` - linux; amd64

```console
$ docker pull znc@sha256:cc1981e25c0c9635ec806da0db11df67b194737abf5f6e3cfe1f1359577de2b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23198772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395bd6b0771e7a4dc1770485457a9694fe8a45655fd6c95ee4fa4303dd48243a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:7217096b5482513dbf2eb4e609d440d0d057b3ec7e33bc26e170bb944ee68a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

```console
$ docker pull znc@sha256:cc1981e25c0c9635ec806da0db11df67b194737abf5f6e3cfe1f1359577de2b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23198772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395bd6b0771e7a4dc1770485457a9694fe8a45655fd6c95ee4fa4303dd48243a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:331d694a486537b6385fddfa395ff70d5a79c5bdf655a380793501fd61c4107f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:4e23bf4aa3dbe373c060a64080aa682a21944f7968cc7518c5079e96440cf96c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108304379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c937279833c2bae162074b5c4a9b3fcae97ca8d02386b80aa138d0f02e971647`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Dec 2017 21:45:32 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 05 Dec 2017 21:45:32 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275960bc058f583bf22da131aee66994aa2af137d1a3ccdfbc60f93e1f05bfdb`  
		Last Modified: Tue, 05 Dec 2017 21:46:38 GMT  
		Size: 85.1 MB (85105277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a30ad38aa4cc9f7cd2d030e86385c936dcd91bbdb2ee60ea940eb83c039db1`  
		Last Modified: Tue, 05 Dec 2017 21:46:25 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:7217096b5482513dbf2eb4e609d440d0d057b3ec7e33bc26e170bb944ee68a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:cc1981e25c0c9635ec806da0db11df67b194737abf5f6e3cfe1f1359577de2b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23198772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395bd6b0771e7a4dc1770485457a9694fe8a45655fd6c95ee4fa4303dd48243a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:33:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 01 Dec 2017 22:33:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Fri, 01 Dec 2017 22:33:57 GMT
ARG MAKEFLAGS=
# Fri, 01 Dec 2017 22:33:57 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 05 Dec 2017 21:44:33 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 05 Dec 2017 21:44:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 05 Dec 2017 21:44:34 GMT
VOLUME [/znc-data]
# Tue, 05 Dec 2017 21:44:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c8abeb3ed2cd18e98b0a48e29a301c1d03ad73fef8bfea0bdb29c7fe8bcdac`  
		Last Modified: Tue, 05 Dec 2017 21:45:55 GMT  
		Size: 21.2 MB (21227353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6601401f705a259cc2941a9dc96179fe431877bb33ccbdd7b5b1361f27745`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93869cde8091f824307954a8f5773fd439e65de768012996e6f647e89374b`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0abf692a5e2174d4ca4206ca33ed0428222553e91fde42e8d17edb3f9a2fe14`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa448e382d362fd8bc4fee910ee8d20c93ea57182025d9e4ba9198fb47fc4d`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88f08766a7d863aeb1920ef1ce8473358d21ff8a387dfaf7306db571b688047`  
		Last Modified: Tue, 05 Dec 2017 21:45:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
