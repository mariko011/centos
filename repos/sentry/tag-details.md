<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.15.0`](#sentry8150)
-	[`sentry:8.15`](#sentry815)
-	[`sentry:8.15.0-onbuild`](#sentry8150-onbuild)
-	[`sentry:8.15-onbuild`](#sentry815-onbuild)
-	[`sentry:8.16.0`](#sentry8160)
-	[`sentry:8.16`](#sentry816)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.16.0-onbuild`](#sentry8160-onbuild)
-	[`sentry:8.16-onbuild`](#sentry816-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.15.0`

```console
$ docker pull sentry@sha256:44e3593dbe845deff8fceb14dee7510eee88a18b7e17e1f99a903b64e8e18b2e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188688438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206742c15c4542771b0086f3adbd7de5a5ca72ea03c1cc31cdb77e9b9c4310e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 02:59:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 10 May 2017 02:59:55 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 11 May 2017 21:40:56 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 21:40:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 21:41:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 21:41:12 GMT
CMD ["python2"]
# Sat, 13 May 2017 00:26:26 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 13 May 2017 00:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:26:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 13 May 2017 00:26:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 13 May 2017 00:26:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 13 May 2017 00:27:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:16 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 13 May 2017 00:27:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 13 May 2017 00:27:59 GMT
ENV SENTRY_VERSION=8.15.0
# Sat, 13 May 2017 00:29:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 13 May 2017 00:29:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 13 May 2017 00:29:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 13 May 2017 00:29:54 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 13 May 2017 00:29:55 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 13 May 2017 00:29:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 13 May 2017 00:29:57 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:29:58 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 13 May 2017 00:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 00:29:59 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a39a6a5e454839806b95d953215098f0bba13373240ec677fcc5d259a8982`  
		Last Modified: Wed, 10 May 2017 03:37:12 GMT  
		Size: 3.5 MB (3477536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaffc0cf19a2d4ecf26d7a5385b6a4a18e6566ef91de5c02eea48334bd5283`  
		Last Modified: Thu, 11 May 2017 22:22:40 GMT  
		Size: 15.0 MB (15005748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fe835fb6ba8019516a8bfd2ca60916af74f54ea68d11bc5c3056a1108aa9b`  
		Last Modified: Thu, 11 May 2017 22:22:37 GMT  
		Size: 1.8 MB (1750143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0196f8061bac79aa2ef25a65b138716bee9112ee52e282d8d1e6b5d18b8b455`  
		Last Modified: Sat, 13 May 2017 00:35:02 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875585d0a2cdcf6741b9ec103ced46c727ffc9faebddcf466cf68b66309c768d`  
		Last Modified: Sat, 13 May 2017 00:35:03 GMT  
		Size: 63.9 MB (63850804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e485dfbfdae7408f8b3d22fb6585817d1b23fb37e73bfb7595b69fff68f45a35`  
		Last Modified: Sat, 13 May 2017 00:34:45 GMT  
		Size: 624.8 KB (624801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691fc02f0b86d432e8357d1d21d9027d385bf2f3c717fb0aac87a0723e898575`  
		Last Modified: Sat, 13 May 2017 00:34:46 GMT  
		Size: 132.2 KB (132182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880c6f148ebb1be036d2f1ea9c20a248a5fc8d75b43012a69c2fcb2d634380b2`  
		Last Modified: Sat, 13 May 2017 00:34:43 GMT  
		Size: 2.4 MB (2360127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ababd221ec92c860e7b34837605f3d3e342cd9bc82dfc5351714c8cb020ed1db`  
		Last Modified: Sat, 13 May 2017 00:35:00 GMT  
		Size: 48.9 MB (48893636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba1d4e718adb49d924ed9783bfc6095f2cdef198e5be03a9e4d1676ecc5bc76`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4a808e477b6d5064cc55d494d153791f57a3cbce62a9e798d2bcac465feae`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df6392fad9c5aa63d69edeb88f1cb775f2847775003139be396c6464881636`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4440d04268ff4ac33074a745907401e0d98dae09ee7a9812e74367b0a3c247ba`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15`

```console
$ docker pull sentry@sha256:44e3593dbe845deff8fceb14dee7510eee88a18b7e17e1f99a903b64e8e18b2e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188688438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206742c15c4542771b0086f3adbd7de5a5ca72ea03c1cc31cdb77e9b9c4310e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 02:59:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 10 May 2017 02:59:55 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 11 May 2017 21:40:56 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 21:40:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 21:41:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 21:41:12 GMT
CMD ["python2"]
# Sat, 13 May 2017 00:26:26 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 13 May 2017 00:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:26:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 13 May 2017 00:26:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 13 May 2017 00:26:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 13 May 2017 00:27:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:16 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 13 May 2017 00:27:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 13 May 2017 00:27:59 GMT
ENV SENTRY_VERSION=8.15.0
# Sat, 13 May 2017 00:29:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 13 May 2017 00:29:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 13 May 2017 00:29:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 13 May 2017 00:29:54 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 13 May 2017 00:29:55 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 13 May 2017 00:29:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 13 May 2017 00:29:57 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:29:58 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 13 May 2017 00:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 00:29:59 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a39a6a5e454839806b95d953215098f0bba13373240ec677fcc5d259a8982`  
		Last Modified: Wed, 10 May 2017 03:37:12 GMT  
		Size: 3.5 MB (3477536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaffc0cf19a2d4ecf26d7a5385b6a4a18e6566ef91de5c02eea48334bd5283`  
		Last Modified: Thu, 11 May 2017 22:22:40 GMT  
		Size: 15.0 MB (15005748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fe835fb6ba8019516a8bfd2ca60916af74f54ea68d11bc5c3056a1108aa9b`  
		Last Modified: Thu, 11 May 2017 22:22:37 GMT  
		Size: 1.8 MB (1750143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0196f8061bac79aa2ef25a65b138716bee9112ee52e282d8d1e6b5d18b8b455`  
		Last Modified: Sat, 13 May 2017 00:35:02 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875585d0a2cdcf6741b9ec103ced46c727ffc9faebddcf466cf68b66309c768d`  
		Last Modified: Sat, 13 May 2017 00:35:03 GMT  
		Size: 63.9 MB (63850804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e485dfbfdae7408f8b3d22fb6585817d1b23fb37e73bfb7595b69fff68f45a35`  
		Last Modified: Sat, 13 May 2017 00:34:45 GMT  
		Size: 624.8 KB (624801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691fc02f0b86d432e8357d1d21d9027d385bf2f3c717fb0aac87a0723e898575`  
		Last Modified: Sat, 13 May 2017 00:34:46 GMT  
		Size: 132.2 KB (132182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880c6f148ebb1be036d2f1ea9c20a248a5fc8d75b43012a69c2fcb2d634380b2`  
		Last Modified: Sat, 13 May 2017 00:34:43 GMT  
		Size: 2.4 MB (2360127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ababd221ec92c860e7b34837605f3d3e342cd9bc82dfc5351714c8cb020ed1db`  
		Last Modified: Sat, 13 May 2017 00:35:00 GMT  
		Size: 48.9 MB (48893636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba1d4e718adb49d924ed9783bfc6095f2cdef198e5be03a9e4d1676ecc5bc76`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4a808e477b6d5064cc55d494d153791f57a3cbce62a9e798d2bcac465feae`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df6392fad9c5aa63d69edeb88f1cb775f2847775003139be396c6464881636`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4440d04268ff4ac33074a745907401e0d98dae09ee7a9812e74367b0a3c247ba`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15.0-onbuild`

```console
$ docker pull sentry@sha256:9cff83e3fe56a7267435d0d544f29c453f14ce1a110530af092b4c83d39e902a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188688567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a019090a94a8c324f4dfed504c6c851fa14ed45c3623bb2f9a47b9fb250287`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 02:59:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 10 May 2017 02:59:55 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 11 May 2017 21:40:56 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 21:40:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 21:41:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 21:41:12 GMT
CMD ["python2"]
# Sat, 13 May 2017 00:26:26 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 13 May 2017 00:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:26:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 13 May 2017 00:26:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 13 May 2017 00:26:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 13 May 2017 00:27:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:16 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 13 May 2017 00:27:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 13 May 2017 00:27:59 GMT
ENV SENTRY_VERSION=8.15.0
# Sat, 13 May 2017 00:29:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 13 May 2017 00:29:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 13 May 2017 00:29:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 13 May 2017 00:29:54 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 13 May 2017 00:29:55 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 13 May 2017 00:29:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 13 May 2017 00:29:57 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:29:58 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 13 May 2017 00:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 00:29:59 GMT
CMD ["run" "web"]
# Sat, 13 May 2017 00:30:27 GMT
WORKDIR /usr/src/sentry
# Sat, 13 May 2017 00:30:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 13 May 2017 00:30:29 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 13 May 2017 00:30:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 13 May 2017 00:30:31 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 13 May 2017 00:30:32 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a39a6a5e454839806b95d953215098f0bba13373240ec677fcc5d259a8982`  
		Last Modified: Wed, 10 May 2017 03:37:12 GMT  
		Size: 3.5 MB (3477536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaffc0cf19a2d4ecf26d7a5385b6a4a18e6566ef91de5c02eea48334bd5283`  
		Last Modified: Thu, 11 May 2017 22:22:40 GMT  
		Size: 15.0 MB (15005748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fe835fb6ba8019516a8bfd2ca60916af74f54ea68d11bc5c3056a1108aa9b`  
		Last Modified: Thu, 11 May 2017 22:22:37 GMT  
		Size: 1.8 MB (1750143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0196f8061bac79aa2ef25a65b138716bee9112ee52e282d8d1e6b5d18b8b455`  
		Last Modified: Sat, 13 May 2017 00:35:02 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875585d0a2cdcf6741b9ec103ced46c727ffc9faebddcf466cf68b66309c768d`  
		Last Modified: Sat, 13 May 2017 00:35:03 GMT  
		Size: 63.9 MB (63850804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e485dfbfdae7408f8b3d22fb6585817d1b23fb37e73bfb7595b69fff68f45a35`  
		Last Modified: Sat, 13 May 2017 00:34:45 GMT  
		Size: 624.8 KB (624801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691fc02f0b86d432e8357d1d21d9027d385bf2f3c717fb0aac87a0723e898575`  
		Last Modified: Sat, 13 May 2017 00:34:46 GMT  
		Size: 132.2 KB (132182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880c6f148ebb1be036d2f1ea9c20a248a5fc8d75b43012a69c2fcb2d634380b2`  
		Last Modified: Sat, 13 May 2017 00:34:43 GMT  
		Size: 2.4 MB (2360127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ababd221ec92c860e7b34837605f3d3e342cd9bc82dfc5351714c8cb020ed1db`  
		Last Modified: Sat, 13 May 2017 00:35:00 GMT  
		Size: 48.9 MB (48893636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba1d4e718adb49d924ed9783bfc6095f2cdef198e5be03a9e4d1676ecc5bc76`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4a808e477b6d5064cc55d494d153791f57a3cbce62a9e798d2bcac465feae`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df6392fad9c5aa63d69edeb88f1cb775f2847775003139be396c6464881636`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4440d04268ff4ac33074a745907401e0d98dae09ee7a9812e74367b0a3c247ba`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231ed05345c179497cbcaa0cc03be91e6027d5a15f4c3c17c0e888cd4809cfd5`  
		Last Modified: Sat, 13 May 2017 00:35:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15-onbuild`

```console
$ docker pull sentry@sha256:9cff83e3fe56a7267435d0d544f29c453f14ce1a110530af092b4c83d39e902a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188688567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a019090a94a8c324f4dfed504c6c851fa14ed45c3623bb2f9a47b9fb250287`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 02:59:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 10 May 2017 02:59:55 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 11 May 2017 21:40:56 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 21:40:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 21:41:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 21:41:12 GMT
CMD ["python2"]
# Sat, 13 May 2017 00:26:26 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 13 May 2017 00:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:26:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 13 May 2017 00:26:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 13 May 2017 00:26:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 13 May 2017 00:27:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:16 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 13 May 2017 00:27:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 13 May 2017 00:27:59 GMT
ENV SENTRY_VERSION=8.15.0
# Sat, 13 May 2017 00:29:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 13 May 2017 00:29:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 13 May 2017 00:29:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 13 May 2017 00:29:54 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 13 May 2017 00:29:55 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 13 May 2017 00:29:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 13 May 2017 00:29:57 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:29:58 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 13 May 2017 00:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 00:29:59 GMT
CMD ["run" "web"]
# Sat, 13 May 2017 00:30:27 GMT
WORKDIR /usr/src/sentry
# Sat, 13 May 2017 00:30:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 13 May 2017 00:30:29 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 13 May 2017 00:30:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 13 May 2017 00:30:31 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 13 May 2017 00:30:32 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a39a6a5e454839806b95d953215098f0bba13373240ec677fcc5d259a8982`  
		Last Modified: Wed, 10 May 2017 03:37:12 GMT  
		Size: 3.5 MB (3477536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaffc0cf19a2d4ecf26d7a5385b6a4a18e6566ef91de5c02eea48334bd5283`  
		Last Modified: Thu, 11 May 2017 22:22:40 GMT  
		Size: 15.0 MB (15005748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fe835fb6ba8019516a8bfd2ca60916af74f54ea68d11bc5c3056a1108aa9b`  
		Last Modified: Thu, 11 May 2017 22:22:37 GMT  
		Size: 1.8 MB (1750143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0196f8061bac79aa2ef25a65b138716bee9112ee52e282d8d1e6b5d18b8b455`  
		Last Modified: Sat, 13 May 2017 00:35:02 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875585d0a2cdcf6741b9ec103ced46c727ffc9faebddcf466cf68b66309c768d`  
		Last Modified: Sat, 13 May 2017 00:35:03 GMT  
		Size: 63.9 MB (63850804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e485dfbfdae7408f8b3d22fb6585817d1b23fb37e73bfb7595b69fff68f45a35`  
		Last Modified: Sat, 13 May 2017 00:34:45 GMT  
		Size: 624.8 KB (624801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691fc02f0b86d432e8357d1d21d9027d385bf2f3c717fb0aac87a0723e898575`  
		Last Modified: Sat, 13 May 2017 00:34:46 GMT  
		Size: 132.2 KB (132182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880c6f148ebb1be036d2f1ea9c20a248a5fc8d75b43012a69c2fcb2d634380b2`  
		Last Modified: Sat, 13 May 2017 00:34:43 GMT  
		Size: 2.4 MB (2360127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ababd221ec92c860e7b34837605f3d3e342cd9bc82dfc5351714c8cb020ed1db`  
		Last Modified: Sat, 13 May 2017 00:35:00 GMT  
		Size: 48.9 MB (48893636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba1d4e718adb49d924ed9783bfc6095f2cdef198e5be03a9e4d1676ecc5bc76`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4a808e477b6d5064cc55d494d153791f57a3cbce62a9e798d2bcac465feae`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df6392fad9c5aa63d69edeb88f1cb775f2847775003139be396c6464881636`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4440d04268ff4ac33074a745907401e0d98dae09ee7a9812e74367b0a3c247ba`  
		Last Modified: Sat, 13 May 2017 00:34:41 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231ed05345c179497cbcaa0cc03be91e6027d5a15f4c3c17c0e888cd4809cfd5`  
		Last Modified: Sat, 13 May 2017 00:35:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.16.0`

```console
$ docker pull sentry@sha256:97f4f15d006bef8b5e5902e344262f564f58cdaed5b876f50075d4a297eb5e46
```

-	Platforms:
	-	linux; amd64

### `sentry:8.16.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188174830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eba6168b9c0d705cfa78a403b3733a44f696b7c5c29085e02918c7fe94c449c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 02:59:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 10 May 2017 02:59:55 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 11 May 2017 21:40:56 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 21:40:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 21:41:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 21:41:12 GMT
CMD ["python2"]
# Sat, 13 May 2017 00:26:26 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 13 May 2017 00:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 13 May 2017 00:26:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 13 May 2017 00:26:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 13 May 2017 00:26:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 13 May 2017 00:27:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:16 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 13 May 2017 00:27:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 13 May 2017 00:27:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 13 May 2017 00:31:00 GMT
ENV SENTRY_VERSION=8.16.0
# Sat, 13 May 2017 00:33:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 13 May 2017 00:33:33 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 13 May 2017 00:33:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 13 May 2017 00:33:36 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 13 May 2017 00:33:37 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 13 May 2017 00:33:39 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 13 May 2017 00:33:40 GMT
EXPOSE 9000/tcp
# Sat, 13 May 2017 00:33:40 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 13 May 2017 00:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 13 May 2017 00:33:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68a39a6a5e454839806b95d953215098f0bba13373240ec677fcc5d259a8982`  
		Last Modified: Wed, 10 May 2017 03:37:12 GMT  
		Size: 3.5 MB (3477536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaffc0cf19a2d4ecf26d7a5385b6a4a18e6566ef91de5c02eea48334bd5283`  
		Last Modified: Thu, 11 May 2017 22:22:40 GMT  
		Size: 15.0 MB (15005748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fe835fb6ba8019516a8bfd2ca60916af74f54ea68d11bc5c3056a1108aa9b`  
		Last Modified: Thu, 11 May 2017 22:22:37 GMT  
		Size: 1.8 MB (1750143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0196f8061bac79aa2ef25a65b138716bee9112ee52e282d8d1e6b5d18b8b455`  
		Last Modified: Sat, 13 May 2017 00:35:02 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875585d0a2cdcf6741b9ec103ced46c727ffc9faebddcf466cf68b66309c768d`  
		Last Modified: Sat, 13 May 2017 00:35:03 GMT  
		Size: 63.9 MB (63850804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e485dfbfdae7408f8b3d22fb6585817d1b23fb37e73bfb7595b69fff68f45a35`  
		Last Modified: Sat, 13 May 2017 00:34:45 GMT  
		Size: 624.8 KB (624801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691fc02f0b86d432e8357d1d21d9027d385bf2f3c717fb0aac87a0723e898575`  
		Last Modified: Sat, 13 May 2017 00:34:46 GMT  
		Size: 132.2 KB (132182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880c6f148ebb1be036d2f1ea9c20a248a5fc8d75b43012a69c2fcb2d634380b2`  
		Last Modified: Sat, 13 May 2017 00:34:43 GMT  
		Size: 2.4 MB (2360127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bb0dc60b6fc0e3b7923f40f39def7ce2271eb947d36a8d951afe68ad44ff29`  
		Last Modified: Sat, 13 May 2017 00:37:08 GMT  
		Size: 48.4 MB (48380028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1927a828ade5796b4f10deeea70dea5fac72621f8e14c26482bdc25d428affde`  
		Last Modified: Sat, 13 May 2017 00:36:53 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e5aeccd510090e989e4763aad33a2d7759727a1759bc00aa933cf6b572a32`  
		Last Modified: Sat, 13 May 2017 00:36:54 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bdb43a64ccf36cebeee94dced044816913cb52726ae2a5a8ebb81be0b2b45a2`  
		Last Modified: Sat, 13 May 2017 00:36:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65ec657aa9a87d5dc2596c63a1ce12b6476244a3a07398837bc852393428000`  
		Last Modified: Sat, 13 May 2017 00:36:54 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.16`

```console
$ docker pull sentry@sha256:69b9a0f5f64bf6a7b65dc78237d9dc4d96ce754cb5f3125282f3f383d110cd17
```

-	Platforms:
	-	linux; amd64

### `sentry:8.16` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187602939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c8634700a7c929f5536b9b560b7acc6b6b94bc85453c85b0c1e59cd303d853`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:69b9a0f5f64bf6a7b65dc78237d9dc4d96ce754cb5f3125282f3f383d110cd17
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187602939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c8634700a7c929f5536b9b560b7acc6b6b94bc85453c85b0c1e59cd303d853`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:69b9a0f5f64bf6a7b65dc78237d9dc4d96ce754cb5f3125282f3f383d110cd17
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187602939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c8634700a7c929f5536b9b560b7acc6b6b94bc85453c85b0c1e59cd303d853`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.16.0-onbuild`

```console
$ docker pull sentry@sha256:616365d34135c9bd66ef9501c87791f4f5ea47634af9cbe81094e38c1bbdb446
```

-	Platforms:
	-	linux; amd64

### `sentry:8.16.0-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187603068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aab08b48e3777661572cc17f6ad67fd35bcce03e2f498554f59a0a4b6054cdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
# Tue, 02 May 2017 16:53:09 GMT
WORKDIR /usr/src/sentry
# Tue, 02 May 2017 16:53:09 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 02 May 2017 16:53:10 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 02 May 2017 16:53:11 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 02 May 2017 16:53:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 02 May 2017 16:53:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e67d93e4c3554ba35a90ddf547c04c03aebd210833067003190dc154811e97`  
		Last Modified: Tue, 02 May 2017 16:59:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.16-onbuild`

```console
$ docker pull sentry@sha256:616365d34135c9bd66ef9501c87791f4f5ea47634af9cbe81094e38c1bbdb446
```

-	Platforms:
	-	linux; amd64

### `sentry:8.16-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187603068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aab08b48e3777661572cc17f6ad67fd35bcce03e2f498554f59a0a4b6054cdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
# Tue, 02 May 2017 16:53:09 GMT
WORKDIR /usr/src/sentry
# Tue, 02 May 2017 16:53:09 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 02 May 2017 16:53:10 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 02 May 2017 16:53:11 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 02 May 2017 16:53:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 02 May 2017 16:53:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e67d93e4c3554ba35a90ddf547c04c03aebd210833067003190dc154811e97`  
		Last Modified: Tue, 02 May 2017 16:59:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:616365d34135c9bd66ef9501c87791f4f5ea47634af9cbe81094e38c1bbdb446
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187603068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aab08b48e3777661572cc17f6ad67fd35bcce03e2f498554f59a0a4b6054cdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
# Tue, 02 May 2017 16:53:09 GMT
WORKDIR /usr/src/sentry
# Tue, 02 May 2017 16:53:09 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 02 May 2017 16:53:10 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 02 May 2017 16:53:11 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 02 May 2017 16:53:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 02 May 2017 16:53:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e67d93e4c3554ba35a90ddf547c04c03aebd210833067003190dc154811e97`  
		Last Modified: Tue, 02 May 2017 16:59:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:616365d34135c9bd66ef9501c87791f4f5ea47634af9cbe81094e38c1bbdb446
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.6 MB (187603068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aab08b48e3777661572cc17f6ad67fd35bcce03e2f498554f59a0a4b6054cdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:22:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 25 Apr 2017 04:22:12 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 01 May 2017 22:49:34 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 22:49:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 22:49:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 22:49:58 GMT
CMD ["python2"]
# Tue, 02 May 2017 16:43:25 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 02 May 2017 16:43:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 02 May 2017 16:44:13 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 02 May 2017 16:44:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 02 May 2017 16:44:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:44:42 GMT
ENV TINI_VERSION=v0.14.0
# Tue, 02 May 2017 16:44:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 02 May 2017 16:45:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 02 May 2017 16:49:47 GMT
ENV SENTRY_VERSION=8.16.0
# Tue, 02 May 2017 16:51:51 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 02 May 2017 16:52:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 02 May 2017 16:52:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 02 May 2017 16:52:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 02 May 2017 16:52:25 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 02 May 2017 16:52:27 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 02 May 2017 16:52:27 GMT
EXPOSE 9000/tcp
# Tue, 02 May 2017 16:52:28 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 02 May 2017 16:52:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 16:52:30 GMT
CMD ["run" "web"]
# Tue, 02 May 2017 16:53:09 GMT
WORKDIR /usr/src/sentry
# Tue, 02 May 2017 16:53:09 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 02 May 2017 16:53:10 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 02 May 2017 16:53:11 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 02 May 2017 16:53:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 02 May 2017 16:53:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9849048e1d51668d4d028b7b8be806861e3930071f78a72b7cbab76487ef40`  
		Last Modified: Tue, 02 May 2017 16:45:32 GMT  
		Size: 15.0 MB (15006288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794c365861b3f31c667958279ec9c43ff383da523aebd60ef95572b8f24d172`  
		Last Modified: Tue, 02 May 2017 16:45:28 GMT  
		Size: 1.8 MB (1750678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25801d7807f1c6b6d509222e87adaf442d04e756fd10fea618c66120b5154e`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286a8d7cbd2830576b06c00973751fce0ed72997b31c5052bccba8b6e0d4d37`  
		Last Modified: Tue, 02 May 2017 16:54:18 GMT  
		Size: 63.8 MB (63833638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba08138526bea98dcd6d2e93646ca9cf0c7ed20be065b6b7a79a2fe3d5196d7`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 625.2 KB (625239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ef49145585a9b5c4cf460e5b916d77d702966dea2f62a0cbbb67cf93cdb22`  
		Last Modified: Tue, 02 May 2017 16:53:54 GMT  
		Size: 132.6 KB (132589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270a0475baebd4064a36c4c4cc9b3e6d450593245cce2e58ba3a4a0d3fd0e51d`  
		Last Modified: Tue, 02 May 2017 16:53:55 GMT  
		Size: 2.4 MB (2360619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0154c54586cd6b3d28a9cf6f4e5730d1191d44c9d4b63b37b47ae7a774069ddf`  
		Last Modified: Tue, 02 May 2017 16:56:55 GMT  
		Size: 47.9 MB (47856184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97722a91c4659997c7553271281d37b57166a8828cb1e8f03f074408173ea32`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3967c23e5dd7077edbbd700b8fb936ee4fa9dc7cf81b894a155d3ce8e1e0cfa8`  
		Last Modified: Tue, 02 May 2017 16:56:44 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043725331b062b934608ef764670fb57df15b30736e1c4ea3a0831e22fbce8fd`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079424d54212e94dac6082e5978d108f2d78d1d8f37f159fb0129fea4ea1be1d`  
		Last Modified: Tue, 02 May 2017 16:56:45 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e67d93e4c3554ba35a90ddf547c04c03aebd210833067003190dc154811e97`  
		Last Modified: Tue, 02 May 2017 16:59:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
