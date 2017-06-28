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
$ docker pull znc@sha256:2bcf685ffddbd0eb5596e0116f1207aaaff3c73c4df71a49bb8ec590a159ca28
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108964172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7b762dc4b420fe20047adb98d52931d26d426d01c34639b902779b3009d010`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 20:48:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Wed, 28 Jun 2017 20:48:09 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edfdd8f4dc814e0593f269a65ec14131689beea716ffb248e8d64a13e4e74cf`  
		Last Modified: Wed, 28 Jun 2017 20:50:06 GMT  
		Size: 86.2 MB (86160972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535ab67f7e27bdc10468a964293ce8c135077b3cab26dad190d123dc98bc8a40`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6`

```console
$ docker pull znc@sha256:2bcf685ffddbd0eb5596e0116f1207aaaff3c73c4df71a49bb8ec590a159ca28
```

-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108964172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7b762dc4b420fe20047adb98d52931d26d426d01c34639b902779b3009d010`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 20:48:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Wed, 28 Jun 2017 20:48:09 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edfdd8f4dc814e0593f269a65ec14131689beea716ffb248e8d64a13e4e74cf`  
		Last Modified: Wed, 28 Jun 2017 20:50:06 GMT  
		Size: 86.2 MB (86160972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535ab67f7e27bdc10468a964293ce8c135077b3cab26dad190d123dc98bc8a40`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:2bcf685ffddbd0eb5596e0116f1207aaaff3c73c4df71a49bb8ec590a159ca28
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108964172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7b762dc4b420fe20047adb98d52931d26d426d01c34639b902779b3009d010`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 20:48:08 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Wed, 28 Jun 2017 20:48:09 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edfdd8f4dc814e0593f269a65ec14131689beea716ffb248e8d64a13e4e74cf`  
		Last Modified: Wed, 28 Jun 2017 20:50:06 GMT  
		Size: 86.2 MB (86160972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535ab67f7e27bdc10468a964293ce8c135077b3cab26dad190d123dc98bc8a40`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.5-slim`

```console
$ docker pull znc@sha256:e9278270317f1b7e0765305ab9a27bc9445b5352c9780346391a804fb94cbd26
```

-	Platforms:
	-	linux; amd64

### `znc:1.6.5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22802867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7664d31d8b6760758773c963cc8c42c069018f230a43e6109158ef097f1546`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:e9278270317f1b7e0765305ab9a27bc9445b5352c9780346391a804fb94cbd26
```

-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22802867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7664d31d8b6760758773c963cc8c42c069018f230a43e6109158ef097f1546`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:e9278270317f1b7e0765305ab9a27bc9445b5352c9780346391a804fb94cbd26
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22802867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7664d31d8b6760758773c963cc8c42c069018f230a43e6109158ef097f1546`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:33:47 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 28 Jun 2017 20:33:48 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 28 Jun 2017 20:33:49 GMT
ARG MAKEFLAGS=
# Wed, 28 Jun 2017 20:33:50 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 28 Jun 2017 20:39:56 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 28 Jun 2017 20:47:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 28 Jun 2017 20:47:19 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:21 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:22 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:23 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 28 Jun 2017 20:47:25 GMT
VOLUME [/znc-data]
# Wed, 28 Jun 2017 20:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e97a4ee6e2192cfc7567b149a3034dbd1062168bde976b573f6c064569ae7af`  
		Last Modified: Wed, 28 Jun 2017 20:49:46 GMT  
		Size: 20.8 MB (20831280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1097da2d440a785223bdd07b230943b506805c34097617973943589949e176`  
		Last Modified: Wed, 28 Jun 2017 20:49:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f121ab67fbe8ce027877eb226555907ec0212a688c01f22c9692b0d441b5c`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138429538e6bcaf3b693e9ad074567d48fc2f4cd6a4cc5897431b80a789e592f`  
		Last Modified: Wed, 28 Jun 2017 20:49:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04f4a81c7bd13d5fe124bed0d2321d1254318456899b8ca0344af7b4f4991d`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e104d0532cb3c4542f3f0b01b9f43d44ff41a7a585c4934520406a0af2fb0b2`  
		Last Modified: Wed, 28 Jun 2017 20:49:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
