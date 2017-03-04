## `znc:latest`

```console
$ docker pull znc@sha256:9879f253cc0b55f071f4d450980f8cc71e9c17225499ae7800befe2381ccf1d7
```

-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109464428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd757c8f3e2604c36a3528076622c066410ac4e11b1460a858ab3028cd64e5a`
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
# Sat, 04 Mar 2017 00:14:40 GMT
USER [root]
# Sat, 04 Mar 2017 00:14:50 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         openssl-dev         perl         python3
# Sat, 04 Mar 2017 00:14:51 GMT
COPY file:f9602e4a7ca0310c8885f47dbcc048d40ea8d2cb7ab4f513acaa5a91869f2e08 in / 
# Sat, 04 Mar 2017 00:14:51 GMT
USER [znc]
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
	-	`sha256:92e387cf571d364421603904a139c57c5d6ec14bb84a805f9508d250bca1bdd2`  
		Last Modified: Sat, 04 Mar 2017 06:44:06 GMT  
		Size: 86.0 MB (85988060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5fa8fe63105a461d121a2a71c6ac83583f822c3eab1c94561fe25f5727bc4a`  
		Last Modified: Sat, 04 Mar 2017 06:43:27 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
