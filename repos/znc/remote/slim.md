## `znc:slim`

```console
$ docker pull znc@sha256:6e719060ee4b9478a3d24252fe9e39cb939f6aa9c65c364992d8920932382559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:f691c97fdaf9bc376ef0a8ea11de517b64f2b56eef714ee4540d02e1bf50e6df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23491753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145e5a0868b9ec62982b38d3969119e83723ea2c23a2bbe3109a54cdea3e26b0`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Wed, 10 Jan 2018 03:44:57 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 Jan 2018 03:50:08 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 Jan 2018 03:54:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 10 Jan 2018 03:54:25 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
VOLUME [/znc-data]
# Wed, 10 Jan 2018 03:54:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad32a3613d96bafbe16a4754923db35f7076716384385e7ac32948f23da053f`  
		Last Modified: Wed, 10 Jan 2018 03:58:18 GMT  
		Size: 21.4 MB (21424900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3965ea6bf1ad0f2d455407cd841c93257b9d8e2b468f1c97badbf2e9d38e40`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e899407d7a2e78e94234f5c05ccde7d3098f8107f055add7c534bda293e498bf`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3692e7d9d5cb8faeb0a40eb5204fd9ddf121d25d6aa93c0504a18fef0db5669`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afeb522d2f31b5f0aa2c7a1b1cd9900529f2ca33663e30c2a657039558168090`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16dfa2877b3008a9e6da4ca0fa813f804d29ce4b074d61d5965f57ea717ecc5`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
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
