<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8`](#sentry8)
-	[`sentry:8.19`](#sentry819)
-	[`sentry:8.19.0`](#sentry8190)
-	[`sentry:8.19.0-onbuild`](#sentry8190-onbuild)
-	[`sentry:8.19-onbuild`](#sentry819-onbuild)
-	[`sentry:8.20`](#sentry820)
-	[`sentry:8.20.0`](#sentry8200)
-	[`sentry:8.20.0-onbuild`](#sentry8200-onbuild)
-	[`sentry:8.20-onbuild`](#sentry820-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8`

```console
$ docker pull sentry@sha256:c418885df63f89474d1e1f18fec73fcfdb102b39f57478e597d7bec17a0cb7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:c91ae82cb7d72d7205a98ac41d903c14c0df84b4200e91efc2e6689dd32c93e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75d343cd28e1288d7979c953f263d37548929668d2afd765641da38f376a1b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19`

```console
$ docker pull sentry@sha256:2ae0deb7f860b927ddf94870edac6a2292c79f127925eed56343d16dfef4fdc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19` - linux; amd64

```console
$ docker pull sentry@sha256:732a1cd02c2108601d8765106cb1a921863a6136ad933ee65d1d9e60b5daac68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194804277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fb812d9f9364f2dd6ff0f419d3aebe89bb785942d6f3289c6ea474e6509253`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:12:59 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 15 Sep 2017 01:14:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:14:42 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:14:43 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:14:45 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:14:45 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:14:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:14:46 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7ecde35d0a336b98362f3817f2ee6f4cce3fcda17d2b5b788a1f182096348`  
		Last Modified: Fri, 15 Sep 2017 01:18:07 GMT  
		Size: 53.9 MB (53886810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b01910868965dc62528db3c72b0cf40a8fb3046937bc2e054266540b93a05`  
		Last Modified: Fri, 15 Sep 2017 01:17:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edfa11b3e6337dbd9cfe42937d863cb52c89c9c6aa16ace05a54bf6c7b443d8`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb61ef5fecf89edc39405e5c382d61891e4b9c39421f07c8897bf24880bb8649`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130cccce71d1295379ce9eb127040339454880fee9d72e715295ba8e828bee50`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0`

```console
$ docker pull sentry@sha256:2ae0deb7f860b927ddf94870edac6a2292c79f127925eed56343d16dfef4fdc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19.0` - linux; amd64

```console
$ docker pull sentry@sha256:732a1cd02c2108601d8765106cb1a921863a6136ad933ee65d1d9e60b5daac68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194804277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fb812d9f9364f2dd6ff0f419d3aebe89bb785942d6f3289c6ea474e6509253`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:12:59 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 15 Sep 2017 01:14:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:14:42 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:14:43 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:14:45 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:14:45 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:14:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:14:46 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7ecde35d0a336b98362f3817f2ee6f4cce3fcda17d2b5b788a1f182096348`  
		Last Modified: Fri, 15 Sep 2017 01:18:07 GMT  
		Size: 53.9 MB (53886810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b01910868965dc62528db3c72b0cf40a8fb3046937bc2e054266540b93a05`  
		Last Modified: Fri, 15 Sep 2017 01:17:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edfa11b3e6337dbd9cfe42937d863cb52c89c9c6aa16ace05a54bf6c7b443d8`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb61ef5fecf89edc39405e5c382d61891e4b9c39421f07c8897bf24880bb8649`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130cccce71d1295379ce9eb127040339454880fee9d72e715295ba8e828bee50`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0-onbuild`

