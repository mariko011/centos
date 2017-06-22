## `znc:latest`

```console
$ docker pull znc@sha256:6070e72f531d614e7ab63692b8a0fa8ddf66048143871dc3f3f78d4c36094dec
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108963664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa11b7a95f1a29e5f7917bdc13f0c641934a0961cc9c5b73c1def16a64a709b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 14:17:24 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 20 Jun 2017 14:17:25 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 20 Jun 2017 14:17:26 GMT
ARG MAKEFLAGS=
# Tue, 20 Jun 2017 14:17:27 GMT
ENV ZNC_VERSION=1.6.5
# Thu, 22 Jun 2017 22:58:26 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Thu, 22 Jun 2017 23:08:05 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Thu, 22 Jun 2017 23:08:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Thu, 22 Jun 2017 23:08:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Thu, 22 Jun 2017 23:08:33 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Thu, 22 Jun 2017 23:08:35 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Thu, 22 Jun 2017 23:08:36 GMT
VOLUME [/znc-data]
# Thu, 22 Jun 2017 23:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Jun 2017 23:10:06 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Thu, 22 Jun 2017 23:10:24 GMT
COPY file:6c16851131df8503cdfe8e34d5a5d1838018922ad866b0f037d9117a044ccb19 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfdfda546395ec8f6ec38c9ada3639f63e196501b340b40659014e9adce0643`  
		Last Modified: Thu, 22 Jun 2017 23:11:45 GMT  
		Size: 20.8 MB (20831249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d314d89a15183ec29a5cede706d61c09bdc3eeed858e28daa7cf1659c27db5c2`  
		Last Modified: Thu, 22 Jun 2017 23:11:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca106b972385d93d38b387126aeff0e9e89b0aedee781a03185b6a1d63c3dc74`  
		Last Modified: Thu, 22 Jun 2017 23:11:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea6bd22202082e7f45bcd0e98bdf68130beae2365e77d5998e36df21d8f30c2`  
		Last Modified: Thu, 22 Jun 2017 23:11:38 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b5416f92c19bf45fea1005e08a36eeb186007feb784e3677ff8a0d5e406a26`  
		Last Modified: Thu, 22 Jun 2017 23:11:38 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5165bc06efe0db7024239c7e530c59a3656db7a7fe5df63e5ee4357476ec6c74`  
		Last Modified: Thu, 22 Jun 2017 23:11:38 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823033e6a0d1aef65dcd64d8a66681efc86d5e09a9e174eefb09e5f7db0d9bbb`  
		Last Modified: Thu, 22 Jun 2017 23:11:55 GMT  
		Size: 86.2 MB (86160449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc02ea3eae5b9ef1ac0d906df6c3648c9e4b93e9c514da449c44b5604c56ae9e`  
		Last Modified: Thu, 22 Jun 2017 23:11:38 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
