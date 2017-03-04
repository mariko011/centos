## `znc:slim`

```console
$ docker pull znc@sha256:ae35df604827765444cc47b8fa2ee0ac8d51ea4eb39a15e0ed1cd71a0909d4cf
```

-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23476075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fea4d45e561512a399a97aa932503379b72a2030230b33c8dfd7fa0812f9ea9`
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
# Fri, 03 Mar 2017 23:56:55 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         openssl         tini     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 03 Mar 2017 23:56:55 GMT
COPY file:e05a8b743f8314062b8181a6e6635452aaf4c0cb244920409faa0b1555827b58 in / 
# Fri, 03 Mar 2017 23:56:56 GMT
USER [znc]
# Fri, 03 Mar 2017 23:56:56 GMT
VOLUME [/znc-data]
# Fri, 03 Mar 2017 23:56:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3bcd4c80f8dbad22a7267e410711968e5cc7eae3c742f3009f3f5b544cfd64`  
		Last Modified: Sat, 04 Mar 2017 06:42:30 GMT  
		Size: 21.6 MB (21570245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3b4e639af3557c2462feb631071743ff2d83fd72a8ab4de68a59f75629769f`  
		Last Modified: Sat, 04 Mar 2017 06:42:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