```console
$ docker pull sentry@sha256:fcda6193d21398fc416373d5a265a35f3c750370cb790f9f5fa15cc510d82714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a27d2e777edc1c4723b9f8b2be97fba338de5badd96cb4dfdfabd6b931902902
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194804415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e58c7579b50aeeb7c2f39ddee7d83705cd25493542fff203f1a31ad73408fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:12:59 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 15 Sep 2017 01:14:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:14:42 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:14:43 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:14:45 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:14:45 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:14:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:14:46 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:14:55 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:14:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7ecde35d0a336b98362f3817f2ee6f4cce3fcda17d2b5b788a1f182096348`  
		Last Modified: Fri, 15 Sep 2017 01:18:07 GMT  
		Size: 53.9 MB (53886810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b01910868965dc62528db3c72b0cf40a8fb3046937bc2e054266540b93a05`  
		Last Modified: Fri, 15 Sep 2017 01:17:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edfa11b3e6337dbd9cfe42937d863cb52c89c9c6aa16ace05a54bf6c7b443d8`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb61ef5fecf89edc39405e5c382d61891e4b9c39421f07c8897bf24880bb8649`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130cccce71d1295379ce9eb127040339454880fee9d72e715295ba8e828bee50`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82612ff8511e2f95f741a90034d3d294592ca089034697de34ee437babca712c`  
		Last Modified: Fri, 15 Sep 2017 01:18:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19-onbuild`

```console
$ docker pull sentry@sha256:fcda6193d21398fc416373d5a265a35f3c750370cb790f9f5fa15cc510d82714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a27d2e777edc1c4723b9f8b2be97fba338de5badd96cb4dfdfabd6b931902902
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194804415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e58c7579b50aeeb7c2f39ddee7d83705cd25493542fff203f1a31ad73408fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:12:59 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 15 Sep 2017 01:14:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:14:42 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:14:43 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:44 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:14:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:14:45 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:14:45 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:14:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:14:46 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:14:55 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:14:56 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:14:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7ecde35d0a336b98362f3817f2ee6f4cce3fcda17d2b5b788a1f182096348`  
		Last Modified: Fri, 15 Sep 2017 01:18:07 GMT  
		Size: 53.9 MB (53886810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b01910868965dc62528db3c72b0cf40a8fb3046937bc2e054266540b93a05`  
		Last Modified: Fri, 15 Sep 2017 01:17:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edfa11b3e6337dbd9cfe42937d863cb52c89c9c6aa16ace05a54bf6c7b443d8`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb61ef5fecf89edc39405e5c382d61891e4b9c39421f07c8897bf24880bb8649`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130cccce71d1295379ce9eb127040339454880fee9d72e715295ba8e828bee50`  
		Last Modified: Fri, 15 Sep 2017 01:17:53 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82612ff8511e2f95f741a90034d3d294592ca089034697de34ee437babca712c`  
		Last Modified: Fri, 15 Sep 2017 01:18:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20`

```console
$ docker pull sentry@sha256:c418885df63f89474d1e1f18fec73fcfdb102b39f57478e597d7bec17a0cb7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20` - linux; amd64

```console
$ docker pull sentry@sha256:c91ae82cb7d72d7205a98ac41d903c14c0df84b4200e91efc2e6689dd32c93e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75d343cd28e1288d7979c953f263d37548929668d2afd765641da38f376a1b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20.0`

```console
$ docker pull sentry@sha256:c418885df63f89474d1e1f18fec73fcfdb102b39f57478e597d7bec17a0cb7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0` - linux; amd64

```console
$ docker pull sentry@sha256:c91ae82cb7d72d7205a98ac41d903c14c0df84b4200e91efc2e6689dd32c93e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75d343cd28e1288d7979c953f263d37548929668d2afd765641da38f376a1b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20.0-onbuild`

```console
$ docker pull sentry@sha256:41afae435201cffec0b4382cbbf99bc8feb3cf6971be341e846df1a899dfc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:8b208c681bd2cfbcabf9261b89ddbe06cd005104f92b9939509ab42568a9df13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ce0082ee0d715915db2a74d4697d587344207c81bf938874c90cb42f1cb5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:17:43 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:17:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:17:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ff5fe5cc1dd0cd10e379d1bc2e2b81d1ee58342c75020e33f6b8cf018c32ad`  
		Last Modified: Fri, 15 Sep 2017 01:19:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20-onbuild`

```console
$ docker pull sentry@sha256:41afae435201cffec0b4382cbbf99bc8feb3cf6971be341e846df1a899dfc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:8b208c681bd2cfbcabf9261b89ddbe06cd005104f92b9939509ab42568a9df13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ce0082ee0d715915db2a74d4697d587344207c81bf938874c90cb42f1cb5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:17:43 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:17:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:17:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ff5fe5cc1dd0cd10e379d1bc2e2b81d1ee58342c75020e33f6b8cf018c32ad`  
		Last Modified: Fri, 15 Sep 2017 01:19:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:41afae435201cffec0b4382cbbf99bc8feb3cf6971be341e846df1a899dfc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:8b208c681bd2cfbcabf9261b89ddbe06cd005104f92b9939509ab42568a9df13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ce0082ee0d715915db2a74d4697d587344207c81bf938874c90cb42f1cb5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:17:43 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:17:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:17:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ff5fe5cc1dd0cd10e379d1bc2e2b81d1ee58342c75020e33f6b8cf018c32ad`  
		Last Modified: Fri, 15 Sep 2017 01:19:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:9092deb241450f6faff45ed269080b9836a020a00ce62a7e29745e72fcd00c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:7a3ab04c40bb5d924b1d8d5f2ca870e453625e276bdfc176985762cdce50aa8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197721323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a59902f78734b55186a173457f19dcad985f4585e40bf66e91ac8a67c85983`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 16:20:18 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 13 Sep 2017 16:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:20:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 13 Sep 2017 16:20:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 13 Sep 2017 16:20:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 16:21:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 16:21:17 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 13 Sep 2017 16:21:37 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 16:22:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 13 Sep 2017 16:23:44 GMT
ENV SENTRY_VERSION=8.20.0
# Wed, 13 Sep 2017 16:25:11 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 13 Sep 2017 16:25:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 13 Sep 2017 16:25:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 13 Sep 2017 16:25:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 13 Sep 2017 16:25:13 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 13 Sep 2017 16:25:13 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 13 Sep 2017 16:25:13 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 16:25:14 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 13 Sep 2017 16:25:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 16:25:14 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6167167c14b26e081e93afe24618ac1d39a70dcd37a14ae5431c8b04b3295e69`  
		Last Modified: Wed, 13 Sep 2017 16:25:29 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be25a7dd48b7cb91962e68243a33c82dde62168e3a3ce0b7ff1ada768e5b44b9`  
		Last Modified: Wed, 13 Sep 2017 16:25:39 GMT  
		Size: 64.1 MB (64079836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807a654c33b06984f8bbe23dfebfd85050e725553c84f0aa16cc8e673c7c1b17`  
		Last Modified: Wed, 13 Sep 2017 16:25:28 GMT  
		Size: 847.3 KB (847252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f509e7a89ac831627ce75863178950493b05dc6c7afce9ad375a5be88add80`  
		Last Modified: Wed, 13 Sep 2017 16:25:27 GMT  
		Size: 354.4 KB (354424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d125382384de641fe4924566450d152af1709ef341583507eb92a1cd2aa3ab78`  
		Last Modified: Wed, 13 Sep 2017 16:25:27 GMT  
		Size: 2.6 MB (2592424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79006529c6d438fccbf01a33adbc9caef663ab193c89cc39ff2f07f050f480ec`  
		Last Modified: Wed, 13 Sep 2017 16:26:14 GMT  
		Size: 57.0 MB (57030137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2243ff6b561801a71d4399a12c83d1b040c59836c1dd7aba48b043e4de193`  
		Last Modified: Wed, 13 Sep 2017 16:26:03 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050f26b7ba1989ab44cef94c1fdf3a347e952227d45fa06d3f744c5cd18f122`  
		Last Modified: Wed, 13 Sep 2017 16:26:02 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153a12c40162eba7e327f57189bbfca0165030d14495cb7598874ef08f51a3ae`  
		Last Modified: Wed, 13 Sep 2017 16:26:06 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60da371d8d9a4d493308d557204e6c4cb318d50bad256cf5f2a2096f0d0ccd7c`  
		Last Modified: Wed, 13 Sep 2017 16:26:02 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:41afae435201cffec0b4382cbbf99bc8feb3cf6971be341e846df1a899dfc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:8b208c681bd2cfbcabf9261b89ddbe06cd005104f92b9939509ab42568a9df13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197941152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ce0082ee0d715915db2a74d4697d587344207c81bf938874c90cb42f1cb5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 14:27:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:27:43 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:45:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 14 Sep 2017 23:45:36 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 14 Sep 2017 23:49:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 14 Sep 2017 23:49:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 14 Sep 2017 23:49:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 14 Sep 2017 23:49:44 GMT
CMD ["python2"]
# Fri, 15 Sep 2017 01:10:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 15 Sep 2017 01:11:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 15 Sep 2017 01:11:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 15 Sep 2017 01:11:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 01:11:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:11:56 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 15 Sep 2017 01:12:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 15 Sep 2017 01:12:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 15 Sep 2017 01:15:03 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 15 Sep 2017 01:17:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 15 Sep 2017 01:17:28 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 15 Sep 2017 01:17:29 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 15 Sep 2017 01:17:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 15 Sep 2017 01:17:30 GMT
EXPOSE 9000/tcp
# Fri, 15 Sep 2017 01:17:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 15 Sep 2017 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Sep 2017 01:17:30 GMT
CMD ["run" "web"]
# Fri, 15 Sep 2017 01:17:43 GMT
WORKDIR /usr/src/sentry
# Fri, 15 Sep 2017 01:17:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 15 Sep 2017 01:17:44 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 15 Sep 2017 01:17:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d43f82f795470fea802e5dec50db6ea451700b6965818085b2efa3d8d54e0a`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 3.5 MB (3473022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27916a544edd3ff8245099dc0e3ad3ea5df923fe9534293c2400f1d0f8f6ecc`  
		Last Modified: Fri, 15 Sep 2017 00:10:43 GMT  
		Size: 15.0 MB (15000966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8100616f4b00403e14d3df42d3392f50d66d4935f58f83baf9ce7d1f3413acec`  
		Last Modified: Fri, 15 Sep 2017 00:10:37 GMT  
		Size: 2.0 MB (1965475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dfad0ebb15dc57b5ffa6b9df45890b97356d2896ece91b14e2967422f51b84`  
		Last Modified: Fri, 15 Sep 2017 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebc915a8c4c901dd8df6750e933da40f8ec2a963ed54edf1232f5055b9f9b`  
		Last Modified: Fri, 15 Sep 2017 01:18:09 GMT  
		Size: 64.1 MB (64079856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adcea702df60542a193b5322b1bafa4e38afb99572cd5d5396e7977d6ef7512`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 847.3 KB (847316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d348f82ea59baf04a8a0e9fef18b18c388f98e4fbc47bb47373baea6e58ed96`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 354.5 KB (354538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d71dc13af1d25cb3e5bcd363029e6698ef0e18f6cf8008af1331f1890c6878`  
		Last Modified: Fri, 15 Sep 2017 01:17:56 GMT  
		Size: 2.6 MB (2591260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2d2d305919442447b8cf27b05b5b093f7687b6beb9df4f7414cff8c271c90`  
		Last Modified: Fri, 15 Sep 2017 01:19:01 GMT  
		Size: 57.0 MB (57023549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6af9dc44721761d8d5eb38c28fa0860d51e7063c2fe47f6bbf65866f0e61634`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d8fdbfb6cb7b276cf289cc2ee7646e3a09c55542130271e8f23f87ce036350`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065a12996e45226c4ceb23721cad035a0fa8fb3d5daf928ceedfd678da19b872`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943e3efc5d3ef7a966d51deeedb559fb11f6e3698fdda890d51db111b8480592`  
		Last Modified: Fri, 15 Sep 2017 01:18:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ff5fe5cc1dd0cd10e379d1bc2e2b81d1ee58342c75020e33f6b8cf018c32ad`  
		Last Modified: Fri, 15 Sep 2017 01:19:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
